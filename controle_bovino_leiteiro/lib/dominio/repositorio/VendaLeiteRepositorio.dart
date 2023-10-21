import 'package:controle_bovino_leiteiro/src/generated/prisma/prisma_client.dart';

class VendaLeiteRepositorio {
  //Declarando o objeto para realizar a conexão
  late PrismaClient _prismaClient;

  void conectar() {
    _prismaClient = PrismaClient(
        datasources: const Datasources(
            db: "mysql://root:root@localhost:3306/controle_bovino_leiteiro"));
  }

  Future<Vendaleite> inserir(Vendaleite vendaleite) async {
    conectar();
    try {
      vendaleite = await _prismaClient.vendaleite.create(
        data: VendaleiteCreateInput(
          comprador: CompradorCreateNestedOneWithoutVendaleiteInput(
            connect: CompradorWhereUniqueInput(
              codComprador: vendaleite.codComprador,
            ),
          ),
          dataVendaLeite: vendaleite.dataVendaLeite,
          valorTotalLeite: vendaleite.valorTotalLeite,
        ),
      );
    } finally {
      await _prismaClient.$disconnect();
    }
    return vendaleite;
  }

  Future<Vendaleite?> alterar(Vendaleite? vendaleite) async {
    conectar();
    try {
      vendaleite = await _prismaClient.vendaleite.update(
          data: VendaleiteUpdateInput(
              dataVendaLeite: DateTimeFieldUpdateOperationsInput(set: vendaleite?.dataVendaLeite),
              valorTotalLeite: FloatFieldUpdateOperationsInput(set: vendaleite?.valorTotalLeite)),
          where: VendaleiteWhereUniqueInput(
              codVendaLeite: vendaleite?.codVendaLeite));
    } catch (e) {
      print(e);
    } finally {
      await _prismaClient.$disconnect();
    }
    return vendaleite;
  }

  Future<Vendaleite?> excluir(int codigo) async {
    conectar();
    Vendaleite? vendaleite;
    try {
      vendaleite = await _prismaClient.vendaleite
          .delete(where: VendaleiteWhereUniqueInput(codVendaLeite: codigo));
    } finally {
      await _prismaClient.$disconnect();
    }
    return vendaleite;
  }

  Future<Vendaleite?> consultarPeloCodigo(int codigo) async {
    conectar();
    Vendaleite? vendaleite;
    try {
      vendaleite = await _prismaClient.vendaleite
          .findUnique(where: VendaleiteWhereUniqueInput(codVendaLeite: codigo));
    } finally {
      await _prismaClient.$disconnect();
    }

    return vendaleite;
  }

  Future<Iterable<Vendaleite>> consultarTodos() async {
    conectar();
    Iterable<Vendaleite> vendaleites;
    try {
      vendaleites = await _prismaClient.vendaleite.findMany();
    } finally {
      await _prismaClient.$disconnect();
    }
    return vendaleites;
  }
}
