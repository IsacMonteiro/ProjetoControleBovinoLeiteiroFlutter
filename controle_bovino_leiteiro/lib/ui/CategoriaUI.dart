import 'package:flutter/material.dart';
import 'package:controle_bovino_leiteiro/dominio/repositorio/categoria_repositorio.dart';
import 'package:controle_bovino_leiteiro/src/generated/prisma/prisma_client.dart';
import 'package:controle_bovino_leiteiro/ui/HelperUI.dart';

class CategoriaUI extends StatefulWidget {
  static const String ROTA = "/categoria";

  const CategoriaUI({Key? key}) : super(key: key);

  @override
  _CategoriaUIState createState() => _CategoriaUIState();
}

class _CategoriaUIState extends State<CategoriaUI> {
  /*Declarando os objetos controller para capturar os dados
  digitados pelos campos de caixa de texto*/
  TextEditingController _controllerTipo = TextEditingController();

  CategoriaRepositorio _categoriaRepositorio = CategoriaRepositorio();

  final _formKey = GlobalKey<FormState>();

  late Categoria _categoria;

  @override
  Widget build(BuildContext context) {
    /*Recuperando os argumentos enviados pela janela anterior
    utilizando rotas.*/
    var args = ModalRoute.of(context)!.settings.arguments;

    if (args != null) {
      //Convertendo a variável args para o tipo Cliente
      _categoria = args as Categoria;
      //Atribuindo os dados do objeto aos controlles
      //da caixa de texto
      setState(() {
        _controllerTipo.text = _categoria.tipo;
      });
    } else {
      _categoria = const Categoria(
          codCategoria: 0,
          tipo: "",
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Categoria'),
        actions: [
          IconButton(
              onPressed: () => _confirmar(context),
              icon: const Icon(Icons.check))
        ],
      ),
      body: _body(context),
    );
  }

  //Função utilizada para validar os campos do Formulário.
  //Verificando se o campo foi preenchido.
  String? _validar(String? valor) {
    if ((valor == null) || (valor.isEmpty)) {
      return "Campo obrigatório!";
    }
    return null;
  }

  /*   
   * Método utilizado para atribuir os dados do formulário
   * no objeto e salvar ou atualizar os dados.
   */
  void _defineDados() {
    if (_categoria.codCategoria == 0) {
      //Incluindo os dados
      _categoria = Categoria(
          codCategoria: 0,
          tipo: _controllerTipo.text,
          );
      _categoriaRepositorio.inserir(_categoria);
    } else {
      //Salvando os dados
      int codigo = _categoria.codCategoria;
      _categoria = Categoria(
          codCategoria: codigo,
          tipo: _controllerTipo.text
          );
      _categoriaRepositorio.alterar(_categoria);
    }
  }

  void _confirmar(BuildContext context) {
    setState(() {
      if (_formKey.currentState!.validate()) {
        /*Efetiva o conteúdo da caixa de texto e 
        armazena nos objetos controllers*/
        _formKey.currentState!.save();
        _defineDados();
        /*Fecha a janela atual e retorna como parâmetro
        para a janela anterior o objeto atualizado ou incluído.
        O retorno será utilizado para notificar a janela anterior
        que o formulário atual foi fechado.
        */
        Navigator.pop(context, _categoria);
      }
    });
  }

  Widget _body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  _confirmar(context);
                },
                child: const Text("Confirmar")),
            HelperUI.builderTextFormField(
                _controllerTipo, "Tipo", (value) => _validar(value))
          ],
        ),
      ),
    );
  }
}
