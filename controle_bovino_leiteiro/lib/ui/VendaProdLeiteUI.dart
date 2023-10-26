import 'package:flutter/material.dart';
import 'package:controle_bovino_leiteiro/dominio/repositorio/VendaProdLeiteRepositorio.dart';
import 'package:controle_bovino_leiteiro/src/generated/prisma/prisma_client.dart';
import 'package:controle_bovino_leiteiro/ui/HelperUI.dart';

class VendaProdLeiteUI extends StatefulWidget {
  static const String ROTA = "/vendaprodleite";

  const VendaProdLeiteUI({Key? key}) : super(key: key);

  @override
  _VendaProdLeiteUIState createState() => _VendaProdLeiteUIState();
}

class _VendaProdLeiteUIState extends State<VendaProdLeiteUI> {
  TextEditingController _controllerQtdLeite = TextEditingController();
  TextEditingController _controllerValorLitro = TextEditingController();
  TextEditingController _controllerValorTotalItemLeite = TextEditingController();

  VendaProdLeiteRepositorio _vendaProdLeiteRepositorio = VendaProdLeiteRepositorio();

  final _formKey = GlobalKey<FormState>();

  late Vendaprodleite _vendaProdLeite;

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments;

    if (args != null) {
      _vendaProdLeite = args as Vendaprodleite;
      // Atribuindo os dados do objeto aos controladores da caixa de texto.
      setState(() {
        _controllerQtdLeite.text = _vendaProdLeite.qtdLeite.toString();
        _controllerValorLitro.text = _vendaProdLeite.valorLitro.toString();
        _controllerValorTotalItemLeite.text =
            _vendaProdLeite.valorTotalItemLeite.toString();
      });
    } else {
      _vendaProdLeite = Vendaprodleite(
          codVendaProdLeite: 0,
          codVendaLeite: 0,
          codProdLeite: 0,
          qtdLeite: 0.0,
          valorLitro: 0.0,
          valorTotalItemLeite: 0.0);
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Dados da Venda de Leite Produzido'),
        actions: [
          IconButton(
            onPressed: () => _confirmar(context),
            icon: const Icon(Icons.check),
          )
        ],
      ),
      body: _body(context),
    );
  }


// Função para validar os campos numéricos.
  String? _validar(String? value) {
    if (value == null || value.isEmpty) {
      return "Campo obrigatório!";
    }
    if (value.isNotEmpty) {
      try {
        double.parse(value);
      } catch (e) {
        return "Digite um valor numérico válido!";
      }
    }
    return null;
  }


  // Método utilizado para atribuir os dados do formulário no objeto e salvar ou atualizar os dados.
  Future<void> _defineDados() async {
    if (_vendaProdLeite.codVendaProdLeite == 0) {
      // Incluindo os dados
      _vendaProdLeite = Vendaprodleite(
        codVendaProdLeite: 0,
        codVendaLeite: 0,
        codProdLeite: 0,
        qtdLeite: double.parse(_controllerQtdLeite.text),
        valorLitro: double.parse(_controllerValorLitro.text),
        valorTotalItemLeite: double.parse(_controllerValorTotalItemLeite.text),
      );
      var resultado = await _vendaProdLeiteRepositorio.inserir(_vendaProdLeite);
    } else {
      // Salvando os dados
      int codigo = _vendaProdLeite.codVendaProdLeite;
      int codigoVendaLeite = _vendaProdLeite.codVendaLeite;
      int codigoProdLeite = _vendaProdLeite.codProdLeite;
      _vendaProdLeite = Vendaprodleite(
        codVendaProdLeite: codigo,
        codVendaLeite: codigoVendaLeite,
        codProdLeite: codigoProdLeite,
        qtdLeite: double.parse(_controllerQtdLeite.text),
        valorLitro: double.parse(_controllerValorLitro.text),
        valorTotalItemLeite: double.parse(_controllerValorTotalItemLeite.text),
      );
      var resultado = await _vendaProdLeiteRepositorio.alterar(_vendaProdLeite);
    }
  }

  void _confirmar(BuildContext context) async {
    // Efetiva o conteúdo da caixa de texto e armazena nos objetos controllers
    if (_formKey.currentState!.validate()) {
      setState(() {
        _formKey.currentState!.save();
      });

      await _defineDados();

      Navigator.pop(context, _vendaProdLeite);
    }
  }

  Widget _body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[

            HelperUI.builderTextFormField(_controllerQtdLeite,"Quantidade de Leite", (value) => _validar(value)),

            HelperUI.builderTextFormField(_controllerValorLitro,"Valor do Litro", (value) => _validar(value)),

            HelperUI.builderTextFormField(_controllerValorTotalItemLeite,"Valor Total da Compra", (value) => _validar(value)),

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
