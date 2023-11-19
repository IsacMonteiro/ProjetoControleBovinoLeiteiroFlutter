import 'package:controle_bovino_leiteiro/src/generated/prisma/prisma_client.dart';

class ItensVendaRepositorio {
  //Declarando o objeto para realizar a conexão
  late PrismaClient _prismaClient;

  void conectar() {
    _prismaClient = PrismaClient(
        datasources: const Datasources(
            db: "mysql://root:root@localhost:3306/controle_bovino_leiteiro"));
  }

  Future<Itensvenda> inserir(Itensvenda itensvenda) async {
    conectar();
    try {
      itensvenda = await _prismaClient.itensvenda.create(
        data: ItensvendaCreateInput(
          animal: AnimalCreateNestedOneWithoutItensvendaInput(
            connect: AnimalWhereUniqueInput(
              codAnimal: itensvenda.codAnimal,
            ),
          ),
          vendaanimal: VendaanimalCreateNestedOneWithoutItensvendaInput(
            connect: VendaanimalWhereUniqueInput(
              codVendaAnimal: itensvenda.codVendaAnimal,
            ),
          ),
          quantidade: itensvenda.quantidade,
          valorUnitario: itensvenda.valorUnitario,
          valorTotalItemAnimal: itensvenda.valorTotalItemAnimal,
        ),
      );
    } finally {
      await _prismaClient.$disconnect();
    }
    return itensvenda;
  }

  Future<Itensvenda?> alterar(Itensvenda? itensvenda) async {
    conectar();
    try {
      itensvenda = await _prismaClient.itensvenda.update(
        data: ItensvendaUpdateInput(
          quantidade:
              IntFieldUpdateOperationsInput(set: itensvenda?.quantidade),
          valorUnitario:
              FloatFieldUpdateOperationsInput(set: itensvenda?.valorUnitario),
          valorTotalItemAnimal: FloatFieldUpdateOperationsInput(
              set: itensvenda?.valorTotalItemAnimal),
        ),
        where: ItensvendaWhereUniqueInput(
            codItensVenda: itensvenda?.codItensVenda
            ),
      );
    } catch (e) {
      print(e);
    } finally {
      await _prismaClient.$disconnect();
    }
    return itensvenda;
  }

  Future<Itensvenda?> excluir(int codigo) async {
    conectar();
    Itensvenda? itensvenda;
    try {
      itensvenda = await _prismaClient.itensvenda.delete(
          where: ItensvendaWhereUniqueInput(
              codItensVenda: codigo
              ));
    } finally {
      await _prismaClient.$disconnect();
    }
    return itensvenda;
  }

  Future<Itensvenda?> consultarPeloCodigo(int codigo) async {
    conectar();
    Itensvenda? itensvenda;
    try {
      itensvenda = await _prismaClient.itensvenda.findUnique(
          where: ItensvendaWhereUniqueInput(
              codItensVenda: codigo
              ));
    } finally {
      await _prismaClient.$disconnect();
    }

    return itensvenda;
  }

  Future<Iterable<Itensvenda>> consultarTodos() async {
    conectar();
    Iterable<Itensvenda> itensvendas;
    try {
      itensvendas = await _prismaClient.itensvenda.findMany();
    } finally {
      await _prismaClient.$disconnect();
    }
    return itensvendas;
  }



//Busca a lista de venda de animal e animal - Não foi utilizada a presente no repositório dos mesmos
//por conta do nome padrão "consultarTodos" que poderia entrar em conflito.

  Future<Iterable<Animal>> consultarAnimal() async {
    conectar();
    Iterable<Animal> animais;
    try {
      animais = await _prismaClient.animal.findMany();
    } finally {
      await _prismaClient.$disconnect();
    }
    return animais;
  }


    Future<Iterable<Vendaanimal>> consultarVendasAnimais() async {
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
