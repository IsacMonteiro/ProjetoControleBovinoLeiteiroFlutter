import 'package:controle_bovino_leiteiro/src/generated/prisma/prisma_client.dart';

class AnimalRepositorio {
  //Declarando o objeto para realizar a conexão
  late PrismaClient _prismaClient;

  void conectar() {
    _prismaClient = PrismaClient(
        datasources: Datasources(
            db: "mysql://root:root@localhost:3306/controle_bovino_leiteiro"));
  }

  Future<Animal> inserir(Animal animal) async {
    conectar();
    try {
      animal = await _prismaClient.animal.create(
          data: AnimalCreateInput(
              categoria: CategoriaCreateNestedOneWithoutAnimalInput(
                connect: CategoriaWhereUniqueInput(
                    codCategoria: animal.codCategoria),
              ),
              prodleite: ProdleiteCreateNestedOneWithoutAnimalInput(
                connect: ProdleiteWhereUniqueInput(
                    codProdLeite: animal.codProdLeite),
              ),
              nome: animal.nome,
              dataNascimento: animal.dataNascimento,
              sexo: animal.sexo,
              raca: animal.raca,
              idade: animal.idade,
              formaManejo: animal.formaManejo));
    } finally {
      await _prismaClient.$disconnect();
    }
    return animal;
  }

  Future<Animal?> alterar(Animal? animal) async {
    conectar();
    try {
      animal = await _prismaClient.animal.update(
          data: AnimalUpdateInput(
            nome: StringFieldUpdateOperationsInput(set: animal?.nome),
            dataNascimento: DateTimeFieldUpdateOperationsInput(set: animal?.dataNascimento),
            sexo: StringFieldUpdateOperationsInput(set: animal?.sexo),
            raca: StringFieldUpdateOperationsInput(set: animal?.raca),
            idade: IntFieldUpdateOperationsInput(set: animal?.idade),
            formaManejo:StringFieldUpdateOperationsInput(set: animal?.formaManejo),
            mediaLeite: NullableFloatFieldUpdateOperationsInput(set: animal?.mediaLeite)
          ),
          where: AnimalWhereUniqueInput(codAnimal: animal?.codAnimal));
    } catch (e) {
      print(e);
    } finally {
      await _prismaClient.$disconnect();
    }
    return animal;
  }

  Future<Animal?> excluir(int codigo) async {
    conectar();
    Animal? animal;
    try {
      animal = await _prismaClient.animal
          .delete(where: AnimalWhereUniqueInput(codAnimal: codigo));
    } finally {
      await _prismaClient.$disconnect();
    }
    return animal;
  }

  Future<Animal?> consultarPeloCodigo(int codigo) async {
    conectar();
    Animal? animal;
    try {
      animal = await _prismaClient.animal
          .findUnique(where: AnimalWhereUniqueInput(codAnimal: codigo));
    } finally {
      await _prismaClient.$disconnect();
    }

    return animal;
  }

  Future<Iterable<Animal>> consultarTodos() async {
    conectar();
    Iterable<Animal> clientes;
    try {
      clientes = await _prismaClient.animal.findMany();
    } finally {
      await _prismaClient.$disconnect();
    }
    return clientes;
  }


//Busca a lista de produção de leite e categoria - Não foi utilizada a presente no repositório dos mesmos
//por conta do nome padrão "consultarTodos" que poderia entrar em conflito.

  Future<Iterable<Categoria>> consultarCategoria() async {
    conectar();
    Iterable<Categoria> categorias;
    try {
      categorias = await _prismaClient.categoria.findMany();
    } finally {
      await _prismaClient.$disconnect();
    }
    return categorias;
  }


    Future<Iterable<Prodleite>> consultarProdLeites() async {
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
