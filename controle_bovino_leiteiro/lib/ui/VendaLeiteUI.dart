import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:controle_bovino_leiteiro/dominio/repositorio/VendaLeiteRepositorio.dart';
import 'package:controle_bovino_leiteiro/src/generated/prisma/prisma_client.dart';
import 'package:controle_bovino_leiteiro/ui/HelperUI.dart';

class VendaLeiteUI extends StatefulWidget {
  static const String ROTA = "/vendaleite";

  const VendaLeiteUI({Key? key}) : super(key: key);

  @override
  _VendaLeiteUIState createState() => _VendaLeiteUIState();
}

class _VendaLeiteUIState extends State<VendaLeiteUI> {
  TextEditingController _controllerDataVendaLeite = TextEditingController();
  DateTime? _selectedDate; //Variável onde será armazenada a data.
  TextEditingController _controllerValorTotalLeite = TextEditingController();

  VendaLeiteRepositorio _vendaLeiteRepositorio = VendaLeiteRepositorio();

  final _formKey = GlobalKey<FormState>();

  late Vendaleite _vendaLeite;

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments;

    if (args != null) {
      _vendaLeite = args as Vendaleite;
      // Atribuindo os dados do objeto aos controladores da caixa de texto.
      setState(() {
        _controllerDataVendaLeite.text =
            DateFormat('dd/MM/yyyy').format(_vendaLeite.dataVendaLeite);
        _controllerValorTotalLeite.text =
            _vendaLeite.valorTotalLeite.toString();
      });
    } else {
      _vendaLeite = Vendaleite(
          codVendaLeite: 0,
          codComprador: 0,
          dataVendaLeite: DateTime.now(),
          valorTotalLeite: 0.0);
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Produção de Leite'),
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

  // Função utilizada para validar os campos do Formulário, verificando se o campo foi preenchido.
  String? _validar(String? valor) {
    if ((valor == null) || (valor.isEmpty)) {
      return "Campo obrigatório!";
    }
    return null;
  }

// Função para validar o campo qtdVendaLeite.
  String? _validarQtdVendaLeite(String? value) {
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

  // Função para selecionar a data
  Future<void> _selectDate(BuildContext context) async {
    DateTime currentDate = _selectedDate ?? DateTime.now();
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: currentDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null) {
      setState(() {
        _selectedDate = picked;
        _controllerDataVendaLeite.text =
            DateFormat('dd/MM/yyyy').format(_selectedDate!);
      });
    }
  }

  // Método utilizado para atribuir os dados do formulário no objeto e salvar ou atualizar os dados.
  void _defineDados() {
    if (_vendaLeite.codVendaLeite == 0) {
      // Incluindo os dados
      _vendaLeite = Vendaleite(
        codVendaLeite: 0,
        codComprador: 0,
        dataVendaLeite:
            _selectedDate ?? DateTime.now(), // Usar a data selecionada
        valorTotalLeite: double.parse(_controllerValorTotalLeite.text),
      );
      _vendaLeiteRepositorio.inserir(_vendaLeite);
    } else {
      // Salvando os dados
      int codigo = _vendaLeite.codVendaLeite;
      int codigoComprador = _vendaLeite.codComprador;
      _vendaLeite = Vendaleite(
        codVendaLeite: codigo,
        codComprador: codigoComprador,
        dataVendaLeite:_selectedDate ?? DateTime.now(), // Usar a data selecionada
        valorTotalLeite: double.parse(_controllerValorTotalLeite.text),
      );
      _vendaLeiteRepositorio.alterar(_vendaLeite);
    }
  }

  void _confirmar(BuildContext context) {
    // Efetiva o conteúdo da caixa de texto e armazena nos objetos controladores
    setState(() {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
        _defineDados();

        Navigator.pop(context, _vendaLeite);
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
            //Campo Data.
            TextFormField(
              controller: _controllerDataVendaLeite,
              readOnly: true,
              validator: (value) => _validar(value),
              decoration: InputDecoration(
                labelText: 'Data da Venda',
                suffixIcon: IconButton(
                  icon: Icon(Icons.calendar_today),
                  onPressed: () {
                    _selectDate(context);
                  },
                ),
              ),
            ),

            HelperUI.builderTextFormField(
                _controllerValorTotalLeite,"Quantidade Vendida",(value) => _validarQtdVendaLeite(value)),

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
