import 'package:controle_bovino_leiteiro/src/generated/prisma/prisma_client.dart';

class VendaProdLeiteRepositorio {
  //Declarando o objeto para realizar a conexão
  late PrismaClient _prismaClient;

  void conectar() {
    _prismaClient = PrismaClient(
        datasources: const Datasources(
            db: "mysql://root:root@localhost:3306/controle_bovino_leiteiro"));
  }

  Future<Vendaprodleite> inserir(Vendaprodleite vendaprodleite) async {
    conectar();
    try {
      vendaprodleite = await _prismaClient.vendaprodleite.create(
        data: VendaprodleiteCreateInput(
          prodleite: ProdleiteCreateNestedOneWithoutVendaprodleiteInput(
            connect: ProdleiteWhereUniqueInput(
              codProdLeite: vendaprodleite.codProdLeite,
            ),
          ),
          vendaleite: VendaleiteCreateNestedOneWithoutVendaprodleiteInput(
            connect: VendaleiteWhereUniqueInput(
              codVendaLeite: vendaprodleite.codVendaLeite,
            ),
          ),
          qtdLeite: vendaprodleite.qtdLeite,
          valorLitro: vendaprodleite.valorLitro,
          valorTotalItemLeite: vendaprodleite.valorTotalItemLeite,
        ),
      );
    } finally {
      await _prismaClient.$disconnect();
    }
    return vendaprodleite;
  }

  Future<Vendaprodleite?> alterar(Vendaprodleite? vendaprodleite) async {
    conectar();
    try {
      vendaprodleite = await _prismaClient.vendaprodleite.update(
        data: VendaprodleiteUpdateInput(
          qtdLeite:
              FloatFieldUpdateOperationsInput(set: vendaprodleite?.qtdLeite),
          valorLitro:
              FloatFieldUpdateOperationsInput(set: vendaprodleite?.valorLitro),
          valorTotalItemLeite: FloatFieldUpdateOperationsInput(
              set: vendaprodleite?.valorTotalItemLeite),
        ),
        where: VendaprodleiteWhereUniqueInput(
            //codVendaProdLeite: vendaprodleite?.codVendaProdLeite
        ),
      );
    } catch (e) {
      print(e);
    } finally {
      await _prismaClient.$disconnect();
    }
    return vendaprodleite;
  }

  Future<Vendaprodleite?> excluir(int codigo) async {
    conectar();
    Vendaprodleite? vendaprodleite;
    try {
      vendaprodleite = await _prismaClient.vendaprodleite.delete(
          where: VendaprodleiteWhereUniqueInput(
            //codVendaProdLeite: codigo
          ));
    } finally {
      await _prismaClient.$disconnect();
    }
    return vendaprodleite;
  }

  Future<Vendaprodleite?> consultarPeloCodigo(int codigo) async {
    conectar();
    Vendaprodleite? vendaprodleite;
    try {
      vendaprodleite = await _prismaClient.vendaprodleite.findUnique(
          where: VendaprodleiteWhereUniqueInput(
            //codVendaProdLeite: codigo
          ));
    } finally {
      await _prismaClient.$disconnect();
    }

    return vendaprodleite;
  }

  Future<Iterable<Vendaprodleite>> consultarTodos() async {
    conectar();
    Iterable<Vendaprodleite> vendaprodleites;
    try {
      vendaprodleites = await _prismaClient.vendaprodleite.findMany();
    } finally {
      await _prismaClient.$disconnect();
    }
    return vendaprodleites;
  }
}
