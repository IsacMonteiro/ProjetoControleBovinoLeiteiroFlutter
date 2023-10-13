import 'package:controle_bovino_leiteiro/src/generated/prisma/prisma_client.dart';

class CategoriaRepositorio {
  //Declarando o objeto para realizar a conexão
  late PrismaClient _prismaClient;

  void conectar() {
    _prismaClient = PrismaClient(
        datasources:
          const Datasources(db:"mysql://root:root@localhost:3306/controle_bovino_leiteiro"));
  }

  void inserir(Categoria categoria) async {
    conectar();
    try {
      categoria = await _prismaClient.categoria.create(
          data: CategoriaCreateInput(tipo:categoria.tipo));
    } finally {
      await _prismaClient.$disconnect();
    }
  }

  void alterar(Categoria? categoria) async {
    conectar();
    try {
      categoria = await _prismaClient.categoria.update(
          data: CategoriaUpdateInput(
              tipo: StringFieldUpdateOperationsInput(set: categoria?.tipo)),
          where: CategoriaWhereUniqueInput(codCategoria: categoria?.codCategoria));
    } catch (e) {
      print(e);
    } finally {
      await _prismaClient.$disconnect();
    }
  }

  Future<Categoria?> excluir(int codigo) async {
    conectar();
    Categoria? categoria;
    try {
      categoria = await _prismaClient.categoria.delete(where:CategoriaWhereUniqueInput(codCategoria: codigo));
    } finally {
      await _prismaClient.$disconnect();
    }
    return categoria;
  }

  Future<Categoria?> consultarPeloCodigo(int codigo) async {
    conectar();
    Categoria? categoria;
    try {
      categoria = await _prismaClient.categoria
          .findUnique(where: CategoriaWhereUniqueInput(codCategoria: codigo));
    } finally {
      await _prismaClient.$disconnect();
    }

    return categoria;
  }

  Future<Iterable<Categoria>> consultarTodos() async {
    conectar();
    Iterable<Categoria> categorias;
    try {
      categorias = await _prismaClient.categoria.findMany();
    } finally {
      await _prismaClient.$disconnect();
    }
    return categorias;
  }
}
