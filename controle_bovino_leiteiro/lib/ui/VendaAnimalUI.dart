import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:controle_bovino_leiteiro/dominio/repositorio/VendaAnimalRepositorio.dart';
import 'package:controle_bovino_leiteiro/src/generated/prisma/prisma_client.dart';
import 'package:controle_bovino_leiteiro/ui/HelperUI.dart';

class VendaAnimalUI extends StatefulWidget {
  static const String ROTA = "/vendaanimal";

  const VendaAnimalUI({Key? key}) : super(key: key);

  @override
  _VendaAnimalUIState createState() => _VendaAnimalUIState();
}

class _VendaAnimalUIState extends State<VendaAnimalUI> {
  
  TextEditingController _controllerDataVendaAnimal = TextEditingController();
  DateTime? _selectedDate; //Variável onde será armazenada a data.
  TextEditingController _controllerValorTotalAnimal = TextEditingController();

  VendaAnimalRepositorio _vendaAnimalRepositorio = VendaAnimalRepositorio();

  final _formKey = GlobalKey<FormState>();

  late Vendaanimal _vendaAnimal;

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments;

    if (args != null) {
      _vendaAnimal = args as Vendaanimal;
      // Atribuindo os dados do objeto aos controladores da caixa de texto.
      setState(() {
        _controllerDataVendaAnimal.text =
            DateFormat('dd/MM/yyyy').format(_vendaAnimal.dataVendaAnimal);
        _controllerValorTotalAnimal.text =
            _vendaAnimal.valorTotalAnimal.toString();
      });
    } else {
      _vendaAnimal = Vendaanimal(
          codVendaAnimal: 0,
          codComprador: 0,
          dataVendaAnimal: DateTime.now(),
          valorTotalAnimal: 0.0);
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Venda de Animal'),
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

// Função para validar o campo qtdVendaAnimal.
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
        _controllerDataVendaAnimal.text =
            DateFormat('dd/MM/yyyy').format(_selectedDate!);
      });
    }
  }

  // Método utilizado para atribuir os dados do formulário no objeto e salvar ou atualizar os dados.
  Future<void> _defineDados() async{
    if (_vendaAnimal.codVendaAnimal == 0) {
      // Incluindo os dados
      _vendaAnimal = Vendaanimal(
        codVendaAnimal: 0,
        codComprador: 0,
        dataVendaAnimal:
            _selectedDate ?? DateTime.now(), // Usar a data selecionada
        valorTotalAnimal: double.parse(_controllerValorTotalAnimal.text),
      );
    var resultado = await _vendaAnimalRepositorio.inserir(_vendaAnimal);
    } else {
      // Salvando os dados
      int codigo = _vendaAnimal.codVendaAnimal;
      int codigoComprador = _vendaAnimal.codComprador;
      _vendaAnimal = Vendaanimal(
        codVendaAnimal: codigo,
        codComprador: codigoComprador,
        dataVendaAnimal:_selectedDate ?? DateTime.now(), // Usar a data selecionada
        valorTotalAnimal: double.parse(_controllerValorTotalAnimal.text),
      );
    var resultado = await _vendaAnimalRepositorio.alterar(_vendaAnimal);
    }
  }

  void _confirmar(BuildContext context) async {
  // Efetiva o conteúdo da caixa de texto e armazena nos objetos controllers
  if (_formKey.currentState!.validate()) {
    setState(() {
      _formKey.currentState!.save();
    });

    await _defineDados();

    Navigator.pop(context, _vendaAnimal);
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
              controller: _controllerDataVendaAnimal,
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
                _controllerValorTotalAnimal,"Quantidade Vendida",(value) => _validarQtdVendaLeite(value)),

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
