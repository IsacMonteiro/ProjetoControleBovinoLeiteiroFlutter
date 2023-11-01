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

  Iterable<Comprador> _compradores = [];
  String? _selectedComprador;
  VendaLeiteRepositorio _vendaLeiteRepositorio = VendaLeiteRepositorio(); // Inicialize o repositório aqui

  @override
  void initState() {
    super.initState();
    _carregarCompradores();
  }

  void _carregarCompradores() {
    _vendaLeiteRepositorio.consultarCompradores().then((value) {
      setState(() {
        _compradores = value;
        if (_compradores.isNotEmpty) {
          _selectedComprador = _compradores.first.codComprador.toString();
        }
      });
    });
  }

  TextEditingController _controllerDataVendaLeite = TextEditingController();
  DateTime? _selectedDate;
  TextEditingController _controllerValorTotalLeite = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  late Vendaleite _vendaLeite;

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments;

    if (args != null) {
      _vendaLeite = args as Vendaleite;
      setState(() {
        _controllerDataVendaLeite.text =
            DateFormat('dd/MM/yyyy').format(_vendaLeite.dataVendaLeite);
        _controllerValorTotalLeite.text =
            _vendaLeite.valorTotalLeite.toString();
        _selectedComprador = _vendaLeite.codComprador.toString();
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
        title: const Text('Venda de Leite'),
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

  String? _validar(String? valor) {
    if ((valor == null) || (valor.isEmpty)) {
      return "Campo obrigatório!";
    }
    return null;
  }

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

  Future<void> _defineDados() async {
    if (_vendaLeite.codVendaLeite == 0) {
      _vendaLeite = Vendaleite(
        codVendaLeite: 0,
        codComprador: int.parse(_selectedComprador!),
        dataVendaLeite: _selectedDate ?? DateTime.now(),
        valorTotalLeite: double.parse(_controllerValorTotalLeite.text),
      );
      var resultado = await _vendaLeiteRepositorio.inserir(_vendaLeite);
    } else {
      int codigo = _vendaLeite.codVendaLeite;
      int codigoComprador = int.parse(_selectedComprador!);
      _vendaLeite = Vendaleite(
        codVendaLeite: codigo,
        codComprador: codigoComprador,
        dataVendaLeite: _selectedDate ?? DateTime.now(),
        valorTotalLeite: double.parse(_controllerValorTotalLeite.text),
      );
      var resultado = await _vendaLeiteRepositorio.alterar(_vendaLeite);
    }
  }

  void _confirmar(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _formKey.currentState!.save();
      });

      await _defineDados();

      Navigator.pop(context, _vendaLeite);
    }
  }

  Widget _body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            // ComboBox
            DropdownButtonFormField<String>(
              value: _selectedComprador,
              onChanged: (value) {
                setState(() {
                  _selectedComprador = value;
                });
              },
              items: _compradores.map((comprador) {
                return DropdownMenuItem<String>(
                  value: comprador.codComprador.toString(),
                  child: Text(comprador.nome),
                );
              }).toList(),
              validator: (value) {
                if (value == null) {
                  return "Campo obrigatório!";
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'Comprador',
              ),
            ),

            // Campo Data.
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
                _controllerValorTotalLeite, "Quantidade Vendida",
                (value) => _validarQtdVendaLeite(value)),

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