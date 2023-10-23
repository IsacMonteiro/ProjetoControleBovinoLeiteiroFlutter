import 'package:flutter/material.dart';
import 'package:controle_bovino_leiteiro/dominio/repositorio/VendaAnimalRepositorio.dart';
import 'package:controle_bovino_leiteiro/src/generated/prisma/prisma_client.dart';
import 'package:controle_bovino_leiteiro/ui/VendaAnimalUI.dart';

class VendaAnimalListagemUI extends StatefulWidget {
  const VendaAnimalListagemUI({super.key});

  static const String ROTA = "/vendaanimallistagem";

  @override
  State<StatefulWidget> createState() => _VendaAnimalListagemUI();
}

class _VendaAnimalListagemUI extends State<VendaAnimalListagemUI> {
  VendaAnimalRepositorio _vendaAnimalRepositorio = VendaAnimalRepositorio();

  //Armazena o resultado da consulta do banco
  late Iterable<Vendaanimal> _resultado = [];

  /*Armazena o resultado dos dados filtrados
  para serem exibidos no ListView
  */
  late Iterable<Vendaanimal> _resultadoFiltro = [];

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
    _vendaAnimalRepositorio.consultarTodos().then(
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
      appBar:
          AppBar(backgroundColor: Colors.green, title: const Text('Venda de Animal')),
      body: _body(),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: const Icon(Icons.add),
          onPressed: () async {
            final resultado =
                await Navigator.pushNamed(context,VendaAnimalUI.ROTA);
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
                element.valorTotalAnimal.toString().contains(valor.toLowerCase())
                )
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
                  labelText: "Pesquise por quantidade de animal vendido...",
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
              Vendaanimal v = _resultadoFiltro.elementAt(index);
              final resultado = await Navigator.pushNamed(
                  context, VendaAnimalUI.ROTA,
                  arguments: v);
              _buscarTodos();
            },
            child: _itemListView(index),
          );
        },
      );
    } else {
      return const Text("Nenhum resultado Encontrado!",style: TextStyle(fontSize: 20));
    }
  }

  Widget _itemListView(int index) {
    final vendaanimal = _resultadoFiltro.elementAt(index);
    return ListTile(
      title: Text(vendaanimal.valorTotalAnimal.toString()),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () => _confirmarExclusao(context, vendaanimal),
      ),
    );
  }

//Botão excluir.
  void _confirmarExclusao(BuildContext context, Vendaanimal vendaanimal) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirmar Exclusão'),
          content: Text(
              'Deseja realmente excluir a venda de animal pelo valor total selecionado?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancelar'),
            ),
            TextButton(
              onPressed: () async {
                final vendaLeiteExcluida = await _vendaAnimalRepositorio.excluir(vendaanimal.codVendaAnimal);
                if (vendaLeiteExcluida != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Venda de animal excluída com sucesso!'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                  _buscarTodos();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Falha ao excluir a venda de animal.'),
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
