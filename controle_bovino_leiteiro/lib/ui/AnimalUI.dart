import 'package:flutter/material.dart';
//import 'package:flutter_contas_receber/dominio/repositorio/cliente_repositorio.dart';
//import 'package:flutter_contas_receber/src/generated/prisma/prisma_client.dart';
//import 'package:flutter_contas_receber/ui/HelperUI.dart';

import 'HelperUI.dart';

class AnimalUI extends StatefulWidget {
  static const String ROTA = "/animalListagem";

  const AnimalUI({Key? key}) : super(key: key);

  @override
  _AnimalUIState createState() => _AnimalUIState();
}

class _AnimalUIState extends State<AnimalUI> {
  /*Declarando os objetos controller para capturar os dados
  digitados pelos campos de caixa de texto*/
  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerCPF = TextEditingController();
  TextEditingController _controllerEndereco = TextEditingController();
  TextEditingController _controllerTelefone = TextEditingController();

  //ClienteRepositorio _clienteRepositorio = ClienteRepositorio();

  final _formKey = GlobalKey<FormState>();

  //late Cliente _cliente;

  @override
  Widget build(BuildContext context) {
    /*Recuperando os argumentos enviados pela janela anterior
    utilizando rotas.*/
    var args = ModalRoute.of(context)!.settings.arguments;

    if (args != null) {
      //Convertendo a variável args para o tipo Cliente
   //   _cliente = args as Cliente;
      //Atribuindo os dados do objeto aos controlles
      //da caixa de texto
      setState(() {
    //    _controllerNome.text = _cliente.nome;
     //   _controllerCPF.text = _cliente.cpfcnpj;
       // _controllerEndereco.text = _cliente.endereco;
      //  _controllerTelefone.text = _cliente.contato;
      });
    } else {
      /*_cliente = Cliente(
          codcliente: 0,
          contato: "",
          nome: "",
          endereco: "",
          cpfcnpj: "",
          datacadastro: DateTime.now());*/
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Animal'),
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
   /* if (_cliente.codcliente == 0) {
      //Incluindo os dados
      _cliente = Cliente(
          codcliente: 0,
          nome: _controllerNome.text,
          cpfcnpj: _controllerCPF.text,
          endereco: _controllerEndereco.text,
          contato: _controllerTelefone.text,
          datacadastro: DateTime.now());

      _clienteRepositorio.inserir(_cliente);
    } else {
      //Salvando os dados
      int codigo = _cliente.codcliente;
      DateTime data = _cliente.datacadastro;
      _cliente = Cliente(
          codcliente: codigo,
          nome: _controllerNome.text,
          cpfcnpj: _controllerCPF.text,
          endereco: _controllerEndereco.text,
          contato: _controllerTelefone.text,
          datacadastro: data);
      _clienteRepositorio.alterar(_cliente);
    }*/
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
        //Navigator.pop(context, _cliente);
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
                _controllerNome, "Nome", (value) => _validar(value)),
            HelperUI.builderTextFormField(
                _controllerCPF, "CPF", (value) => _validar(value)),
            HelperUI.builderTextFormField(
                _controllerEndereco, "Endereço", (value) => _validar(value)),
            HelperUI.builderTextFormField(
                _controllerTelefone, "Telefone", (value) => _validar(value)),
          ],
        ),
      ),
    );
  }
}
