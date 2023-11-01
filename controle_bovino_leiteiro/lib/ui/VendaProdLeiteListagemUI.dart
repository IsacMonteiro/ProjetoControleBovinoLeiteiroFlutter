import 'package:flutter/material.dart';
import 'package:controle_bovino_leiteiro/dominio/repositorio/VendaProdLeiteRepositorio.dart';
import 'package:controle_bovino_leiteiro/src/generated/prisma/prisma_client.dart';
import 'package:controle_bovino_leiteiro/ui/VendaProdLeiteUI.dart';

class VendaProdLeiteListagemUI extends StatefulWidget {
  const VendaProdLeiteListagemUI({super.key});

  static const String ROTA = "/vendaprodleitelistagem";

  @override
  State<StatefulWidget> createState() => _VendaProdLeiteListagemUI();
}

class _VendaProdLeiteListagemUI extends State<VendaProdLeiteListagemUI> {
  VendaProdLeiteRepositorio _vendaProdLeiteRepositorio =
      VendaProdLeiteRepositorio();

  //Armazena o resultado da consulta do banco
  late Iterable<Vendaprodleite> _resultado = [];

  /*Armazena o resultado dos dados filtrados
  para serem exibidos no ListView
  */
  late Iterable<Vendaprodleite> _resultadoFiltro = [];

  @override
  void initState() {
    super.initState();
    _buscarTodos();
  }

  void _buscarTodos() {
    /*
    A função then é utilizada para retornar o valor
    da consulta definida no método assincrono. O resultado
    da consulta é definida no parâmetro value.
    */
    _vendaProdLeiteRepositorio.consultarTodos().then(
      (value) {
        setState(() {
          _resultado = value;
          _resultadoFiltro = value;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Dados da Venda de Leite Produzido')),
      body: _body(),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: const Icon(Icons.add),
          onPressed: () async {
            final resultado =
                await Navigator.pushNamed(context, VendaProdLeiteUI.ROTA);
            _buscarTodos();
          }),
    );
  }

  //Método utilizado para filtrar os dados
  //da consulta no ListView
  void _filtrar(String valor) {
    /*Se o campo da pesquisa estiver vazio, então
    a lista que armazena o filtro recebe o resultado
    da consulta do banco de dados.
    */
    setState(() {
      if (valor.isEmpty) {
        _resultadoFiltro = _resultado;
      } else {
        _resultadoFiltro = _resultado
            .where((element) =>
                element.qtdLeite.toString().contains(valor.toLowerCase()))
            .toList();
      }
    });
  }

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(children: [
        Row(
          children: [
            Flexible(
                child: TextField(
              decoration: const InputDecoration(
                  labelText: "Pesquise pela quantidade de leite vendido...",
                  suffixIcon: Icon(Icons.search)),
              onChanged: (value) => _filtrar(value),
            )),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Expanded(
            child: SizedBox(
          height: 150,
          child: _listViewBuilder(),
        ))
      ]),
    );
  }

  Widget _listViewBuilder() {
    if (_resultadoFiltro.isNotEmpty) {
      return ListView.builder(
        itemCount: _resultadoFiltro.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () async {
              //Recuperando o elemento selecionado
              Vendaprodleite v = _resultadoFiltro.elementAt(index);
              final resultado = await Navigator.pushNamed(
                  context, VendaProdLeiteUI.ROTA,
                  arguments: v);
              _buscarTodos();
            },
            child: _itemListView(index),
          );
        },
      );
    } else {
      return const Text("Nenhum resultado Encontrado!",
          style: TextStyle(fontSize: 20));
    }
  }

  Widget _itemListView(int index) {
    final vendaprodleite = _resultadoFiltro.elementAt(index);
    return ListTile(
      title: Text(vendaprodleite.qtdLeite.toString()),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () => _confirmarExclusao(context, vendaprodleite),
      ),
    );
  }

//Botão excluir.
  void _confirmarExclusao(
      BuildContext context, Vendaprodleite vendaprodleite) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirmar Exclusão'),
          content: Text(
              'Deseja realmente excluir a venda de leite pela quantidade selecionada?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancelar'),
            ),
            TextButton(
              onPressed: () async {
                final vendaLeiteExcluida = await _vendaProdLeiteRepositorio
                    .excluir(vendaprodleite.codVendaProdLeite);
                if (vendaLeiteExcluida != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Venda de leite excluída com sucesso!'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                  _buscarTodos();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Falha ao excluir a venda de leite.'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                }
                Navigator.of(context).pop();
              },
              child: Text('Excluir'),
            ),
          ],
        );
      },
    );
  }
}