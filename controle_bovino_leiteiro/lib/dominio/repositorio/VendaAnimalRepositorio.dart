import 'package:controle_bovino_leiteiro/src/generated/prisma/prisma_client.dart';

class VendaAnimalRepositorio {
  //Declarando o objeto para realizar a conexão
  late PrismaClient _prismaClient;

  void conectar() {
    _prismaClient = PrismaClient(
        datasources: const Datasources(
            db: "mysql://root:root@localhost:3306/controle_bovino_leiteiro"));
  }

  Future<Vendaanimal> inserir(Vendaanimal vendaanimal) async {
    conectar();
    try {
      vendaanimal = await _prismaClient.vendaanimal.create(
        data: VendaanimalCreateInput(
          comprador: CompradorCreateNestedOneWithoutVendaanimalInput(
            connect: CompradorWhereUniqueInput(
              codComprador: vendaanimal.codComprador,
            ),
          ),
          dataVendaAnimal: vendaanimal.dataVendaAnimal,
          valorTotalAnimal: vendaanimal.valorTotalAnimal,
        ),
      );
    } finally {
      await _prismaClient.$disconnect();
    }
    return vendaanimal;
  }

  Future<Vendaanimal?> alterar(Vendaanimal? vendaanimal) async {
    conectar();
    try {
      vendaanimal = await _prismaClient.vendaanimal.update(
          data: VendaanimalUpdateInput(
              dataVendaAnimal: DateTimeFieldUpdateOperationsInput(set: vendaanimal?.dataVendaAnimal),
              valorTotalAnimal: FloatFieldUpdateOperationsInput(set: vendaanimal?.valorTotalAnimal)),
          where: VendaanimalWhereUniqueInput(
              codVendaAnimal: vendaanimal?.codVendaAnimal));
    } catch (e) {
      print(e);
    } finally {
      await _prismaClient.$disconnect();
    }
    return vendaanimal;
  }

  Future<Vendaanimal?> excluir(int codigo) async {
    conectar();
    Vendaanimal? vendaanimal;
    try {
      vendaanimal = await _prismaClient.vendaanimal
          .delete(where: VendaanimalWhereUniqueInput(codVendaAnimal: codigo));
    } finally {
      await _prismaClient.$disconnect();
    }
    return vendaanimal;
  }

  Future<Vendaanimal?> consultarPeloCodigo(int codigo) async {
    conectar();
    Vendaanimal? vendaanimal;
    try {
      vendaanimal = await _prismaClient.vendaanimal
          .findUnique(where: VendaanimalWhereUniqueInput(codVendaAnimal: codigo));
    } finally {
      await _prismaClient.$disconnect();
    }

    return vendaanimal;
  }

  Future<Iterable<Vendaanimal>> consultarTodos() async {
    conectar();
    Iterable<Vendaanimal> vendaanimais;
    try {
      vendaanimais = await _prismaClient.vendaanimal.findMany();
    } finally {
      await _prismaClient.$disconnect();
    }
    return vendaanimais;
  }
}
