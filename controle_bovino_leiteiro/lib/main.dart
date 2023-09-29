import 'package:controle_bovino_leiteiro/ui/AnimalListagemUI.dart';
import 'package:controle_bovino_leiteiro/ui/AnimalUI.dart';
import 'package:controle_bovino_leiteiro/ui/CategoriaListagemUI.dart';
import 'package:controle_bovino_leiteiro/ui/CategoriaUI.dart';
import 'package:controle_bovino_leiteiro/ui/ClienteListagemUI.dart';
import 'package:controle_bovino_leiteiro/ui/ClienteUI.dart';
import 'package:controle_bovino_leiteiro/ui/HelperUI.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const ContasReceberApp(),

        ClienteUI.ROTA: (context) => const ClienteUI(), //IMPORT ClienteUI
        ClienteListagemUI.ROTA: (context) => const ClienteListagemUI(), //IMPORT ClienteUI ClienteListagemUI
        '/contasreceber': (context) => const ClienteUI(),

        AnimalUI.ROTA: (context) => const AnimalUI(),
        AnimalListagem.ROTA: (context) => const AnimalListagem(),
        '/cadastro': (context) => const AnimalUI(), //cria o botão de adicionar

        CategoriaUI.ROTA: (context) => const CategoriaUI(),
        CategoriaListagemUI.ROTA: (context) => const CategoriaListagemUI(),
        '/cadastrocategoria': (context) => const CategoriaUI(),
      },
    );
  }
}

class ContasReceberApp extends StatefulWidget {
  const ContasReceberApp({super.key});

  @override
  State<StatefulWidget> createState() => _ContasReceberApp();
}

class _ContasReceberApp extends State<ContasReceberApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerApp(),
      appBar: AppBar(
        title: const Text('Contas a Receber'),
      ),
      body: Container(),
    );
  }
}

///Classe que define a estrutura do menu principal da aplicação
class NavigationDrawerApp extends StatelessWidget {
  const NavigationDrawerApp({super.key});

  //Define a opção do menu selecionado
  final int _selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: _itemsMenu(context),
    );
  }

  ListView _itemsMenu(BuildContext context) {
    return ListView(
      children: [
        //Criando o cabeçalho do menu
        DrawerHeader(
            decoration: BoxDecoration(color: Colors.green),
            child: Column(
              children: [
                CircleAvatar(
                    backgroundColor: Colors.brown,
                    radius: 54,
                    child: CircleAvatar(
                      radius: 48,
                      backgroundImage: NetworkImage(
                          'https://th.bing.com/th/id/OIP.qGfj_ElXtFn5RCy2jativQHaHa?pid=ImgDet&rs=1'),
                    )),
                SizedBox(height: 5),
                Text('GREEN FARM')
              ],
            )),
        HelperUI.builderListTile(_selectIndex == 0, Icons.home, "Cliente",
            context, ClienteListagemUI.ROTA),

        HelperUI.builderListTile(
            //IMPORT HelperUI
            _selectIndex == 1,
            Icons.home,
            "Produto",
            context,
            "/produtos"),

        HelperUI.builderListTile(_selectIndex == 2, Icons.pets,
            "Animal Cadastro", context, AnimalUI.ROTA),

        HelperUI.builderListTile(_selectIndex == 2, Icons.pets,
            "Animal Consulta", context, AnimalListagem.ROTA),

        HelperUI.builderListTile(_selectIndex == 3, Icons.category,
            "Categoria", context, CategoriaListagemUI.ROTA),
      ],
    );
  }
}
