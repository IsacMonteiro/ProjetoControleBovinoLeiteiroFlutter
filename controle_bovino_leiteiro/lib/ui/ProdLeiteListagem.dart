import 'package:flutter/material.dart';
import 'package:controle_bovino_leiteiro/dominio/repositorio/ProdLeiteRepositorio.dart';
import 'package:controle_bovino_leiteiro/src/generated/prisma/prisma_client.dart';
import 'package:controle_bovino_leiteiro/ui/ProdLeiteUI.dart';

class ProdLeiteListagemUI extends StatefulWidget {
  const ProdLeiteListagemUI({super.key});

  static const String ROTA = "/prodleitelistagem";

  @override
  State<StatefulWidget> createState() => _ProdLeiteListagemUI();
}

class _ProdLeiteListagemUI extends State<ProdLeiteListagemUI> {
  ProdLeiteRepositorio _prodLeiteRepositorio = ProdLeiteRepositorio();

  //Armazena o resultado da consulta do banco
  late Iterable<Prodleite> _resultado = [];

  /*Armazena o resultado dos dados filtrados
  para serem exibidos no ListView
  */
  late Iterable<Prodleite> _resultadoFiltro = [];

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
    _prodLeiteRepositorio.consultarTodos().then(
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
          AppBar(backgroundColor: Colors.green, title: const Text('Produção de Leite')),
      body: _body(),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: const Icon(Icons.add),
          onPressed: () async {
            final resultado =
                await Navigator.pushNamed(context,ProdLeiteUI.ROTA);
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
                element.qtdProdLeite.toString().contains(valor.toLowerCase())
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
                  labelText: "Pesquise por quantidade de leite produzido...",
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
              Prodleite c = _resultadoFiltro.elementAt(index);
              final resultado = await Navigator.pushNamed(
                  context, ProdLeiteUI.ROTA,
                  arguments: c);
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
    return ListTile(title: Text(_resultadoFiltro.elementAt(index).qtdProdLeite.toString()));
  }
}
