import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:controle_bovino_leiteiro/dominio/repositorio/AnimalRepositorio.dart';
import 'package:controle_bovino_leiteiro/src/generated/prisma/prisma_client.dart';
import 'package:controle_bovino_leiteiro/ui/HelperUI.dart';

class AnimalUI extends StatefulWidget {
  static const String ROTA = "/animal";

  const AnimalUI({Key? key}) : super(key: key);

  @override
  _AnimalUIState createState() => _AnimalUIState();
}

class _AnimalUIState extends State<AnimalUI> {
  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerDataNascimento = TextEditingController();
  DateTime? _selectedDate;
  TextEditingController _controllerSexo = TextEditingController();
  TextEditingController _controllerRaca = TextEditingController();
  TextEditingController _controllerIdade = TextEditingController();
  TextEditingController _controllerFormaManejo = TextEditingController();
  TextEditingController _controllerMediaLeite = TextEditingController();

  AnimalRepositorio _animalRepositorio = AnimalRepositorio();

  final _formKey = GlobalKey<FormState>();

  late Animal _animal;

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments;

    if (args != null) {
      _animal = args as Animal;
      setState(() {
        _controllerNome.text = _animal.nome;
        _controllerDataNascimento.text =
            DateFormat('dd/MM/yyyy').format(_animal.dataNascimento);
        _controllerSexo.text = _animal.sexo;
        _controllerRaca.text = _animal.raca;
        _controllerIdade.text = _animal.idade.toString();
        _controllerFormaManejo.text = _animal.formaManejo;
        _controllerMediaLeite.text = _animal.mediaLeite.toString();
      });
    } else {
      _animal = Animal(
          codAnimal: 0,
          codProdLeite: 0,
          codCategoria: 0,
          nome: "",
          dataNascimento: DateTime.now(),
          sexo: "",
          raca: "",
          idade: 0,
          formaManejo: "",
          mediaLeite: 0.00);
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
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

  String? _validar(String? valor) {
    if ((valor == null) || (valor.isEmpty)) {
      return "Campo obrigatório!";
    }
    return null;
  }

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
        _controllerDataNascimento.text =
            DateFormat('dd/MM/yyyy').format(_selectedDate!);
      });
    }
  }

  Future<void> _defineDados() async {
    if (_animal.codAnimal == 0) {
      _animal = Animal(
          codAnimal: 0,
          codProdLeite: 0,
          codCategoria: 0,
          nome: _controllerNome.text,
          dataNascimento: _selectedDate ?? DateTime.now(),
          sexo: _controllerSexo.text,
          raca: _controllerRaca.text,
          idade: int.parse(_controllerIdade.text),
          formaManejo: _controllerFormaManejo.text,
          mediaLeite: double.parse(_controllerMediaLeite.text));
      var resultado = await _animalRepositorio.inserir(_animal);
    } else {
      int codigoAnimal = _animal.codAnimal;
      int codigoProdLeite = _animal.codProdLeite;
      int codigoCategoria = _animal.codCategoria;
      _animal = Animal(
          codAnimal: codigoAnimal,
          codProdLeite: codigoProdLeite,
          codCategoria: codigoCategoria,
          nome: _controllerNome.text,
          dataNascimento: _selectedDate ?? DateTime.now(),
          sexo: _controllerSexo.text,
          raca: _controllerRaca.text,
          idade: int.parse(_controllerIdade.text),
          formaManejo: _controllerFormaManejo.text,
          mediaLeite: double.parse(_controllerMediaLeite.text));
      var resultado = await _animalRepositorio.alterar(_animal);
    }
  }

  void _confirmar(BuildContext context) async {
  // Efetiva o conteúdo da caixa de texto e armazena nos objetos controllers
  if (_formKey.currentState!.validate()) {
    setState(() {
      _formKey.currentState!.save();
    });

    await _defineDados();

    Navigator.pop(context, _animal);
  }
}


  Widget _body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[

            HelperUI.builderTextFormField(_controllerNome, "Nome", (value) => _validar(value)),

            //Campo data
            TextFormField(
              controller: _controllerDataNascimento,
              readOnly: true,
              validator: (value) => _validar(value),
              decoration: InputDecoration(
                labelText: 'Data de Nascimento',
                suffixIcon: IconButton(
                  icon: Icon(Icons.calendar_today),
                  onPressed: () {
                    _selectDate(context);
                  },
                ),
              ),
            ),

            HelperUI.builderTextFormField(_controllerSexo, "Sexo", (value) => _validar(value)),

            HelperUI.builderTextFormField(_controllerRaca, "Raça", (value) => _validar(value)),

            HelperUI.builderTextFormField(_controllerIdade, "Idade", (value) => _validar(value)),

            HelperUI.builderTextFormField(_controllerFormaManejo, "Forma de Manejo", (value) => _validar(value)),

            HelperUI.builderTextFormField(_controllerMediaLeite, "Média de Leite", (value) => _validar(value)),

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
