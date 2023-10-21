import 'package:controle_bovino_leiteiro/src/generated/prisma/prisma_client.dart';

class CompradorRepositorio {
  //Declarando o objeto para realizar a conexão
  late PrismaClient _prismaClient;

  void conectar() {
    _prismaClient = PrismaClient(
        datasources: const Datasources(
            db: "mysql://root:root@localhost:3306/controle_bovino_leiteiro"));
  }

  Future<Comprador> inserir(Comprador comprador) async {
    conectar();
    try {
      comprador = await _prismaClient.comprador.create(
          data: CompradorCreateInput(
              nome: comprador.nome,
              telefone: comprador.telefone,
              endereco: comprador.endereco));
    } finally {
      await _prismaClient.$disconnect();
    }
    return comprador;
  }

  Future<Comprador?> alterar(Comprador? comprador) async {
    conectar();
    try {
      comprador = await _prismaClient.comprador.update(
          data: CompradorUpdateInput(
              nome: StringFieldUpdateOperationsInput(set: comprador?.nome),
              telefone:
                  StringFieldUpdateOperationsInput(set: comprador?.telefone),
              endereco:
                  StringFieldUpdateOperationsInput(set: comprador?.endereco)),
          where:
              CompradorWhereUniqueInput(codComprador: comprador?.codComprador));
    } catch (e) {
      print(e);
    } finally {
      await _prismaClient.$disconnect();
    }
    return comprador;
  }

  Future<Comprador?> excluir(int codigo) async {
    conectar();
    Comprador? comprador;
    try {
      comprador = await _prismaClient.comprador
          .delete(where: CompradorWhereUniqueInput(codComprador: codigo));
    } finally {
      await _prismaClient.$disconnect();
    }
    return comprador;
  }

  Future<Comprador?> consultarPeloCodigo(int codigo) async {
    conectar();
    Comprador? comprador;
    try {
      comprador = await _prismaClient.comprador
          .findUnique(where: CompradorWhereUniqueInput(codComprador: codigo));
    } finally {
      await _prismaClient.$disconnect();
    }

    return comprador;
  }

  Future<Iterable<Comprador>> consultarTodos() async {
    conectar();
    Iterable<Comprador> compradores;
    try {
      compradores = await _prismaClient.comprador.findMany();
    } finally {
      await _prismaClient.$disconnect();
    }
    return compradores;
  }
}
