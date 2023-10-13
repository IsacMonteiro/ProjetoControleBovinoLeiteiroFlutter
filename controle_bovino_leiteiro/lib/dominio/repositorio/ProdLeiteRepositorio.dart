import 'package:controle_bovino_leiteiro/src/generated/prisma/prisma_client.dart';

class ProdLeiteRepositorio {
  //Declarando o objeto para realizar a conexão
  late PrismaClient _prismaClient;

  void conectar() {
    _prismaClient = PrismaClient(
        datasources:
          const Datasources(db:"mysql://root:root@localhost:3306/controle_bovino_leiteiro"));
  }

  void inserir(Prodleite prodleite) async {
    conectar();
    try {
      prodleite = await _prismaClient.prodleite.create(
        data: ProdleiteCreateInput(
                dataProdLeite:prodleite.dataProdLeite,
                qtdProdLeite: prodleite.qtdProdLeite
              )
      );
    } finally {
      await _prismaClient.$disconnect();
    }
  }

  void alterar(Prodleite? prodleite) async {
    conectar();
    try {
      prodleite = await _prismaClient.prodleite.update(
          data: ProdleiteUpdateInput(
              dataProdLeite: DateTimeFieldUpdateOperationsInput(set: prodleite?.dataProdLeite),
              qtdProdLeite: FloatFieldUpdateOperationsInput(set: prodleite?.qtdProdLeite)
            ),
          where: ProdleiteWhereUniqueInput(codProdLeite: prodleite?.codProdLeite));
    } catch (e) {
      print(e);
    } finally {
      await _prismaClient.$disconnect();
    }
  }

  Future<Prodleite?> excluir(int codigo) async {
    conectar();
    Prodleite? prodleite;
    try {
      prodleite = await _prismaClient.prodleite.delete(where:ProdleiteWhereUniqueInput(codProdLeite: codigo));
    } finally {
      await _prismaClient.$disconnect();
    }
    return prodleite;
  }

  Future<Prodleite?> consultarPeloCodigo(int codigo) async {
    conectar();
    Prodleite? prodleite;
    try {
      prodleite = await _prismaClient.prodleite
          .findUnique(where: ProdleiteWhereUniqueInput(codProdLeite: codigo));
    } finally {
      await _prismaClient.$disconnect();
    }

    return prodleite;
  }

  Future<Iterable<Prodleite>> consultarTodos() async {
    conectar();
    Iterable<Prodleite> prodleites;
    try {
      prodleites = await _prismaClient.prodleite.findMany();
    } finally {
      await _prismaClient.$disconnect();
    }
    return prodleites;
  }
}