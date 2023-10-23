import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:controle_bovino_leiteiro/dominio/repositorio/ProdLeiteRepositorio.dart';
import 'package:controle_bovino_leiteiro/src/generated/prisma/prisma_client.dart';
import 'package:controle_bovino_leiteiro/ui/HelperUI.dart';

class ProdLeiteUI extends StatefulWidget {
  static const String ROTA = "/prodleite";

  const ProdLeiteUI({Key? key}) : super(key: key);

  @override
  _ProdLeiteUIState createState() => _ProdLeiteUIState();
}

class _ProdLeiteUIState extends State<ProdLeiteUI> {
  TextEditingController _controllerDataProdLeite = TextEditingController();
  DateTime? _selectedDate; //Variável onde será armazenada a data.
  TextEditingController _controllerQtdProdLeite = TextEditingController();

  ProdLeiteRepositorio _prodLeiteRepositorio = ProdLeiteRepositorio();

  final _formKey = GlobalKey<FormState>();

  late Prodleite _prodLeite;

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments;

    if (args != null) {
      _prodLeite = args as Prodleite;
      // Atribuindo os dados do objeto aos controladores da caixa de texto.
      setState(() {
        _controllerDataProdLeite.text = DateFormat('dd/MM/yyyy').format(_prodLeite.dataProdLeite);
        _controllerQtdProdLeite.text = _prodLeite.qtdProdLeite.toString();
      });
    } else {
      _prodLeite = Prodleite(
          codProdLeite: 0, dataProdLeite: DateTime.now(), qtdProdLeite: 0.00);
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

// Função para validar o campo qtdProdLeite.
  String? _validarQtdProdLeite(String? value) {
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
        _controllerDataProdLeite.text =
            DateFormat('dd/MM/yyyy').format(_selectedDate!);
      });
    }
  }

  // Método utilizado para atribuir os dados do formulário no objeto e salvar ou atualizar os dados.
  Future<void> _defineDados() async {
    if (_prodLeite.codProdLeite == 0) {
      // Incluindo os dados
      _prodLeite = Prodleite(
        codProdLeite: 0,
        dataProdLeite: _selectedDate ?? DateTime.now(), // Usar a data selecionada
        qtdProdLeite: double.parse(_controllerQtdProdLeite.text),
      );
     var resultado = await _prodLeiteRepositorio.inserir(_prodLeite);
    } else {
      // Salvando os dados
      int codigo = _prodLeite.codProdLeite;
      _prodLeite = Prodleite(
        codProdLeite: codigo,
        dataProdLeite: _selectedDate ?? DateTime.now(), // Usar a data selecionada
        qtdProdLeite: double.parse(_controllerQtdProdLeite.text),
      );
      var resultado = await _prodLeiteRepositorio.alterar(_prodLeite);
    }
  }

void _confirmar(BuildContext context) async {
  // Efetiva o conteúdo da caixa de texto e armazena nos objetos controllers
  if (_formKey.currentState!.validate()) {
    setState(() {
      _formKey.currentState!.save();
    });

    await _defineDados();

    Navigator.pop(context, _prodLeite);
  }
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
              controller: _controllerDataProdLeite,
              readOnly: true,
              validator: (value) => _validar(value),
              decoration: InputDecoration(
                labelText: 'Data da Coleta',
                suffixIcon: IconButton(
                  icon: Icon(Icons.calendar_today),
                  onPressed: () {
                    _selectDate(context);
                  },
                ),
              ),
            ),

            HelperUI.builderTextFormField(_controllerQtdProdLeite,
                "Quantidade Produzida", (value) => _validarQtdProdLeite(value)),

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
