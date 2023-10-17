import 'package:controle_bovino_leiteiro/src/generated/prisma/prisma_client.dart';
import 'package:controle_bovino_leiteiro/ui/AnimalListagemUI.dart';
import 'package:controle_bovino_leiteiro/ui/AnimalUI.dart';
import 'package:controle_bovino_leiteiro/ui/CategoriaListagemUI.dart';
import 'package:controle_bovino_leiteiro/ui/CategoriaUI.dart';
import 'package:controle_bovino_leiteiro/ui/CompradorListagemUI.dart';
import 'package:controle_bovino_leiteiro/ui/CompradorUI.dart';
import 'package:controle_bovino_leiteiro/ui/HelperUI.dart';
import 'package:controle_bovino_leiteiro/ui/ProdLeiteListagem.dart';
import 'package:controle_bovino_leiteiro/ui/ProdLeiteUI.dart';
import 'package:controle_bovino_leiteiro/ui/VendaLeiteListagem.dart';
import 'package:controle_bovino_leiteiro/ui/VendaLeiteUI.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

        CompradorUI.ROTA: (context) => const CompradorUI(),
        CompradorListagemUI.ROTA: (context) => const CompradorListagemUI(),
        '/cadastrocomprador': (context) => const CompradorUI(),

        AnimalUI.ROTA: (context) => const AnimalUI(),
        AnimalListagem.ROTA: (context) => const AnimalListagem(),
        '/cadastroanimal': (context) => const AnimalUI(), //cria o botão de adicionar

        CategoriaUI.ROTA: (context) => const CategoriaUI(),
        CategoriaListagemUI.ROTA: (context) => const CategoriaListagemUI(),
        '/cadastrocategoria': (context) => const CategoriaUI(),

        ProdLeiteUI.ROTA: (context) => const ProdLeiteUI(),
        ProdLeiteListagemUI.ROTA: (context) => const ProdLeiteListagemUI(),
        '/cadastroprodleite': (context) => const ProdLeiteUI(),

        VendaLeiteUI.ROTA: (context) => const VendaLeiteUI(),
        VendaLeiteListagemUI.ROTA: (context) => const VendaLeiteListagemUI(),
        '/cadastrovendaleite': (context) => const VendaLeiteUI(),
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
          backgroundColor: Colors.green,
          title: const Text('Controle Bovino e Leiteiro')),
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

        HelperUI.builderListTile(_selectIndex == 0, Icons.person, "Comprador",
            context, CompradorListagemUI.ROTA),

        HelperUI.builderListTile(_selectIndex == 1, Icons.pets, "Animal",
            context, AnimalListagem.ROTA),

        HelperUI.builderListTile(_selectIndex == 2, Icons.category, "Categoria",
            context, CategoriaListagemUI.ROTA),

        HelperUI.builderListTile(_selectIndex == 3, FontAwesomeIcons.wineBottle, "Produção de Leite",
            context, ProdLeiteListagemUI.ROTA),

        HelperUI.builderListTile(_selectIndex == 4, FontAwesomeIcons.moneyBill, "Venda de Leite",
            context, VendaLeiteListagemUI.ROTA),
      ],
    );
  }
}
