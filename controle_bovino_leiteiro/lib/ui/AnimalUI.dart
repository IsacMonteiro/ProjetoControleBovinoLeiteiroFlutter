import 'package:flutter/material.dart';
import 'package:controle_bovino_leiteiro/dominio/repositorio/animal_repositorio.dart';
import 'package:controle_bovino_leiteiro/src/generated/prisma/prisma_client.dart';
import 'package:controle_bovino_leiteiro/ui/HelperUI.dart';

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
  TextEditingController _controllerDataNascimento = TextEditingController();
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
    /*Recuperando os argumentos enviados pela janela anterior
    utilizando rotas.*/
    var args = ModalRoute.of(context)!.settings.arguments;

    if (args != null) {
      //Convertendo a variável args para o tipo Animal
         _animal = args as Animal;

      //Atribuindo os dados do objeto aos controlles
      //da caixa de texto
      setState(() {
          _controllerNome.text = _animal.nome;
          //_controllerDataNascimento.text = _animal.dataNascimento;
          _controllerSexo.text = _animal.sexo;
          _controllerRaca.text = _animal.raca;
          //_controllerIdade.text = _animal.idade;
          _controllerFormaManejo.text = _animal.formaManejo;
          //_controllerMediaLeite.text = _animal.mediaLeite;
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
          mediaLeite: 0.0
          );
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
     if (_animal.codAnimal == 0) {
      //Incluindo os dados
      _animal = Animal(
          codAnimal: 0,
          codProdLeite: 0,
          codCategoria: 0,
          nome: _controllerNome.text,
          dataNascimento: DateTime.now(),
          sexo: _controllerSexo.text,
          raca: _controllerRaca.text,
          idade: 0,
          formaManejo: _controllerFormaManejo.text,
          mediaLeite: 0
          );

      _animalRepositorio.inserir(_animal);
    } else {
      //Salvando os dados
      int codigoAnimal = _animal.codAnimal;
      int codigoProdLeite = _animal.codProdLeite;
      int codigoCategoria = _animal.codCategoria;
      DateTime data = _animal.dataNascimento;
      _animal = Animal(
          codAnimal: codigoAnimal,
          codProdLeite: codigoProdLeite,
          codCategoria: codigoCategoria,
          nome: _controllerNome.text,
          dataNascimento: data,
          sexo: _controllerSexo.text,
          raca: _controllerRaca.text,
          idade: 0,
          formaManejo: _controllerFormaManejo.text,
          mediaLeite: 0
          );
      _animalRepositorio.alterar(_animal);
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
        Navigator.pop(context, _animal);
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
            HelperUI.builderTextFormField(_controllerDataNascimento,
                "Data de Nascimento", (value) => _validar(value)),
            HelperUI.builderTextFormField(
                _controllerSexo, "Sexo", (value) => _validar(value)),
            HelperUI.builderTextFormField(
                _controllerRaca, "Raça", (value) => _validar(value)),
            HelperUI.builderTextFormField(
                _controllerIdade, "Idade", (value) => _validar(value)),
            HelperUI.builderTextFormField(_controllerFormaManejo,
                "Forma de Manejo", (value) => _validar(value)),
            HelperUI.builderTextFormField(_controllerMediaLeite,
                "Media de Leite", (value) => _validar(value)),
          ],
        ),
      ),
    );
  }
}
