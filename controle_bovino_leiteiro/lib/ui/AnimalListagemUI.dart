import 'package:flutter/material.dart';
//import 'package:flutter_contas_receber/dominio/repositorio/cliente_repositorio.dart';
//import 'package:flutter_contas_receber/src/generated/prisma/prisma_client.dart';
//import 'package:flutter_contas_receber/ui/ClienteUI.dart';

class AnimalListagem extends StatefulWidget {
  const AnimalListagem({super.key});

  static const String ROTA = "/clientelistagem";

  @override
  State<StatefulWidget> createState() => _AnimalListagem();
}

class _AnimalListagem extends State<AnimalListagem> {
  //ClienteRepositorio _clienteRepositorio = ClienteRepositorio();

  //Armazena o resultado da consulta do banco
  //late Iterable<Cliente> _resultado = [];

  /*Armazena o resultado dos dados filtrados
  para serem exibidos no ListView
  */
  // late Iterable<Cliente> _resultadoFiltro = [];

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
    /* _clienteRepositorio.consultarTodos().then(
      (value) {
        setState(() {
          _resultado = value;
          _resultadoFiltro = value;
        });
      },
    );*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cliente'),
      ),
      body: _body(),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () async {
            //   final resultado =
            //     await Navigator.pushNamed(context, ClienteUI.ROTA);
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
        // _resultadoFiltro = _resultado;
      } else {
        //  _resultadoFiltro = _resultado
        //    .where((element) =>
        //      element.nome.toLowerCase().contains(valor.toLowerCase()))
        //.toList();
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
                  labelText: "Pesquisar aqui...",
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
          //  child: _listViewBuilder(),
        ))
      ]),
    );
  }

  /*Widget _listViewBuilder() {
    if (_resultadoFiltro.isNotEmpty) {
      return ListView.builder(
        itemCount: _resultadoFiltro.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () async {
              //Recuperando o elemento selecionado
              Cliente c = _resultadoFiltro.elementAt(index);
              final resultado = await Navigator.pushNamed(
                  context, ClienteUI.ROTA,
                  arguments: c);
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
  }*/
/*
  Widget _itemListView(int index) {
    return ListTile(title: Text(_resultadoFiltro.elementAt(index).nome));
  }
}*/
}
