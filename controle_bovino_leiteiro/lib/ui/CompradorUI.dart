import 'package:flutter/material.dart';
import 'package:controle_bovino_leiteiro/dominio/repositorio/CompradorRepositorio.dart';
import 'package:controle_bovino_leiteiro/src/generated/prisma/prisma_client.dart';
import 'package:controle_bovino_leiteiro/ui/HelperUI.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CompradorUI extends StatefulWidget {
  static const String ROTA = "/comprador";

  const CompradorUI({Key? key}) : super(key: key);

  @override
  _CompradorUIState createState() => _CompradorUIState();
}

//Declarando os objetos controller para capturar os dados digitados pelos campos de caixa de texto.
class _CompradorUIState extends State<CompradorUI> {
  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerTelefone = TextEditingController();
  TextEditingController _controllerEndereco = TextEditingController();

//Máscara para o campo telefone.
  MaskTextInputFormatter _telefoneFormatter = MaskTextInputFormatter(
      mask: '(##) #####-####', filter: {'#': RegExp(r'[0-9]')});

  CompradorRepositorio _compradorRepositorio = CompradorRepositorio();

  final _formKey = GlobalKey<FormState>();

  late Comprador _comprador;

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments;

    if (args != null) {
      _comprador = args as Comprador;
      //Atribuindo os dados do objeto aos controlles da caixa de texto.
      setState(() {
        _controllerNome.text = _comprador.nome;
        _controllerTelefone.text = _comprador.telefone;
        _controllerEndereco.text = _comprador.endereco;
      });
    } else {
      _comprador = const Comprador(
          codComprador: 0, nome: "", telefone: "", endereco: "");
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Comprador'),
        actions: [
          IconButton(
              onPressed: () => _confirmar(context),
              icon: const Icon(Icons.check))
        ],
      ),
      body: _body(context),
    );
  }

//Função utilizada para validar os campos do Formulário, verificando se o campo foi preenchido.
  String? _validar(String? valor) {
    if ((valor == null) || (valor.isEmpty)) {
      return "Campo obrigatório!";
    }
    return null;
  }

// Verificar se o valor do telefone possui o formato correto.
  String? _validarTelefone(String? valor) {
    if ((valor == null) || (valor.isEmpty)) {
      return "Campo obrigatório!";
    }

    if (!_telefoneFormatter.isFill()) {
      return "Telefone inválido!";
    }
    return null;
  }

  //Método utilizado para atribuir os dados do formulário no objeto e salvar ou atualizar os dados.
  void _defineDados() {
    if (_comprador.codComprador == 0) {
      //Incluindo os dados
      _comprador = Comprador(
          codComprador: 0,
          nome: _controllerNome.text,
          telefone: _controllerTelefone.text,
          endereco: _controllerEndereco.text);
      _compradorRepositorio.inserir(_comprador);
    } else {
      //Salvando os dados
      int codigo = _comprador.codComprador;
      _comprador = Comprador(
          codComprador: codigo,
          nome: _controllerNome.text,
          telefone: _controllerTelefone.text,
          endereco: _controllerEndereco.text);
      _compradorRepositorio.alterar(_comprador);
    }
  }

  void _confirmar(BuildContext context) {
    //Efetiva o conteúdo da caixa de texto e armazena nos objetos controllers
    setState(() {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
        _defineDados();

        Navigator.pop(context, _comprador);
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
            HelperUI.builderTextFormField(
                _controllerNome, "Nome", (value) => _validar(value)),
            //Campo telefone
            TextFormField(
              controller: _controllerTelefone,
              validator: (value) => _validarTelefone(value),
              inputFormatters: [_telefoneFormatter],
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(labelText: 'Telefone'),
            ),
            HelperUI.builderTextFormField(
                _controllerEndereco, "Endereço", (value) => _validar(value)),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                _confirmar(context);
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: const Text("Cadastrar"),
            )
          ],
        ),
      ),
    );
  }
}
