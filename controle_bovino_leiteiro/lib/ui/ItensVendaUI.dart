import 'package:flutter/material.dart';
import 'package:controle_bovino_leiteiro/dominio/repositorio/ItensVendaRepositorio.dart';
import 'package:controle_bovino_leiteiro/src/generated/prisma/prisma_client.dart';
import 'package:controle_bovino_leiteiro/ui/HelperUI.dart';

class ItensVendaUI extends StatefulWidget {
  static const String ROTA = "/itensvenda";

  const ItensVendaUI({Key? key}) : super(key: key);

  @override
  _ItensVendaUIState createState() => _ItensVendaUIState();
}

class _ItensVendaUIState extends State<ItensVendaUI> {
  TextEditingController _controllerQuantidade = TextEditingController();
  TextEditingController _controllerValorUnitario = TextEditingController();
  TextEditingController _controllerValorTotalItemAnimal =
      TextEditingController();

  ItensVendaRepositorio _itensVendaRepositorio = ItensVendaRepositorio();

  final _formKey = GlobalKey<FormState>();

  late Itensvenda _itensVenda;

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments;

    if (args != null) {
      _itensVenda = args as Itensvenda;
      // Atribuindo os dados do objeto aos controladores da caixa de texto.
      setState(() {
        _controllerQuantidade.text = _itensVenda.quantidade.toString();
        _controllerValorUnitario.text = _itensVenda.valorUnitario.toString();
        _controllerValorTotalItemAnimal.text =
            _itensVenda.valorTotalItemAnimal.toString();
      });
    } else {
      _itensVenda = Itensvenda(
          codItensVenda: 0,
          codVendaAnimal: 0,
          codAnimal: 0,
          quantidade: 0,
          valorUnitario: 0.0,
          valorTotalItemAnimal: 0.0);
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Dados da Venda de Animais Criados'),
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
    if (_itensVenda.codItensVenda == 0) {
      // Incluindo os dados
      _itensVenda = Itensvenda(
        codItensVenda: 0,
        codVendaAnimal: 0,
        codAnimal: 0,
        quantidade: int.parse(_controllerQuantidade.text),
        valorUnitario: double.parse(_controllerValorUnitario.text),
        valorTotalItemAnimal:
            double.parse(_controllerValorTotalItemAnimal.text),
      );
      var resultado = await _itensVendaRepositorio.inserir(_itensVenda);
    } else {
      // Salvando os dados
      int codigo = _itensVenda.codItensVenda;
      int codigoVendaAnimal = _itensVenda.codVendaAnimal;
      int codigoAnimal = _itensVenda.codAnimal;
      _itensVenda = Itensvenda(
        codItensVenda: codigo,
        codVendaAnimal: codigoVendaAnimal,
        codAnimal: codigoAnimal,
        quantidade: int.parse(_controllerQuantidade.text),
        valorUnitario: double.parse(_controllerValorUnitario.text),
        valorTotalItemAnimal:
            double.parse(_controllerValorTotalItemAnimal.text),
      );
      var resultado = await _itensVendaRepositorio.alterar(_itensVenda);
    }
  }

  void _confirmar(BuildContext context) async {
    // Efetiva o conteúdo da caixa de texto e armazena nos objetos controllers
    if (_formKey.currentState!.validate()) {
      setState(() {
        _formKey.currentState!.save();
      });

      await _defineDados();

      Navigator.pop(context, _itensVenda);
    }
  }

  Widget _body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            HelperUI.builderTextFormField(_controllerQuantidade,
                "Quantidade de Animais", (value) => _validar(value)),
            HelperUI.builderTextFormField(_controllerValorUnitario,
                "Valor por Cabeça", (value) => _validar(value)),
            HelperUI.builderTextFormField(_controllerValorTotalItemAnimal,
                "Valor Total da Compra", (value) => _validar(value)),
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
