// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:json_annotation/json_annotation.dart';
import 'package:orm/binary_engine.dart' as _i5;
import 'package:orm/engine_core.dart' as _i3;
import 'package:orm/graphql.dart' as _i2;
import 'package:orm/logger.dart' as _i4;
import 'package:orm/orm.dart' as _i1;
import 'package:orm/orm.dart' show DateTimeJsonConverter;

part 'prisma_client.g.dart';

enum AnimalScalarFieldEnum implements _i1.PrismaEnum {
  codAnimal,
  codProdLeite,
  codCategoria,
  nome,
  dataNascimento,
  sexo,
  raca,
  idade,
  formaManejo,
  mediaLeite;

  @override
  String? get originalName => null;
}

enum CategoriaScalarFieldEnum implements _i1.PrismaEnum {
  codCategoria,
  tipo;

  @override
  String? get originalName => null;
}

enum CompradorScalarFieldEnum implements _i1.PrismaEnum {
  codComprador,
  nome,
  telefone,
  endereco;

  @override
  String? get originalName => null;
}

enum ItensvendaScalarFieldEnum implements _i1.PrismaEnum {
  codItensVenda,
  codVendaAnimal,
  codAnimal,
  quantidade,
  valorUnitario,
  valorTotalItemAnimal;

  @override
  String? get originalName => null;
}

enum ProdleiteScalarFieldEnum implements _i1.PrismaEnum {
  codProdLeite,
  dataProdLeite,
  qtdProdLeite;

  @override
  String? get originalName => null;
}

enum VendaanimalScalarFieldEnum implements _i1.PrismaEnum {
  codVendaAnimal,
  codComprador,
  dataVendaAnimal,
  valorTotalAnimal;

  @override
  String? get originalName => null;
}

enum VendaleiteScalarFieldEnum implements _i1.PrismaEnum {
  codVendaLeite,
  codComprador,
  dataVendaLeite,
  valorTotalLeite;

  @override
  String? get originalName => null;
}

enum VendaprodleiteScalarFieldEnum implements _i1.PrismaEnum {
  codVendaProdLeite,
  codVendaLeite,
  codProdLeite,
  qtdLeite,
  valorLitro,
  valorTotalItemLeite;

  @override
  String? get originalName => null;
}

enum SortOrder implements _i1.PrismaEnum {
  asc,
  desc;

  @override
  String? get originalName => null;
}

enum NullsOrder implements _i1.PrismaEnum {
  first,
  last;

  @override
  String? get originalName => null;
}

@_i1.jsonSerializable
class AnimalWhereInput implements _i1.JsonSerializable {
  const AnimalWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.codAnimal,
    this.codProdLeite,
    this.codCategoria,
    this.nome,
    this.dataNascimento,
    this.sexo,
    this.raca,
    this.idade,
    this.formaManejo,
    this.mediaLeite,
    this.categoria,
    this.prodleite,
    this.itensvenda,
  });

  factory AnimalWhereInput.fromJson(Map<String, dynamic> json) =>
      _$AnimalWhereInputFromJson(json);

  final Iterable<AnimalWhereInput>? AND;

  final Iterable<AnimalWhereInput>? OR;

  final Iterable<AnimalWhereInput>? NOT;

  final IntFilter? codAnimal;

  final IntFilter? codProdLeite;

  final IntFilter? codCategoria;

  final StringFilter? nome;

  final DateTimeFilter? dataNascimento;

  final StringFilter? sexo;

  final StringFilter? raca;

  final IntFilter? idade;

  final StringFilter? formaManejo;

  final FloatNullableFilter? mediaLeite;

  final CategoriaRelationFilter? categoria;

  final ProdleiteRelationFilter? prodleite;

  final ItensvendaListRelationFilter? itensvenda;

  @override
  Map<String, dynamic> toJson() => _$AnimalWhereInputToJson(this);
}

@_i1.jsonSerializable
class AnimalOrderByWithRelationInput implements _i1.JsonSerializable {
  const AnimalOrderByWithRelationInput({
    this.codAnimal,
    this.codProdLeite,
    this.codCategoria,
    this.nome,
    this.dataNascimento,
    this.sexo,
    this.raca,
    this.idade,
    this.formaManejo,
    this.mediaLeite,
    this.categoria,
    this.prodleite,
    this.itensvenda,
  });

  factory AnimalOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$AnimalOrderByWithRelationInputFromJson(json);

  final SortOrder? codAnimal;

  final SortOrder? codProdLeite;

  final SortOrder? codCategoria;

  final SortOrder? nome;

  final SortOrder? dataNascimento;

  final SortOrder? sexo;

  final SortOrder? raca;

  final SortOrder? idade;

  final SortOrder? formaManejo;

  final SortOrder? mediaLeite;

  final CategoriaOrderByWithRelationInput? categoria;

  final ProdleiteOrderByWithRelationInput? prodleite;

  final ItensvendaOrderByRelationAggregateInput? itensvenda;

  @override
  Map<String, dynamic> toJson() => _$AnimalOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class AnimalWhereUniqueInput implements _i1.JsonSerializable {
  const AnimalWhereUniqueInput({this.codAnimal});

  factory AnimalWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$AnimalWhereUniqueInputFromJson(json);

  final int? codAnimal;

  @override
  Map<String, dynamic> toJson() => _$AnimalWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class AnimalOrderByWithAggregationInput implements _i1.JsonSerializable {
  const AnimalOrderByWithAggregationInput({
    this.codAnimal,
    this.codProdLeite,
    this.codCategoria,
    this.nome,
    this.dataNascimento,
    this.sexo,
    this.raca,
    this.idade,
    this.formaManejo,
    this.mediaLeite,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory AnimalOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalOrderByWithAggregationInputFromJson(json);

  final SortOrder? codAnimal;

  final SortOrder? codProdLeite;

  final SortOrder? codCategoria;

  final SortOrder? nome;

  final SortOrder? dataNascimento;

  final SortOrder? sexo;

  final SortOrder? raca;

  final SortOrder? idade;

  final SortOrder? formaManejo;

  final SortOrder? mediaLeite;

  @JsonKey(name: r'_count')
  final AnimalCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final AnimalAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final AnimalMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final AnimalMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final AnimalSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class AnimalScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const AnimalScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.codAnimal,
    this.codProdLeite,
    this.codCategoria,
    this.nome,
    this.dataNascimento,
    this.sexo,
    this.raca,
    this.idade,
    this.formaManejo,
    this.mediaLeite,
  });

  factory AnimalScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<AnimalScalarWhereWithAggregatesInput>? AND;

  final Iterable<AnimalScalarWhereWithAggregatesInput>? OR;

  final Iterable<AnimalScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? codAnimal;

  final IntWithAggregatesFilter? codProdLeite;

  final IntWithAggregatesFilter? codCategoria;

  final StringWithAggregatesFilter? nome;

  final DateTimeWithAggregatesFilter? dataNascimento;

  final StringWithAggregatesFilter? sexo;

  final StringWithAggregatesFilter? raca;

  final IntWithAggregatesFilter? idade;

  final StringWithAggregatesFilter? formaManejo;

  final FloatNullableWithAggregatesFilter? mediaLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class CategoriaWhereInput implements _i1.JsonSerializable {
  const CategoriaWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.codCategoria,
    this.tipo,
    this.animal,
  });

  factory CategoriaWhereInput.fromJson(Map<String, dynamic> json) =>
      _$CategoriaWhereInputFromJson(json);

  final Iterable<CategoriaWhereInput>? AND;

  final Iterable<CategoriaWhereInput>? OR;

  final Iterable<CategoriaWhereInput>? NOT;

  final IntFilter? codCategoria;

  final StringFilter? tipo;

  final AnimalListRelationFilter? animal;

  @override
  Map<String, dynamic> toJson() => _$CategoriaWhereInputToJson(this);
}

@_i1.jsonSerializable
class CategoriaOrderByWithRelationInput implements _i1.JsonSerializable {
  const CategoriaOrderByWithRelationInput({
    this.codCategoria,
    this.tipo,
    this.animal,
  });

  factory CategoriaOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoriaOrderByWithRelationInputFromJson(json);

  final SortOrder? codCategoria;

  final SortOrder? tipo;

  final AnimalOrderByRelationAggregateInput? animal;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoriaOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class CategoriaWhereUniqueInput implements _i1.JsonSerializable {
  const CategoriaWhereUniqueInput({this.codCategoria});

  factory CategoriaWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$CategoriaWhereUniqueInputFromJson(json);

  final int? codCategoria;

  @override
  Map<String, dynamic> toJson() => _$CategoriaWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class CategoriaOrderByWithAggregationInput implements _i1.JsonSerializable {
  const CategoriaOrderByWithAggregationInput({
    this.codCategoria,
    this.tipo,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory CategoriaOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoriaOrderByWithAggregationInputFromJson(json);

  final SortOrder? codCategoria;

  final SortOrder? tipo;

  @JsonKey(name: r'_count')
  final CategoriaCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final CategoriaAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final CategoriaMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final CategoriaMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final CategoriaSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoriaOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class CategoriaScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const CategoriaScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.codCategoria,
    this.tipo,
  });

  factory CategoriaScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoriaScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<CategoriaScalarWhereWithAggregatesInput>? AND;

  final Iterable<CategoriaScalarWhereWithAggregatesInput>? OR;

  final Iterable<CategoriaScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? codCategoria;

  final StringWithAggregatesFilter? tipo;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoriaScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class CompradorWhereInput implements _i1.JsonSerializable {
  const CompradorWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.codComprador,
    this.nome,
    this.telefone,
    this.endereco,
    this.vendaanimal,
    this.vendaleite,
  });

  factory CompradorWhereInput.fromJson(Map<String, dynamic> json) =>
      _$CompradorWhereInputFromJson(json);

  final Iterable<CompradorWhereInput>? AND;

  final Iterable<CompradorWhereInput>? OR;

  final Iterable<CompradorWhereInput>? NOT;

  final IntFilter? codComprador;

  final StringFilter? nome;

  final StringFilter? telefone;

  final StringFilter? endereco;

  final VendaanimalListRelationFilter? vendaanimal;

  final VendaleiteListRelationFilter? vendaleite;

  @override
  Map<String, dynamic> toJson() => _$CompradorWhereInputToJson(this);
}

@_i1.jsonSerializable
class CompradorOrderByWithRelationInput implements _i1.JsonSerializable {
  const CompradorOrderByWithRelationInput({
    this.codComprador,
    this.nome,
    this.telefone,
    this.endereco,
    this.vendaanimal,
    this.vendaleite,
  });

  factory CompradorOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$CompradorOrderByWithRelationInputFromJson(json);

  final SortOrder? codComprador;

  final SortOrder? nome;

  final SortOrder? telefone;

  final SortOrder? endereco;

  final VendaanimalOrderByRelationAggregateInput? vendaanimal;

  final VendaleiteOrderByRelationAggregateInput? vendaleite;

  @override
  Map<String, dynamic> toJson() =>
      _$CompradorOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class CompradorWhereUniqueInput implements _i1.JsonSerializable {
  const CompradorWhereUniqueInput({this.codComprador});

  factory CompradorWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$CompradorWhereUniqueInputFromJson(json);

  final int? codComprador;

  @override
  Map<String, dynamic> toJson() => _$CompradorWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class CompradorOrderByWithAggregationInput implements _i1.JsonSerializable {
  const CompradorOrderByWithAggregationInput({
    this.codComprador,
    this.nome,
    this.telefone,
    this.endereco,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory CompradorOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$CompradorOrderByWithAggregationInputFromJson(json);

  final SortOrder? codComprador;

  final SortOrder? nome;

  final SortOrder? telefone;

  final SortOrder? endereco;

  @JsonKey(name: r'_count')
  final CompradorCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final CompradorAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final CompradorMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final CompradorMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final CompradorSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$CompradorOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class CompradorScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const CompradorScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.codComprador,
    this.nome,
    this.telefone,
    this.endereco,
  });

  factory CompradorScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$CompradorScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<CompradorScalarWhereWithAggregatesInput>? AND;

  final Iterable<CompradorScalarWhereWithAggregatesInput>? OR;

  final Iterable<CompradorScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? codComprador;

  final StringWithAggregatesFilter? nome;

  final StringWithAggregatesFilter? telefone;

  final StringWithAggregatesFilter? endereco;

  @override
  Map<String, dynamic> toJson() =>
      _$CompradorScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaWhereInput implements _i1.JsonSerializable {
  const ItensvendaWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.codItensVenda,
    this.codVendaAnimal,
    this.codAnimal,
    this.quantidade,
    this.valorUnitario,
    this.valorTotalItemAnimal,
    this.animal,
    this.vendaanimal,
  });

  factory ItensvendaWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ItensvendaWhereInputFromJson(json);

  final Iterable<ItensvendaWhereInput>? AND;

  final Iterable<ItensvendaWhereInput>? OR;

  final Iterable<ItensvendaWhereInput>? NOT;

  final IntFilter? codItensVenda;

  final IntFilter? codVendaAnimal;

  final IntFilter? codAnimal;

  final IntFilter? quantidade;

  final FloatFilter? valorUnitario;

  final FloatFilter? valorTotalItemAnimal;

  final AnimalRelationFilter? animal;

  final VendaanimalRelationFilter? vendaanimal;

  @override
  Map<String, dynamic> toJson() => _$ItensvendaWhereInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaOrderByWithRelationInput implements _i1.JsonSerializable {
  const ItensvendaOrderByWithRelationInput({
    this.codItensVenda,
    this.codVendaAnimal,
    this.codAnimal,
    this.quantidade,
    this.valorUnitario,
    this.valorTotalItemAnimal,
    this.animal,
    this.vendaanimal,
  });

  factory ItensvendaOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaOrderByWithRelationInputFromJson(json);

  final SortOrder? codItensVenda;

  final SortOrder? codVendaAnimal;

  final SortOrder? codAnimal;

  final SortOrder? quantidade;

  final SortOrder? valorUnitario;

  final SortOrder? valorTotalItemAnimal;

  final AnimalOrderByWithRelationInput? animal;

  final VendaanimalOrderByWithRelationInput? vendaanimal;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaWhereUniqueInput implements _i1.JsonSerializable {
  const ItensvendaWhereUniqueInput({this.codItensVendaCodVendaAnimalCodAnimal});

  factory ItensvendaWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$ItensvendaWhereUniqueInputFromJson(json);

  @JsonKey(name: r'codItensVenda_codVendaAnimal_codAnimal')
  final ItensvendaCodItensVendaCodVendaAnimalCodAnimalCompoundUniqueInput?
      codItensVendaCodVendaAnimalCodAnimal;

  @override
  Map<String, dynamic> toJson() => _$ItensvendaWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaOrderByWithAggregationInput implements _i1.JsonSerializable {
  const ItensvendaOrderByWithAggregationInput({
    this.codItensVenda,
    this.codVendaAnimal,
    this.codAnimal,
    this.quantidade,
    this.valorUnitario,
    this.valorTotalItemAnimal,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory ItensvendaOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaOrderByWithAggregationInputFromJson(json);

  final SortOrder? codItensVenda;

  final SortOrder? codVendaAnimal;

  final SortOrder? codAnimal;

  final SortOrder? quantidade;

  final SortOrder? valorUnitario;

  final SortOrder? valorTotalItemAnimal;

  @JsonKey(name: r'_count')
  final ItensvendaCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final ItensvendaAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final ItensvendaMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final ItensvendaMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final ItensvendaSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const ItensvendaScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.codItensVenda,
    this.codVendaAnimal,
    this.codAnimal,
    this.quantidade,
    this.valorUnitario,
    this.valorTotalItemAnimal,
  });

  factory ItensvendaScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<ItensvendaScalarWhereWithAggregatesInput>? AND;

  final Iterable<ItensvendaScalarWhereWithAggregatesInput>? OR;

  final Iterable<ItensvendaScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? codItensVenda;

  final IntWithAggregatesFilter? codVendaAnimal;

  final IntWithAggregatesFilter? codAnimal;

  final IntWithAggregatesFilter? quantidade;

  final FloatWithAggregatesFilter? valorUnitario;

  final FloatWithAggregatesFilter? valorTotalItemAnimal;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class ProdleiteWhereInput implements _i1.JsonSerializable {
  const ProdleiteWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.codProdLeite,
    this.dataProdLeite,
    this.qtdProdLeite,
    this.animal,
    this.vendaprodleite,
  });

  factory ProdleiteWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ProdleiteWhereInputFromJson(json);

  final Iterable<ProdleiteWhereInput>? AND;

  final Iterable<ProdleiteWhereInput>? OR;

  final Iterable<ProdleiteWhereInput>? NOT;

  final IntFilter? codProdLeite;

  final DateTimeFilter? dataProdLeite;

  final FloatFilter? qtdProdLeite;

  final AnimalListRelationFilter? animal;

  final VendaprodleiteListRelationFilter? vendaprodleite;

  @override
  Map<String, dynamic> toJson() => _$ProdleiteWhereInputToJson(this);
}

@_i1.jsonSerializable
class ProdleiteOrderByWithRelationInput implements _i1.JsonSerializable {
  const ProdleiteOrderByWithRelationInput({
    this.codProdLeite,
    this.dataProdLeite,
    this.qtdProdLeite,
    this.animal,
    this.vendaprodleite,
  });

  factory ProdleiteOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProdleiteOrderByWithRelationInputFromJson(json);

  final SortOrder? codProdLeite;

  final SortOrder? dataProdLeite;

  final SortOrder? qtdProdLeite;

  final AnimalOrderByRelationAggregateInput? animal;

  final VendaprodleiteOrderByRelationAggregateInput? vendaprodleite;

  @override
  Map<String, dynamic> toJson() =>
      _$ProdleiteOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class ProdleiteWhereUniqueInput implements _i1.JsonSerializable {
  const ProdleiteWhereUniqueInput({this.codProdLeite});

  factory ProdleiteWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$ProdleiteWhereUniqueInputFromJson(json);

  final int? codProdLeite;

  @override
  Map<String, dynamic> toJson() => _$ProdleiteWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class ProdleiteOrderByWithAggregationInput implements _i1.JsonSerializable {
  const ProdleiteOrderByWithAggregationInput({
    this.codProdLeite,
    this.dataProdLeite,
    this.qtdProdLeite,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory ProdleiteOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProdleiteOrderByWithAggregationInputFromJson(json);

  final SortOrder? codProdLeite;

  final SortOrder? dataProdLeite;

  final SortOrder? qtdProdLeite;

  @JsonKey(name: r'_count')
  final ProdleiteCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final ProdleiteAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final ProdleiteMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final ProdleiteMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final ProdleiteSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$ProdleiteOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class ProdleiteScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const ProdleiteScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.codProdLeite,
    this.dataProdLeite,
    this.qtdProdLeite,
  });

  factory ProdleiteScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProdleiteScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<ProdleiteScalarWhereWithAggregatesInput>? AND;

  final Iterable<ProdleiteScalarWhereWithAggregatesInput>? OR;

  final Iterable<ProdleiteScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? codProdLeite;

  final DateTimeWithAggregatesFilter? dataProdLeite;

  final FloatWithAggregatesFilter? qtdProdLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$ProdleiteScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalWhereInput implements _i1.JsonSerializable {
  const VendaanimalWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.codVendaAnimal,
    this.codComprador,
    this.dataVendaAnimal,
    this.valorTotalAnimal,
    this.itensvenda,
    this.comprador,
  });

  factory VendaanimalWhereInput.fromJson(Map<String, dynamic> json) =>
      _$VendaanimalWhereInputFromJson(json);

  final Iterable<VendaanimalWhereInput>? AND;

  final Iterable<VendaanimalWhereInput>? OR;

  final Iterable<VendaanimalWhereInput>? NOT;

  final IntFilter? codVendaAnimal;

  final IntFilter? codComprador;

  final DateTimeFilter? dataVendaAnimal;

  final FloatFilter? valorTotalAnimal;

  final ItensvendaListRelationFilter? itensvenda;

  final CompradorRelationFilter? comprador;

  @override
  Map<String, dynamic> toJson() => _$VendaanimalWhereInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalOrderByWithRelationInput implements _i1.JsonSerializable {
  const VendaanimalOrderByWithRelationInput({
    this.codVendaAnimal,
    this.codComprador,
    this.dataVendaAnimal,
    this.valorTotalAnimal,
    this.itensvenda,
    this.comprador,
  });

  factory VendaanimalOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalOrderByWithRelationInputFromJson(json);

  final SortOrder? codVendaAnimal;

  final SortOrder? codComprador;

  final SortOrder? dataVendaAnimal;

  final SortOrder? valorTotalAnimal;

  final ItensvendaOrderByRelationAggregateInput? itensvenda;

  final CompradorOrderByWithRelationInput? comprador;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalWhereUniqueInput implements _i1.JsonSerializable {
  const VendaanimalWhereUniqueInput({this.codVendaAnimal});

  factory VendaanimalWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$VendaanimalWhereUniqueInputFromJson(json);

  final int? codVendaAnimal;

  @override
  Map<String, dynamic> toJson() => _$VendaanimalWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalOrderByWithAggregationInput implements _i1.JsonSerializable {
  const VendaanimalOrderByWithAggregationInput({
    this.codVendaAnimal,
    this.codComprador,
    this.dataVendaAnimal,
    this.valorTotalAnimal,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory VendaanimalOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalOrderByWithAggregationInputFromJson(json);

  final SortOrder? codVendaAnimal;

  final SortOrder? codComprador;

  final SortOrder? dataVendaAnimal;

  final SortOrder? valorTotalAnimal;

  @JsonKey(name: r'_count')
  final VendaanimalCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final VendaanimalAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final VendaanimalMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final VendaanimalMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final VendaanimalSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalScalarWhereWithAggregatesInput
    implements _i1.JsonSerializable {
  const VendaanimalScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.codVendaAnimal,
    this.codComprador,
    this.dataVendaAnimal,
    this.valorTotalAnimal,
  });

  factory VendaanimalScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<VendaanimalScalarWhereWithAggregatesInput>? AND;

  final Iterable<VendaanimalScalarWhereWithAggregatesInput>? OR;

  final Iterable<VendaanimalScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? codVendaAnimal;

  final IntWithAggregatesFilter? codComprador;

  final DateTimeWithAggregatesFilter? dataVendaAnimal;

  final FloatWithAggregatesFilter? valorTotalAnimal;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteWhereInput implements _i1.JsonSerializable {
  const VendaleiteWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.codVendaLeite,
    this.codComprador,
    this.dataVendaLeite,
    this.valorTotalLeite,
    this.comprador,
    this.vendaprodleite,
  });

  factory VendaleiteWhereInput.fromJson(Map<String, dynamic> json) =>
      _$VendaleiteWhereInputFromJson(json);

  final Iterable<VendaleiteWhereInput>? AND;

  final Iterable<VendaleiteWhereInput>? OR;

  final Iterable<VendaleiteWhereInput>? NOT;

  final IntFilter? codVendaLeite;

  final IntFilter? codComprador;

  final DateTimeFilter? dataVendaLeite;

  final FloatFilter? valorTotalLeite;

  final CompradorRelationFilter? comprador;

  final VendaprodleiteListRelationFilter? vendaprodleite;

  @override
  Map<String, dynamic> toJson() => _$VendaleiteWhereInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteOrderByWithRelationInput implements _i1.JsonSerializable {
  const VendaleiteOrderByWithRelationInput({
    this.codVendaLeite,
    this.codComprador,
    this.dataVendaLeite,
    this.valorTotalLeite,
    this.comprador,
    this.vendaprodleite,
  });

  factory VendaleiteOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteOrderByWithRelationInputFromJson(json);

  final SortOrder? codVendaLeite;

  final SortOrder? codComprador;

  final SortOrder? dataVendaLeite;

  final SortOrder? valorTotalLeite;

  final CompradorOrderByWithRelationInput? comprador;

  final VendaprodleiteOrderByRelationAggregateInput? vendaprodleite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteWhereUniqueInput implements _i1.JsonSerializable {
  const VendaleiteWhereUniqueInput({this.codVendaLeite});

  factory VendaleiteWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$VendaleiteWhereUniqueInputFromJson(json);

  final int? codVendaLeite;

  @override
  Map<String, dynamic> toJson() => _$VendaleiteWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteOrderByWithAggregationInput implements _i1.JsonSerializable {
  const VendaleiteOrderByWithAggregationInput({
    this.codVendaLeite,
    this.codComprador,
    this.dataVendaLeite,
    this.valorTotalLeite,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory VendaleiteOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteOrderByWithAggregationInputFromJson(json);

  final SortOrder? codVendaLeite;

  final SortOrder? codComprador;

  final SortOrder? dataVendaLeite;

  final SortOrder? valorTotalLeite;

  @JsonKey(name: r'_count')
  final VendaleiteCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final VendaleiteAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final VendaleiteMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final VendaleiteMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final VendaleiteSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const VendaleiteScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.codVendaLeite,
    this.codComprador,
    this.dataVendaLeite,
    this.valorTotalLeite,
  });

  factory VendaleiteScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<VendaleiteScalarWhereWithAggregatesInput>? AND;

  final Iterable<VendaleiteScalarWhereWithAggregatesInput>? OR;

  final Iterable<VendaleiteScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? codVendaLeite;

  final IntWithAggregatesFilter? codComprador;

  final DateTimeWithAggregatesFilter? dataVendaLeite;

  final FloatWithAggregatesFilter? valorTotalLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteWhereInput implements _i1.JsonSerializable {
  const VendaprodleiteWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.codVendaProdLeite,
    this.codVendaLeite,
    this.codProdLeite,
    this.qtdLeite,
    this.valorLitro,
    this.valorTotalItemLeite,
    this.prodleite,
    this.vendaleite,
  });

  factory VendaprodleiteWhereInput.fromJson(Map<String, dynamic> json) =>
      _$VendaprodleiteWhereInputFromJson(json);

  final Iterable<VendaprodleiteWhereInput>? AND;

  final Iterable<VendaprodleiteWhereInput>? OR;

  final Iterable<VendaprodleiteWhereInput>? NOT;

  final IntFilter? codVendaProdLeite;

  final IntFilter? codVendaLeite;

  final IntFilter? codProdLeite;

  final FloatFilter? qtdLeite;

  final FloatFilter? valorLitro;

  final FloatFilter? valorTotalItemLeite;

  final ProdleiteRelationFilter? prodleite;

  final VendaleiteRelationFilter? vendaleite;

  @override
  Map<String, dynamic> toJson() => _$VendaprodleiteWhereInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteOrderByWithRelationInput implements _i1.JsonSerializable {
  const VendaprodleiteOrderByWithRelationInput({
    this.codVendaProdLeite,
    this.codVendaLeite,
    this.codProdLeite,
    this.qtdLeite,
    this.valorLitro,
    this.valorTotalItemLeite,
    this.prodleite,
    this.vendaleite,
  });

  factory VendaprodleiteOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteOrderByWithRelationInputFromJson(json);

  final SortOrder? codVendaProdLeite;

  final SortOrder? codVendaLeite;

  final SortOrder? codProdLeite;

  final SortOrder? qtdLeite;

  final SortOrder? valorLitro;

  final SortOrder? valorTotalItemLeite;

  final ProdleiteOrderByWithRelationInput? prodleite;

  final VendaleiteOrderByWithRelationInput? vendaleite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteWhereUniqueInput implements _i1.JsonSerializable {
  const VendaprodleiteWhereUniqueInput(
      {this.codVendaProdLeiteCodVendaLeiteCodProdLeite});

  factory VendaprodleiteWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$VendaprodleiteWhereUniqueInputFromJson(json);

  @JsonKey(name: r'codVendaProdLeite_codVendaLeite_codProdLeite')
  final VendaprodleiteCodVendaProdLeiteCodVendaLeiteCodProdLeiteCompoundUniqueInput?
      codVendaProdLeiteCodVendaLeiteCodProdLeite;

  @override
  Map<String, dynamic> toJson() => _$VendaprodleiteWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteOrderByWithAggregationInput
    implements _i1.JsonSerializable {
  const VendaprodleiteOrderByWithAggregationInput({
    this.codVendaProdLeite,
    this.codVendaLeite,
    this.codProdLeite,
    this.qtdLeite,
    this.valorLitro,
    this.valorTotalItemLeite,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory VendaprodleiteOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteOrderByWithAggregationInputFromJson(json);

  final SortOrder? codVendaProdLeite;

  final SortOrder? codVendaLeite;

  final SortOrder? codProdLeite;

  final SortOrder? qtdLeite;

  final SortOrder? valorLitro;

  final SortOrder? valorTotalItemLeite;

  @JsonKey(name: r'_count')
  final VendaprodleiteCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final VendaprodleiteAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final VendaprodleiteMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final VendaprodleiteMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final VendaprodleiteSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteScalarWhereWithAggregatesInput
    implements _i1.JsonSerializable {
  const VendaprodleiteScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.codVendaProdLeite,
    this.codVendaLeite,
    this.codProdLeite,
    this.qtdLeite,
    this.valorLitro,
    this.valorTotalItemLeite,
  });

  factory VendaprodleiteScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<VendaprodleiteScalarWhereWithAggregatesInput>? AND;

  final Iterable<VendaprodleiteScalarWhereWithAggregatesInput>? OR;

  final Iterable<VendaprodleiteScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? codVendaProdLeite;

  final IntWithAggregatesFilter? codVendaLeite;

  final IntWithAggregatesFilter? codProdLeite;

  final FloatWithAggregatesFilter? qtdLeite;

  final FloatWithAggregatesFilter? valorLitro;

  final FloatWithAggregatesFilter? valorTotalItemLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class AnimalCreateInput implements _i1.JsonSerializable {
  const AnimalCreateInput({
    required this.codAnimal,
    required this.nome,
    required this.dataNascimento,
    required this.sexo,
    required this.raca,
    required this.idade,
    required this.formaManejo,
    this.mediaLeite,
    //required this.categoria,
    //required this.prodleite,
    this.itensvenda,
  });

  factory AnimalCreateInput.fromJson(Map<String, dynamic> json) =>
      _$AnimalCreateInputFromJson(json);

  final int codAnimal;

  final String nome;

  final DateTime dataNascimento;

  final String sexo;

  final String raca;

  final int idade;

  final String formaManejo;

  final double? mediaLeite;

  //final CategoriaCreateNestedOneWithoutAnimalInput categoria;

  //final ProdleiteCreateNestedOneWithoutAnimalInput prodleite;

  final ItensvendaCreateNestedManyWithoutAnimalInput? itensvenda;

  @override
  Map<String, dynamic> toJson() => _$AnimalCreateInputToJson(this);
}

@_i1.jsonSerializable
class AnimalUncheckedCreateInput implements _i1.JsonSerializable {
  const AnimalUncheckedCreateInput({
    required this.codAnimal,
    required this.codProdLeite,
    required this.codCategoria,
    required this.nome,
    required this.dataNascimento,
    required this.sexo,
    required this.raca,
    required this.idade,
    required this.formaManejo,
    this.mediaLeite,
    this.itensvenda,
  });

  factory AnimalUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$AnimalUncheckedCreateInputFromJson(json);

  final int codAnimal;

  final int codProdLeite;

  final int codCategoria;

  final String nome;

  final DateTime dataNascimento;

  final String sexo;

  final String raca;

  final int idade;

  final String formaManejo;

  final double? mediaLeite;

  final ItensvendaUncheckedCreateNestedManyWithoutAnimalInput? itensvenda;

  @override
  Map<String, dynamic> toJson() => _$AnimalUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class AnimalUpdateInput implements _i1.JsonSerializable {
  const AnimalUpdateInput({
    this.codAnimal,
    this.nome,
    this.dataNascimento,
    this.sexo,
    this.raca,
    this.idade,
    this.formaManejo,
    this.mediaLeite,
    this.categoria,
    this.prodleite,
    this.itensvenda,
  });

  factory AnimalUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$AnimalUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? codAnimal;

  final StringFieldUpdateOperationsInput? nome;

  final DateTimeFieldUpdateOperationsInput? dataNascimento;

  final StringFieldUpdateOperationsInput? sexo;

  final StringFieldUpdateOperationsInput? raca;

  final IntFieldUpdateOperationsInput? idade;

  final StringFieldUpdateOperationsInput? formaManejo;

  final NullableFloatFieldUpdateOperationsInput? mediaLeite;

  final CategoriaUpdateOneRequiredWithoutAnimalNestedInput? categoria;

  final ProdleiteUpdateOneRequiredWithoutAnimalNestedInput? prodleite;

  final ItensvendaUpdateManyWithoutAnimalNestedInput? itensvenda;

  @override
  Map<String, dynamic> toJson() => _$AnimalUpdateInputToJson(this);
}

@_i1.jsonSerializable
class AnimalUncheckedUpdateInput implements _i1.JsonSerializable {
  const AnimalUncheckedUpdateInput({
    this.codAnimal,
    this.codProdLeite,
    this.codCategoria,
    this.nome,
    this.dataNascimento,
    this.sexo,
    this.raca,
    this.idade,
    this.formaManejo,
    this.mediaLeite,
    this.itensvenda,
  });

  factory AnimalUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$AnimalUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? codAnimal;

  final IntFieldUpdateOperationsInput? codProdLeite;

  final IntFieldUpdateOperationsInput? codCategoria;

  final StringFieldUpdateOperationsInput? nome;

  final DateTimeFieldUpdateOperationsInput? dataNascimento;

  final StringFieldUpdateOperationsInput? sexo;

  final StringFieldUpdateOperationsInput? raca;

  final IntFieldUpdateOperationsInput? idade;

  final StringFieldUpdateOperationsInput? formaManejo;

  final NullableFloatFieldUpdateOperationsInput? mediaLeite;

  final ItensvendaUncheckedUpdateManyWithoutAnimalNestedInput? itensvenda;

  @override
  Map<String, dynamic> toJson() => _$AnimalUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class AnimalCreateManyInput implements _i1.JsonSerializable {
  const AnimalCreateManyInput({
    required this.codAnimal,
    required this.codProdLeite,
    required this.codCategoria,
    required this.nome,
    required this.dataNascimento,
    required this.sexo,
    required this.raca,
    required this.idade,
    required this.formaManejo,
    this.mediaLeite,
  });

  factory AnimalCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$AnimalCreateManyInputFromJson(json);

  final int codAnimal;

  final int codProdLeite;

  final int codCategoria;

  final String nome;

  final DateTime dataNascimento;

  final String sexo;

  final String raca;

  final int idade;

  final String formaManejo;

  final double? mediaLeite;

  @override
  Map<String, dynamic> toJson() => _$AnimalCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class AnimalUpdateManyMutationInput implements _i1.JsonSerializable {
  const AnimalUpdateManyMutationInput({
    this.codAnimal,
    this.nome,
    this.dataNascimento,
    this.sexo,
    this.raca,
    this.idade,
    this.formaManejo,
    this.mediaLeite,
  });

  factory AnimalUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$AnimalUpdateManyMutationInputFromJson(json);

  final IntFieldUpdateOperationsInput? codAnimal;

  final StringFieldUpdateOperationsInput? nome;

  final DateTimeFieldUpdateOperationsInput? dataNascimento;

  final StringFieldUpdateOperationsInput? sexo;

  final StringFieldUpdateOperationsInput? raca;

  final IntFieldUpdateOperationsInput? idade;

  final StringFieldUpdateOperationsInput? formaManejo;

  final NullableFloatFieldUpdateOperationsInput? mediaLeite;

  @override
  Map<String, dynamic> toJson() => _$AnimalUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class AnimalUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const AnimalUncheckedUpdateManyInput({
    this.codAnimal,
    this.codProdLeite,
    this.codCategoria,
    this.nome,
    this.dataNascimento,
    this.sexo,
    this.raca,
    this.idade,
    this.formaManejo,
    this.mediaLeite,
  });

  factory AnimalUncheckedUpdateManyInput.fromJson(Map<String, dynamic> json) =>
      _$AnimalUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? codAnimal;

  final IntFieldUpdateOperationsInput? codProdLeite;

  final IntFieldUpdateOperationsInput? codCategoria;

  final StringFieldUpdateOperationsInput? nome;

  final DateTimeFieldUpdateOperationsInput? dataNascimento;

  final StringFieldUpdateOperationsInput? sexo;

  final StringFieldUpdateOperationsInput? raca;

  final IntFieldUpdateOperationsInput? idade;

  final StringFieldUpdateOperationsInput? formaManejo;

  final NullableFloatFieldUpdateOperationsInput? mediaLeite;

  @override
  Map<String, dynamic> toJson() => _$AnimalUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class CategoriaCreateInput implements _i1.JsonSerializable {
  const CategoriaCreateInput({
    required this.codCategoria,
    required this.tipo,
    this.animal,
  });

  factory CategoriaCreateInput.fromJson(Map<String, dynamic> json) =>
      _$CategoriaCreateInputFromJson(json);

  final int codCategoria;

  final String tipo;

  final AnimalCreateNestedManyWithoutCategoriaInput? animal;

  @override
  Map<String, dynamic> toJson() => _$CategoriaCreateInputToJson(this);
}

@_i1.jsonSerializable
class CategoriaUncheckedCreateInput implements _i1.JsonSerializable {
  const CategoriaUncheckedCreateInput({
    required this.codCategoria,
    required this.tipo,
    this.animal,
  });

  factory CategoriaUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$CategoriaUncheckedCreateInputFromJson(json);

  final int codCategoria;

  final String tipo;

  final AnimalUncheckedCreateNestedManyWithoutCategoriaInput? animal;

  @override
  Map<String, dynamic> toJson() => _$CategoriaUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class CategoriaUpdateInput implements _i1.JsonSerializable {
  const CategoriaUpdateInput({
    this.codCategoria,
    this.tipo,
    this.animal,
  });

  factory CategoriaUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$CategoriaUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? codCategoria;

  final StringFieldUpdateOperationsInput? tipo;

  final AnimalUpdateManyWithoutCategoriaNestedInput? animal;

  @override
  Map<String, dynamic> toJson() => _$CategoriaUpdateInputToJson(this);
}

@_i1.jsonSerializable
class CategoriaUncheckedUpdateInput implements _i1.JsonSerializable {
  const CategoriaUncheckedUpdateInput({
    this.codCategoria,
    this.tipo,
    this.animal,
  });

  factory CategoriaUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$CategoriaUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? codCategoria;

  final StringFieldUpdateOperationsInput? tipo;

  final AnimalUncheckedUpdateManyWithoutCategoriaNestedInput? animal;

  @override
  Map<String, dynamic> toJson() => _$CategoriaUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class CategoriaCreateManyInput implements _i1.JsonSerializable {
  const CategoriaCreateManyInput({
    required this.codCategoria,
    required this.tipo,
  });

  factory CategoriaCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$CategoriaCreateManyInputFromJson(json);

  final int codCategoria;

  final String tipo;

  @override
  Map<String, dynamic> toJson() => _$CategoriaCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class CategoriaUpdateManyMutationInput implements _i1.JsonSerializable {
  const CategoriaUpdateManyMutationInput({
    this.codCategoria,
    this.tipo,
  });

  factory CategoriaUpdateManyMutationInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoriaUpdateManyMutationInputFromJson(json);

  final IntFieldUpdateOperationsInput? codCategoria;

  final StringFieldUpdateOperationsInput? tipo;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoriaUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class CategoriaUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const CategoriaUncheckedUpdateManyInput({
    this.codCategoria,
    this.tipo,
  });

  factory CategoriaUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoriaUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? codCategoria;

  final StringFieldUpdateOperationsInput? tipo;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoriaUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class CompradorCreateInput implements _i1.JsonSerializable {
  const CompradorCreateInput({
    required this.codComprador,
    required this.nome,
    required this.telefone,
    required this.endereco,
    this.vendaanimal,
    this.vendaleite,
  });

  factory CompradorCreateInput.fromJson(Map<String, dynamic> json) =>
      _$CompradorCreateInputFromJson(json);

  final int codComprador;

  final String nome;

  final String telefone;

  final String endereco;

  final VendaanimalCreateNestedManyWithoutCompradorInput? vendaanimal;

  final VendaleiteCreateNestedManyWithoutCompradorInput? vendaleite;

  @override
  Map<String, dynamic> toJson() => _$CompradorCreateInputToJson(this);
}

@_i1.jsonSerializable
class CompradorUncheckedCreateInput implements _i1.JsonSerializable {
  const CompradorUncheckedCreateInput({
    required this.codComprador,
    required this.nome,
    required this.telefone,
    required this.endereco,
    this.vendaanimal,
    this.vendaleite,
  });

  factory CompradorUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$CompradorUncheckedCreateInputFromJson(json);

  final int codComprador;

  final String nome;

  final String telefone;

  final String endereco;

  final VendaanimalUncheckedCreateNestedManyWithoutCompradorInput? vendaanimal;

  final VendaleiteUncheckedCreateNestedManyWithoutCompradorInput? vendaleite;

  @override
  Map<String, dynamic> toJson() => _$CompradorUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class CompradorUpdateInput implements _i1.JsonSerializable {
  const CompradorUpdateInput({
    this.codComprador,
    this.nome,
    this.telefone,
    this.endereco,
    this.vendaanimal,
    this.vendaleite,
  });

  factory CompradorUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$CompradorUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? codComprador;

  final StringFieldUpdateOperationsInput? nome;

  final StringFieldUpdateOperationsInput? telefone;

  final StringFieldUpdateOperationsInput? endereco;

  final VendaanimalUpdateManyWithoutCompradorNestedInput? vendaanimal;

  final VendaleiteUpdateManyWithoutCompradorNestedInput? vendaleite;

  @override
  Map<String, dynamic> toJson() => _$CompradorUpdateInputToJson(this);
}

@_i1.jsonSerializable
class CompradorUncheckedUpdateInput implements _i1.JsonSerializable {
  const CompradorUncheckedUpdateInput({
    this.codComprador,
    this.nome,
    this.telefone,
    this.endereco,
    this.vendaanimal,
    this.vendaleite,
  });

  factory CompradorUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$CompradorUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? codComprador;

  final StringFieldUpdateOperationsInput? nome;

  final StringFieldUpdateOperationsInput? telefone;

  final StringFieldUpdateOperationsInput? endereco;

  final VendaanimalUncheckedUpdateManyWithoutCompradorNestedInput? vendaanimal;

  final VendaleiteUncheckedUpdateManyWithoutCompradorNestedInput? vendaleite;

  @override
  Map<String, dynamic> toJson() => _$CompradorUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class CompradorCreateManyInput implements _i1.JsonSerializable {
  const CompradorCreateManyInput({
    required this.codComprador,
    required this.nome,
    required this.telefone,
    required this.endereco,
  });

  factory CompradorCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$CompradorCreateManyInputFromJson(json);

  final int codComprador;

  final String nome;

  final String telefone;

  final String endereco;

  @override
  Map<String, dynamic> toJson() => _$CompradorCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class CompradorUpdateManyMutationInput implements _i1.JsonSerializable {
  const CompradorUpdateManyMutationInput({
    this.codComprador,
    this.nome,
    this.telefone,
    this.endereco,
  });

  factory CompradorUpdateManyMutationInput.fromJson(
          Map<String, dynamic> json) =>
      _$CompradorUpdateManyMutationInputFromJson(json);

  final IntFieldUpdateOperationsInput? codComprador;

  final StringFieldUpdateOperationsInput? nome;

  final StringFieldUpdateOperationsInput? telefone;

  final StringFieldUpdateOperationsInput? endereco;

  @override
  Map<String, dynamic> toJson() =>
      _$CompradorUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class CompradorUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const CompradorUncheckedUpdateManyInput({
    this.codComprador,
    this.nome,
    this.telefone,
    this.endereco,
  });

  factory CompradorUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$CompradorUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? codComprador;

  final StringFieldUpdateOperationsInput? nome;

  final StringFieldUpdateOperationsInput? telefone;

  final StringFieldUpdateOperationsInput? endereco;

  @override
  Map<String, dynamic> toJson() =>
      _$CompradorUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaCreateInput implements _i1.JsonSerializable {
  const ItensvendaCreateInput({
    required this.codItensVenda,
    required this.quantidade,
    required this.valorUnitario,
    required this.valorTotalItemAnimal,
    required this.animal,
    required this.vendaanimal,
  });

  factory ItensvendaCreateInput.fromJson(Map<String, dynamic> json) =>
      _$ItensvendaCreateInputFromJson(json);

  final int codItensVenda;

  final int quantidade;

  final double valorUnitario;

  final double valorTotalItemAnimal;

  final AnimalCreateNestedOneWithoutItensvendaInput animal;

  final VendaanimalCreateNestedOneWithoutItensvendaInput vendaanimal;

  @override
  Map<String, dynamic> toJson() => _$ItensvendaCreateInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaUncheckedCreateInput implements _i1.JsonSerializable {
  const ItensvendaUncheckedCreateInput({
    required this.codItensVenda,
    required this.codVendaAnimal,
    required this.codAnimal,
    required this.quantidade,
    required this.valorUnitario,
    required this.valorTotalItemAnimal,
  });

  factory ItensvendaUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$ItensvendaUncheckedCreateInputFromJson(json);

  final int codItensVenda;

  final int codVendaAnimal;

  final int codAnimal;

  final int quantidade;

  final double valorUnitario;

  final double valorTotalItemAnimal;

  @override
  Map<String, dynamic> toJson() => _$ItensvendaUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaUpdateInput implements _i1.JsonSerializable {
  const ItensvendaUpdateInput({
    this.codItensVenda,
    this.quantidade,
    this.valorUnitario,
    this.valorTotalItemAnimal,
    this.animal,
    this.vendaanimal,
  });

  factory ItensvendaUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$ItensvendaUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? codItensVenda;

  final IntFieldUpdateOperationsInput? quantidade;

  final FloatFieldUpdateOperationsInput? valorUnitario;

  final FloatFieldUpdateOperationsInput? valorTotalItemAnimal;

  final AnimalUpdateOneRequiredWithoutItensvendaNestedInput? animal;

  final VendaanimalUpdateOneRequiredWithoutItensvendaNestedInput? vendaanimal;

  @override
  Map<String, dynamic> toJson() => _$ItensvendaUpdateInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaUncheckedUpdateInput implements _i1.JsonSerializable {
  const ItensvendaUncheckedUpdateInput({
    this.codItensVenda,
    this.codVendaAnimal,
    this.codAnimal,
    this.quantidade,
    this.valorUnitario,
    this.valorTotalItemAnimal,
  });

  factory ItensvendaUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$ItensvendaUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? codItensVenda;

  final IntFieldUpdateOperationsInput? codVendaAnimal;

  final IntFieldUpdateOperationsInput? codAnimal;

  final IntFieldUpdateOperationsInput? quantidade;

  final FloatFieldUpdateOperationsInput? valorUnitario;

  final FloatFieldUpdateOperationsInput? valorTotalItemAnimal;

  @override
  Map<String, dynamic> toJson() => _$ItensvendaUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaCreateManyInput implements _i1.JsonSerializable {
  const ItensvendaCreateManyInput({
    required this.codItensVenda,
    required this.codVendaAnimal,
    required this.codAnimal,
    required this.quantidade,
    required this.valorUnitario,
    required this.valorTotalItemAnimal,
  });

  factory ItensvendaCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$ItensvendaCreateManyInputFromJson(json);

  final int codItensVenda;

  final int codVendaAnimal;

  final int codAnimal;

  final int quantidade;

  final double valorUnitario;

  final double valorTotalItemAnimal;

  @override
  Map<String, dynamic> toJson() => _$ItensvendaCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaUpdateManyMutationInput implements _i1.JsonSerializable {
  const ItensvendaUpdateManyMutationInput({
    this.codItensVenda,
    this.quantidade,
    this.valorUnitario,
    this.valorTotalItemAnimal,
  });

  factory ItensvendaUpdateManyMutationInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaUpdateManyMutationInputFromJson(json);

  final IntFieldUpdateOperationsInput? codItensVenda;

  final IntFieldUpdateOperationsInput? quantidade;

  final FloatFieldUpdateOperationsInput? valorUnitario;

  final FloatFieldUpdateOperationsInput? valorTotalItemAnimal;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const ItensvendaUncheckedUpdateManyInput({
    this.codItensVenda,
    this.codVendaAnimal,
    this.codAnimal,
    this.quantidade,
    this.valorUnitario,
    this.valorTotalItemAnimal,
  });

  factory ItensvendaUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? codItensVenda;

  final IntFieldUpdateOperationsInput? codVendaAnimal;

  final IntFieldUpdateOperationsInput? codAnimal;

  final IntFieldUpdateOperationsInput? quantidade;

  final FloatFieldUpdateOperationsInput? valorUnitario;

  final FloatFieldUpdateOperationsInput? valorTotalItemAnimal;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class ProdleiteCreateInput implements _i1.JsonSerializable {
  const ProdleiteCreateInput({
    required this.codProdLeite,
    required this.dataProdLeite,
    required this.qtdProdLeite,
    this.animal,
    this.vendaprodleite,
  });

  factory ProdleiteCreateInput.fromJson(Map<String, dynamic> json) =>
      _$ProdleiteCreateInputFromJson(json);

  final int codProdLeite;

  final DateTime dataProdLeite;

  final double qtdProdLeite;

  final AnimalCreateNestedManyWithoutProdleiteInput? animal;

  final VendaprodleiteCreateNestedManyWithoutProdleiteInput? vendaprodleite;

  @override
  Map<String, dynamic> toJson() => _$ProdleiteCreateInputToJson(this);
}

@_i1.jsonSerializable
class ProdleiteUncheckedCreateInput implements _i1.JsonSerializable {
  const ProdleiteUncheckedCreateInput({
    required this.codProdLeite,
    required this.dataProdLeite,
    required this.qtdProdLeite,
    this.animal,
    this.vendaprodleite,
  });

  factory ProdleiteUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$ProdleiteUncheckedCreateInputFromJson(json);

  final int codProdLeite;

  final DateTime dataProdLeite;

  final double qtdProdLeite;

  final AnimalUncheckedCreateNestedManyWithoutProdleiteInput? animal;

  final VendaprodleiteUncheckedCreateNestedManyWithoutProdleiteInput?
      vendaprodleite;

  @override
  Map<String, dynamic> toJson() => _$ProdleiteUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class ProdleiteUpdateInput implements _i1.JsonSerializable {
  const ProdleiteUpdateInput({
    this.codProdLeite,
    this.dataProdLeite,
    this.qtdProdLeite,
    this.animal,
    this.vendaprodleite,
  });

  factory ProdleiteUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$ProdleiteUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? codProdLeite;

  final DateTimeFieldUpdateOperationsInput? dataProdLeite;

  final FloatFieldUpdateOperationsInput? qtdProdLeite;

  final AnimalUpdateManyWithoutProdleiteNestedInput? animal;

  final VendaprodleiteUpdateManyWithoutProdleiteNestedInput? vendaprodleite;

  @override
  Map<String, dynamic> toJson() => _$ProdleiteUpdateInputToJson(this);
}

@_i1.jsonSerializable
class ProdleiteUncheckedUpdateInput implements _i1.JsonSerializable {
  const ProdleiteUncheckedUpdateInput({
    this.codProdLeite,
    this.dataProdLeite,
    this.qtdProdLeite,
    this.animal,
    this.vendaprodleite,
  });

  factory ProdleiteUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$ProdleiteUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? codProdLeite;

  final DateTimeFieldUpdateOperationsInput? dataProdLeite;

  final FloatFieldUpdateOperationsInput? qtdProdLeite;

  final AnimalUncheckedUpdateManyWithoutProdleiteNestedInput? animal;

  final VendaprodleiteUncheckedUpdateManyWithoutProdleiteNestedInput?
      vendaprodleite;

  @override
  Map<String, dynamic> toJson() => _$ProdleiteUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class ProdleiteCreateManyInput implements _i1.JsonSerializable {
  const ProdleiteCreateManyInput({
    required this.codProdLeite,
    required this.dataProdLeite,
    required this.qtdProdLeite,
  });

  factory ProdleiteCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$ProdleiteCreateManyInputFromJson(json);

  final int codProdLeite;

  final DateTime dataProdLeite;

  final double qtdProdLeite;

  @override
  Map<String, dynamic> toJson() => _$ProdleiteCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class ProdleiteUpdateManyMutationInput implements _i1.JsonSerializable {
  const ProdleiteUpdateManyMutationInput({
    this.codProdLeite,
    this.dataProdLeite,
    this.qtdProdLeite,
  });

  factory ProdleiteUpdateManyMutationInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProdleiteUpdateManyMutationInputFromJson(json);

  final IntFieldUpdateOperationsInput? codProdLeite;

  final DateTimeFieldUpdateOperationsInput? dataProdLeite;

  final FloatFieldUpdateOperationsInput? qtdProdLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$ProdleiteUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class ProdleiteUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const ProdleiteUncheckedUpdateManyInput({
    this.codProdLeite,
    this.dataProdLeite,
    this.qtdProdLeite,
  });

  factory ProdleiteUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProdleiteUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? codProdLeite;

  final DateTimeFieldUpdateOperationsInput? dataProdLeite;

  final FloatFieldUpdateOperationsInput? qtdProdLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$ProdleiteUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalCreateInput implements _i1.JsonSerializable {
  const VendaanimalCreateInput({
    required this.codVendaAnimal,
    required this.dataVendaAnimal,
    required this.valorTotalAnimal,
    this.itensvenda,
    required this.comprador,
  });

  factory VendaanimalCreateInput.fromJson(Map<String, dynamic> json) =>
      _$VendaanimalCreateInputFromJson(json);

  final int codVendaAnimal;

  final DateTime dataVendaAnimal;

  final double valorTotalAnimal;

  final ItensvendaCreateNestedManyWithoutVendaanimalInput? itensvenda;

  final CompradorCreateNestedOneWithoutVendaanimalInput comprador;

  @override
  Map<String, dynamic> toJson() => _$VendaanimalCreateInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalUncheckedCreateInput implements _i1.JsonSerializable {
  const VendaanimalUncheckedCreateInput({
    required this.codVendaAnimal,
    required this.codComprador,
    required this.dataVendaAnimal,
    required this.valorTotalAnimal,
    this.itensvenda,
  });

  factory VendaanimalUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$VendaanimalUncheckedCreateInputFromJson(json);

  final int codVendaAnimal;

  final int codComprador;

  final DateTime dataVendaAnimal;

  final double valorTotalAnimal;

  final ItensvendaUncheckedCreateNestedManyWithoutVendaanimalInput? itensvenda;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalUpdateInput implements _i1.JsonSerializable {
  const VendaanimalUpdateInput({
    this.codVendaAnimal,
    this.dataVendaAnimal,
    this.valorTotalAnimal,
    this.itensvenda,
    this.comprador,
  });

  factory VendaanimalUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$VendaanimalUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? codVendaAnimal;

  final DateTimeFieldUpdateOperationsInput? dataVendaAnimal;

  final FloatFieldUpdateOperationsInput? valorTotalAnimal;

  final ItensvendaUpdateManyWithoutVendaanimalNestedInput? itensvenda;

  final CompradorUpdateOneRequiredWithoutVendaanimalNestedInput? comprador;

  @override
  Map<String, dynamic> toJson() => _$VendaanimalUpdateInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalUncheckedUpdateInput implements _i1.JsonSerializable {
  const VendaanimalUncheckedUpdateInput({
    this.codVendaAnimal,
    this.codComprador,
    this.dataVendaAnimal,
    this.valorTotalAnimal,
    this.itensvenda,
  });

  factory VendaanimalUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$VendaanimalUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? codVendaAnimal;

  final IntFieldUpdateOperationsInput? codComprador;

  final DateTimeFieldUpdateOperationsInput? dataVendaAnimal;

  final FloatFieldUpdateOperationsInput? valorTotalAnimal;

  final ItensvendaUncheckedUpdateManyWithoutVendaanimalNestedInput? itensvenda;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalCreateManyInput implements _i1.JsonSerializable {
  const VendaanimalCreateManyInput({
    required this.codVendaAnimal,
    required this.codComprador,
    required this.dataVendaAnimal,
    required this.valorTotalAnimal,
  });

  factory VendaanimalCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$VendaanimalCreateManyInputFromJson(json);

  final int codVendaAnimal;

  final int codComprador;

  final DateTime dataVendaAnimal;

  final double valorTotalAnimal;

  @override
  Map<String, dynamic> toJson() => _$VendaanimalCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalUpdateManyMutationInput implements _i1.JsonSerializable {
  const VendaanimalUpdateManyMutationInput({
    this.codVendaAnimal,
    this.dataVendaAnimal,
    this.valorTotalAnimal,
  });

  factory VendaanimalUpdateManyMutationInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalUpdateManyMutationInputFromJson(json);

  final IntFieldUpdateOperationsInput? codVendaAnimal;

  final DateTimeFieldUpdateOperationsInput? dataVendaAnimal;

  final FloatFieldUpdateOperationsInput? valorTotalAnimal;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const VendaanimalUncheckedUpdateManyInput({
    this.codVendaAnimal,
    this.codComprador,
    this.dataVendaAnimal,
    this.valorTotalAnimal,
  });

  factory VendaanimalUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? codVendaAnimal;

  final IntFieldUpdateOperationsInput? codComprador;

  final DateTimeFieldUpdateOperationsInput? dataVendaAnimal;

  final FloatFieldUpdateOperationsInput? valorTotalAnimal;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteCreateInput implements _i1.JsonSerializable {
  const VendaleiteCreateInput({
    required this.codVendaLeite,
    required this.dataVendaLeite,
    required this.valorTotalLeite,
    required this.comprador,
    this.vendaprodleite,
  });

  factory VendaleiteCreateInput.fromJson(Map<String, dynamic> json) =>
      _$VendaleiteCreateInputFromJson(json);

  final int codVendaLeite;

  final DateTime dataVendaLeite;

  final double valorTotalLeite;

  final CompradorCreateNestedOneWithoutVendaleiteInput comprador;

  final VendaprodleiteCreateNestedManyWithoutVendaleiteInput? vendaprodleite;

  @override
  Map<String, dynamic> toJson() => _$VendaleiteCreateInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteUncheckedCreateInput implements _i1.JsonSerializable {
  const VendaleiteUncheckedCreateInput({
    required this.codVendaLeite,
    required this.codComprador,
    required this.dataVendaLeite,
    required this.valorTotalLeite,
    this.vendaprodleite,
  });

  factory VendaleiteUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$VendaleiteUncheckedCreateInputFromJson(json);

  final int codVendaLeite;

  final int codComprador;

  final DateTime dataVendaLeite;

  final double valorTotalLeite;

  final VendaprodleiteUncheckedCreateNestedManyWithoutVendaleiteInput?
      vendaprodleite;

  @override
  Map<String, dynamic> toJson() => _$VendaleiteUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteUpdateInput implements _i1.JsonSerializable {
  const VendaleiteUpdateInput({
    this.codVendaLeite,
    this.dataVendaLeite,
    this.valorTotalLeite,
    this.comprador,
    this.vendaprodleite,
  });

  factory VendaleiteUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$VendaleiteUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? codVendaLeite;

  final DateTimeFieldUpdateOperationsInput? dataVendaLeite;

  final FloatFieldUpdateOperationsInput? valorTotalLeite;

  final CompradorUpdateOneRequiredWithoutVendaleiteNestedInput? comprador;

  final VendaprodleiteUpdateManyWithoutVendaleiteNestedInput? vendaprodleite;

  @override
  Map<String, dynamic> toJson() => _$VendaleiteUpdateInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteUncheckedUpdateInput implements _i1.JsonSerializable {
  const VendaleiteUncheckedUpdateInput({
    this.codVendaLeite,
    this.codComprador,
    this.dataVendaLeite,
    this.valorTotalLeite,
    this.vendaprodleite,
  });

  factory VendaleiteUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$VendaleiteUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? codVendaLeite;

  final IntFieldUpdateOperationsInput? codComprador;

  final DateTimeFieldUpdateOperationsInput? dataVendaLeite;

  final FloatFieldUpdateOperationsInput? valorTotalLeite;

  final VendaprodleiteUncheckedUpdateManyWithoutVendaleiteNestedInput?
      vendaprodleite;

  @override
  Map<String, dynamic> toJson() => _$VendaleiteUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteCreateManyInput implements _i1.JsonSerializable {
  const VendaleiteCreateManyInput({
    required this.codVendaLeite,
    required this.codComprador,
    required this.dataVendaLeite,
    required this.valorTotalLeite,
  });

  factory VendaleiteCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$VendaleiteCreateManyInputFromJson(json);

  final int codVendaLeite;

  final int codComprador;

  final DateTime dataVendaLeite;

  final double valorTotalLeite;

  @override
  Map<String, dynamic> toJson() => _$VendaleiteCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteUpdateManyMutationInput implements _i1.JsonSerializable {
  const VendaleiteUpdateManyMutationInput({
    this.codVendaLeite,
    this.dataVendaLeite,
    this.valorTotalLeite,
  });

  factory VendaleiteUpdateManyMutationInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteUpdateManyMutationInputFromJson(json);

  final IntFieldUpdateOperationsInput? codVendaLeite;

  final DateTimeFieldUpdateOperationsInput? dataVendaLeite;

  final FloatFieldUpdateOperationsInput? valorTotalLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const VendaleiteUncheckedUpdateManyInput({
    this.codVendaLeite,
    this.codComprador,
    this.dataVendaLeite,
    this.valorTotalLeite,
  });

  factory VendaleiteUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? codVendaLeite;

  final IntFieldUpdateOperationsInput? codComprador;

  final DateTimeFieldUpdateOperationsInput? dataVendaLeite;

  final FloatFieldUpdateOperationsInput? valorTotalLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteCreateInput implements _i1.JsonSerializable {
  const VendaprodleiteCreateInput({
    required this.codVendaProdLeite,
    required this.qtdLeite,
    required this.valorLitro,
    required this.valorTotalItemLeite,
    required this.prodleite,
    required this.vendaleite,
  });

  factory VendaprodleiteCreateInput.fromJson(Map<String, dynamic> json) =>
      _$VendaprodleiteCreateInputFromJson(json);

  final int codVendaProdLeite;

  final double qtdLeite;

  final double valorLitro;

  final double valorTotalItemLeite;

  final ProdleiteCreateNestedOneWithoutVendaprodleiteInput prodleite;

  final VendaleiteCreateNestedOneWithoutVendaprodleiteInput vendaleite;

  @override
  Map<String, dynamic> toJson() => _$VendaprodleiteCreateInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteUncheckedCreateInput implements _i1.JsonSerializable {
  const VendaprodleiteUncheckedCreateInput({
    required this.codVendaProdLeite,
    required this.codVendaLeite,
    required this.codProdLeite,
    required this.qtdLeite,
    required this.valorLitro,
    required this.valorTotalItemLeite,
  });

  factory VendaprodleiteUncheckedCreateInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteUncheckedCreateInputFromJson(json);

  final int codVendaProdLeite;

  final int codVendaLeite;

  final int codProdLeite;

  final double qtdLeite;

  final double valorLitro;

  final double valorTotalItemLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteUpdateInput implements _i1.JsonSerializable {
  const VendaprodleiteUpdateInput({
    this.codVendaProdLeite,
    this.qtdLeite,
    this.valorLitro,
    this.valorTotalItemLeite,
    this.prodleite,
    this.vendaleite,
  });

  factory VendaprodleiteUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$VendaprodleiteUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? codVendaProdLeite;

  final FloatFieldUpdateOperationsInput? qtdLeite;

  final FloatFieldUpdateOperationsInput? valorLitro;

  final FloatFieldUpdateOperationsInput? valorTotalItemLeite;

  final ProdleiteUpdateOneRequiredWithoutVendaprodleiteNestedInput? prodleite;

  final VendaleiteUpdateOneRequiredWithoutVendaprodleiteNestedInput? vendaleite;

  @override
  Map<String, dynamic> toJson() => _$VendaprodleiteUpdateInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteUncheckedUpdateInput implements _i1.JsonSerializable {
  const VendaprodleiteUncheckedUpdateInput({
    this.codVendaProdLeite,
    this.codVendaLeite,
    this.codProdLeite,
    this.qtdLeite,
    this.valorLitro,
    this.valorTotalItemLeite,
  });

  factory VendaprodleiteUncheckedUpdateInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? codVendaProdLeite;

  final IntFieldUpdateOperationsInput? codVendaLeite;

  final IntFieldUpdateOperationsInput? codProdLeite;

  final FloatFieldUpdateOperationsInput? qtdLeite;

  final FloatFieldUpdateOperationsInput? valorLitro;

  final FloatFieldUpdateOperationsInput? valorTotalItemLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteCreateManyInput implements _i1.JsonSerializable {
  const VendaprodleiteCreateManyInput({
    required this.codVendaProdLeite,
    required this.codVendaLeite,
    required this.codProdLeite,
    required this.qtdLeite,
    required this.valorLitro,
    required this.valorTotalItemLeite,
  });

  factory VendaprodleiteCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$VendaprodleiteCreateManyInputFromJson(json);

  final int codVendaProdLeite;

  final int codVendaLeite;

  final int codProdLeite;

  final double qtdLeite;

  final double valorLitro;

  final double valorTotalItemLeite;

  @override
  Map<String, dynamic> toJson() => _$VendaprodleiteCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteUpdateManyMutationInput implements _i1.JsonSerializable {
  const VendaprodleiteUpdateManyMutationInput({
    this.codVendaProdLeite,
    this.qtdLeite,
    this.valorLitro,
    this.valorTotalItemLeite,
  });

  factory VendaprodleiteUpdateManyMutationInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteUpdateManyMutationInputFromJson(json);

  final IntFieldUpdateOperationsInput? codVendaProdLeite;

  final FloatFieldUpdateOperationsInput? qtdLeite;

  final FloatFieldUpdateOperationsInput? valorLitro;

  final FloatFieldUpdateOperationsInput? valorTotalItemLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const VendaprodleiteUncheckedUpdateManyInput({
    this.codVendaProdLeite,
    this.codVendaLeite,
    this.codProdLeite,
    this.qtdLeite,
    this.valorLitro,
    this.valorTotalItemLeite,
  });

  factory VendaprodleiteUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? codVendaProdLeite;

  final IntFieldUpdateOperationsInput? codVendaLeite;

  final IntFieldUpdateOperationsInput? codProdLeite;

  final FloatFieldUpdateOperationsInput? qtdLeite;

  final FloatFieldUpdateOperationsInput? valorLitro;

  final FloatFieldUpdateOperationsInput? valorTotalItemLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class IntFilter implements _i1.JsonSerializable {
  const IntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory IntFilter.fromJson(Map<String, dynamic> json) =>
      _$IntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$IntFilterToJson(this);
}

@_i1.jsonSerializable
class StringFilter implements _i1.JsonSerializable {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory StringFilter.fromJson(Map<String, dynamic> json) =>
      _$StringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$StringFilterToJson(this);
}

@_i1.jsonSerializable
class DateTimeFilter implements _i1.JsonSerializable {
  const DateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory DateTimeFilter.fromJson(Map<String, dynamic> json) =>
      _$DateTimeFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeFilter? not;

  @override
  Map<String, dynamic> toJson() => _$DateTimeFilterToJson(this);
}

@_i1.jsonSerializable
class FloatNullableFilter implements _i1.JsonSerializable {
  const FloatNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory FloatNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$FloatNullableFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$FloatNullableFilterToJson(this);
}

@_i1.jsonSerializable
class CategoriaRelationFilter implements _i1.JsonSerializable {
  const CategoriaRelationFilter({
    this.$is,
    this.isNot,
  });

  factory CategoriaRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$CategoriaRelationFilterFromJson(json);

  @JsonKey(name: r'is')
  final CategoriaWhereInput? $is;

  final CategoriaWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => _$CategoriaRelationFilterToJson(this);
}

@_i1.jsonSerializable
class ProdleiteRelationFilter implements _i1.JsonSerializable {
  const ProdleiteRelationFilter({
    this.$is,
    this.isNot,
  });

  factory ProdleiteRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ProdleiteRelationFilterFromJson(json);

  @JsonKey(name: r'is')
  final ProdleiteWhereInput? $is;

  final ProdleiteWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => _$ProdleiteRelationFilterToJson(this);
}

@_i1.jsonSerializable
class ItensvendaListRelationFilter implements _i1.JsonSerializable {
  const ItensvendaListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory ItensvendaListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ItensvendaListRelationFilterFromJson(json);

  final ItensvendaWhereInput? every;

  final ItensvendaWhereInput? some;

  final ItensvendaWhereInput? none;

  @override
  Map<String, dynamic> toJson() => _$ItensvendaListRelationFilterToJson(this);
}

@_i1.jsonSerializable
class SortOrderInput implements _i1.JsonSerializable {
  const SortOrderInput({
    required this.sort,
    this.nulls,
  });

  factory SortOrderInput.fromJson(Map<String, dynamic> json) =>
      _$SortOrderInputFromJson(json);

  final SortOrder sort;

  final NullsOrder? nulls;

  @override
  Map<String, dynamic> toJson() => _$SortOrderInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaOrderByRelationAggregateInput implements _i1.JsonSerializable {
  const ItensvendaOrderByRelationAggregateInput({this.$count});

  factory ItensvendaOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: r'_count')
  final SortOrder? $count;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaOrderByRelationAggregateInputToJson(this);
}

@_i1.jsonSerializable
class AnimalCountOrderByAggregateInput implements _i1.JsonSerializable {
  const AnimalCountOrderByAggregateInput({
    this.codAnimal,
    this.codProdLeite,
    this.codCategoria,
    this.nome,
    this.dataNascimento,
    this.sexo,
    this.raca,
    this.idade,
    this.formaManejo,
    this.mediaLeite,
  });

  factory AnimalCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalCountOrderByAggregateInputFromJson(json);

  final SortOrder? codAnimal;

  final SortOrder? codProdLeite;

  final SortOrder? codCategoria;

  final SortOrder? nome;

  final SortOrder? dataNascimento;

  final SortOrder? sexo;

  final SortOrder? raca;

  final SortOrder? idade;

  final SortOrder? formaManejo;

  final SortOrder? mediaLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class AnimalAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const AnimalAvgOrderByAggregateInput({
    this.codAnimal,
    this.codProdLeite,
    this.codCategoria,
    this.idade,
    this.mediaLeite,
  });

  factory AnimalAvgOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$AnimalAvgOrderByAggregateInputFromJson(json);

  final SortOrder? codAnimal;

  final SortOrder? codProdLeite;

  final SortOrder? codCategoria;

  final SortOrder? idade;

  final SortOrder? mediaLeite;

  @override
  Map<String, dynamic> toJson() => _$AnimalAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class AnimalMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const AnimalMaxOrderByAggregateInput({
    this.codAnimal,
    this.codProdLeite,
    this.codCategoria,
    this.nome,
    this.dataNascimento,
    this.sexo,
    this.raca,
    this.idade,
    this.formaManejo,
    this.mediaLeite,
  });

  factory AnimalMaxOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$AnimalMaxOrderByAggregateInputFromJson(json);

  final SortOrder? codAnimal;

  final SortOrder? codProdLeite;

  final SortOrder? codCategoria;

  final SortOrder? nome;

  final SortOrder? dataNascimento;

  final SortOrder? sexo;

  final SortOrder? raca;

  final SortOrder? idade;

  final SortOrder? formaManejo;

  final SortOrder? mediaLeite;

  @override
  Map<String, dynamic> toJson() => _$AnimalMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class AnimalMinOrderByAggregateInput implements _i1.JsonSerializable {
  const AnimalMinOrderByAggregateInput({
    this.codAnimal,
    this.codProdLeite,
    this.codCategoria,
    this.nome,
    this.dataNascimento,
    this.sexo,
    this.raca,
    this.idade,
    this.formaManejo,
    this.mediaLeite,
  });

  factory AnimalMinOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$AnimalMinOrderByAggregateInputFromJson(json);

  final SortOrder? codAnimal;

  final SortOrder? codProdLeite;

  final SortOrder? codCategoria;

  final SortOrder? nome;

  final SortOrder? dataNascimento;

  final SortOrder? sexo;

  final SortOrder? raca;

  final SortOrder? idade;

  final SortOrder? formaManejo;

  final SortOrder? mediaLeite;

  @override
  Map<String, dynamic> toJson() => _$AnimalMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class AnimalSumOrderByAggregateInput implements _i1.JsonSerializable {
  const AnimalSumOrderByAggregateInput({
    this.codAnimal,
    this.codProdLeite,
    this.codCategoria,
    this.idade,
    this.mediaLeite,
  });

  factory AnimalSumOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$AnimalSumOrderByAggregateInputFromJson(json);

  final SortOrder? codAnimal;

  final SortOrder? codProdLeite;

  final SortOrder? codCategoria;

  final SortOrder? idade;

  final SortOrder? mediaLeite;

  @override
  Map<String, dynamic> toJson() => _$AnimalSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class IntWithAggregatesFilter implements _i1.JsonSerializable {
  const IntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory IntWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$IntWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$IntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class StringWithAggregatesFilter implements _i1.JsonSerializable {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory StringWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$StringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$StringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class DateTimeWithAggregatesFilter implements _i1.JsonSerializable {
  const DateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory DateTimeWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$DateTimeWithAggregatesFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedDateTimeFilter? $min;

  @JsonKey(name: r'_max')
  final NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$DateTimeWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class FloatNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const FloatNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory FloatNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$FloatNullableWithAggregatesFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatNullableFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedFloatNullableFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedFloatNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedFloatNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$FloatNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class AnimalListRelationFilter implements _i1.JsonSerializable {
  const AnimalListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory AnimalListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$AnimalListRelationFilterFromJson(json);

  final AnimalWhereInput? every;

  final AnimalWhereInput? some;

  final AnimalWhereInput? none;

  @override
  Map<String, dynamic> toJson() => _$AnimalListRelationFilterToJson(this);
}

@_i1.jsonSerializable
class AnimalOrderByRelationAggregateInput implements _i1.JsonSerializable {
  const AnimalOrderByRelationAggregateInput({this.$count});

  factory AnimalOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: r'_count')
  final SortOrder? $count;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalOrderByRelationAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CategoriaCountOrderByAggregateInput implements _i1.JsonSerializable {
  const CategoriaCountOrderByAggregateInput({
    this.codCategoria,
    this.tipo,
  });

  factory CategoriaCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoriaCountOrderByAggregateInputFromJson(json);

  final SortOrder? codCategoria;

  final SortOrder? tipo;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoriaCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CategoriaAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const CategoriaAvgOrderByAggregateInput({this.codCategoria});

  factory CategoriaAvgOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoriaAvgOrderByAggregateInputFromJson(json);

  final SortOrder? codCategoria;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoriaAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CategoriaMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const CategoriaMaxOrderByAggregateInput({
    this.codCategoria,
    this.tipo,
  });

  factory CategoriaMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoriaMaxOrderByAggregateInputFromJson(json);

  final SortOrder? codCategoria;

  final SortOrder? tipo;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoriaMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CategoriaMinOrderByAggregateInput implements _i1.JsonSerializable {
  const CategoriaMinOrderByAggregateInput({
    this.codCategoria,
    this.tipo,
  });

  factory CategoriaMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoriaMinOrderByAggregateInputFromJson(json);

  final SortOrder? codCategoria;

  final SortOrder? tipo;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoriaMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CategoriaSumOrderByAggregateInput implements _i1.JsonSerializable {
  const CategoriaSumOrderByAggregateInput({this.codCategoria});

  factory CategoriaSumOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoriaSumOrderByAggregateInputFromJson(json);

  final SortOrder? codCategoria;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoriaSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalListRelationFilter implements _i1.JsonSerializable {
  const VendaanimalListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory VendaanimalListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$VendaanimalListRelationFilterFromJson(json);

  final VendaanimalWhereInput? every;

  final VendaanimalWhereInput? some;

  final VendaanimalWhereInput? none;

  @override
  Map<String, dynamic> toJson() => _$VendaanimalListRelationFilterToJson(this);
}

@_i1.jsonSerializable
class VendaleiteListRelationFilter implements _i1.JsonSerializable {
  const VendaleiteListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory VendaleiteListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$VendaleiteListRelationFilterFromJson(json);

  final VendaleiteWhereInput? every;

  final VendaleiteWhereInput? some;

  final VendaleiteWhereInput? none;

  @override
  Map<String, dynamic> toJson() => _$VendaleiteListRelationFilterToJson(this);
}

@_i1.jsonSerializable
class VendaanimalOrderByRelationAggregateInput implements _i1.JsonSerializable {
  const VendaanimalOrderByRelationAggregateInput({this.$count});

  factory VendaanimalOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: r'_count')
  final SortOrder? $count;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalOrderByRelationAggregateInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteOrderByRelationAggregateInput implements _i1.JsonSerializable {
  const VendaleiteOrderByRelationAggregateInput({this.$count});

  factory VendaleiteOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: r'_count')
  final SortOrder? $count;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteOrderByRelationAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CompradorCountOrderByAggregateInput implements _i1.JsonSerializable {
  const CompradorCountOrderByAggregateInput({
    this.codComprador,
    this.nome,
    this.telefone,
    this.endereco,
  });

  factory CompradorCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$CompradorCountOrderByAggregateInputFromJson(json);

  final SortOrder? codComprador;

  final SortOrder? nome;

  final SortOrder? telefone;

  final SortOrder? endereco;

  @override
  Map<String, dynamic> toJson() =>
      _$CompradorCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CompradorAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const CompradorAvgOrderByAggregateInput({this.codComprador});

  factory CompradorAvgOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$CompradorAvgOrderByAggregateInputFromJson(json);

  final SortOrder? codComprador;

  @override
  Map<String, dynamic> toJson() =>
      _$CompradorAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CompradorMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const CompradorMaxOrderByAggregateInput({
    this.codComprador,
    this.nome,
    this.telefone,
    this.endereco,
  });

  factory CompradorMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$CompradorMaxOrderByAggregateInputFromJson(json);

  final SortOrder? codComprador;

  final SortOrder? nome;

  final SortOrder? telefone;

  final SortOrder? endereco;

  @override
  Map<String, dynamic> toJson() =>
      _$CompradorMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CompradorMinOrderByAggregateInput implements _i1.JsonSerializable {
  const CompradorMinOrderByAggregateInput({
    this.codComprador,
    this.nome,
    this.telefone,
    this.endereco,
  });

  factory CompradorMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$CompradorMinOrderByAggregateInputFromJson(json);

  final SortOrder? codComprador;

  final SortOrder? nome;

  final SortOrder? telefone;

  final SortOrder? endereco;

  @override
  Map<String, dynamic> toJson() =>
      _$CompradorMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CompradorSumOrderByAggregateInput implements _i1.JsonSerializable {
  const CompradorSumOrderByAggregateInput({this.codComprador});

  factory CompradorSumOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$CompradorSumOrderByAggregateInputFromJson(json);

  final SortOrder? codComprador;

  @override
  Map<String, dynamic> toJson() =>
      _$CompradorSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class FloatFilter implements _i1.JsonSerializable {
  const FloatFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory FloatFilter.fromJson(Map<String, dynamic> json) =>
      _$FloatFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatFilter? not;

  @override
  Map<String, dynamic> toJson() => _$FloatFilterToJson(this);
}

@_i1.jsonSerializable
class AnimalRelationFilter implements _i1.JsonSerializable {
  const AnimalRelationFilter({
    this.$is,
    this.isNot,
  });

  factory AnimalRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$AnimalRelationFilterFromJson(json);

  @JsonKey(name: r'is')
  final AnimalWhereInput? $is;

  final AnimalWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => _$AnimalRelationFilterToJson(this);
}

@_i1.jsonSerializable
class VendaanimalRelationFilter implements _i1.JsonSerializable {
  const VendaanimalRelationFilter({
    this.$is,
    this.isNot,
  });

  factory VendaanimalRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$VendaanimalRelationFilterFromJson(json);

  @JsonKey(name: r'is')
  final VendaanimalWhereInput? $is;

  final VendaanimalWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => _$VendaanimalRelationFilterToJson(this);
}

@_i1.jsonSerializable
class ItensvendaCodItensVendaCodVendaAnimalCodAnimalCompoundUniqueInput
    implements _i1.JsonSerializable {
  const ItensvendaCodItensVendaCodVendaAnimalCodAnimalCompoundUniqueInput({
    required this.codItensVenda,
    required this.codVendaAnimal,
    required this.codAnimal,
  });

  factory ItensvendaCodItensVendaCodVendaAnimalCodAnimalCompoundUniqueInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaCodItensVendaCodVendaAnimalCodAnimalCompoundUniqueInputFromJson(
          json);

  final int codItensVenda;

  final int codVendaAnimal;

  final int codAnimal;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaCodItensVendaCodVendaAnimalCodAnimalCompoundUniqueInputToJson(
          this);
}

@_i1.jsonSerializable
class ItensvendaCountOrderByAggregateInput implements _i1.JsonSerializable {
  const ItensvendaCountOrderByAggregateInput({
    this.codItensVenda,
    this.codVendaAnimal,
    this.codAnimal,
    this.quantidade,
    this.valorUnitario,
    this.valorTotalItemAnimal,
  });

  factory ItensvendaCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaCountOrderByAggregateInputFromJson(json);

  final SortOrder? codItensVenda;

  final SortOrder? codVendaAnimal;

  final SortOrder? codAnimal;

  final SortOrder? quantidade;

  final SortOrder? valorUnitario;

  final SortOrder? valorTotalItemAnimal;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const ItensvendaAvgOrderByAggregateInput({
    this.codItensVenda,
    this.codVendaAnimal,
    this.codAnimal,
    this.quantidade,
    this.valorUnitario,
    this.valorTotalItemAnimal,
  });

  factory ItensvendaAvgOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaAvgOrderByAggregateInputFromJson(json);

  final SortOrder? codItensVenda;

  final SortOrder? codVendaAnimal;

  final SortOrder? codAnimal;

  final SortOrder? quantidade;

  final SortOrder? valorUnitario;

  final SortOrder? valorTotalItemAnimal;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const ItensvendaMaxOrderByAggregateInput({
    this.codItensVenda,
    this.codVendaAnimal,
    this.codAnimal,
    this.quantidade,
    this.valorUnitario,
    this.valorTotalItemAnimal,
  });

  factory ItensvendaMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaMaxOrderByAggregateInputFromJson(json);

  final SortOrder? codItensVenda;

  final SortOrder? codVendaAnimal;

  final SortOrder? codAnimal;

  final SortOrder? quantidade;

  final SortOrder? valorUnitario;

  final SortOrder? valorTotalItemAnimal;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaMinOrderByAggregateInput implements _i1.JsonSerializable {
  const ItensvendaMinOrderByAggregateInput({
    this.codItensVenda,
    this.codVendaAnimal,
    this.codAnimal,
    this.quantidade,
    this.valorUnitario,
    this.valorTotalItemAnimal,
  });

  factory ItensvendaMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaMinOrderByAggregateInputFromJson(json);

  final SortOrder? codItensVenda;

  final SortOrder? codVendaAnimal;

  final SortOrder? codAnimal;

  final SortOrder? quantidade;

  final SortOrder? valorUnitario;

  final SortOrder? valorTotalItemAnimal;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaSumOrderByAggregateInput implements _i1.JsonSerializable {
  const ItensvendaSumOrderByAggregateInput({
    this.codItensVenda,
    this.codVendaAnimal,
    this.codAnimal,
    this.quantidade,
    this.valorUnitario,
    this.valorTotalItemAnimal,
  });

  factory ItensvendaSumOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaSumOrderByAggregateInputFromJson(json);

  final SortOrder? codItensVenda;

  final SortOrder? codVendaAnimal;

  final SortOrder? codAnimal;

  final SortOrder? quantidade;

  final SortOrder? valorUnitario;

  final SortOrder? valorTotalItemAnimal;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class FloatWithAggregatesFilter implements _i1.JsonSerializable {
  const FloatWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory FloatWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$FloatWithAggregatesFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedFloatFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedFloatFilter? $min;

  @JsonKey(name: r'_max')
  final NestedFloatFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$FloatWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteListRelationFilter implements _i1.JsonSerializable {
  const VendaprodleiteListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory VendaprodleiteListRelationFilter.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteListRelationFilterFromJson(json);

  final VendaprodleiteWhereInput? every;

  final VendaprodleiteWhereInput? some;

  final VendaprodleiteWhereInput? none;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteListRelationFilterToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteOrderByRelationAggregateInput
    implements _i1.JsonSerializable {
  const VendaprodleiteOrderByRelationAggregateInput({this.$count});

  factory VendaprodleiteOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: r'_count')
  final SortOrder? $count;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteOrderByRelationAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ProdleiteCountOrderByAggregateInput implements _i1.JsonSerializable {
  const ProdleiteCountOrderByAggregateInput({
    this.codProdLeite,
    this.dataProdLeite,
    this.qtdProdLeite,
  });

  factory ProdleiteCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProdleiteCountOrderByAggregateInputFromJson(json);

  final SortOrder? codProdLeite;

  final SortOrder? dataProdLeite;

  final SortOrder? qtdProdLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$ProdleiteCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ProdleiteAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const ProdleiteAvgOrderByAggregateInput({
    this.codProdLeite,
    this.qtdProdLeite,
  });

  factory ProdleiteAvgOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProdleiteAvgOrderByAggregateInputFromJson(json);

  final SortOrder? codProdLeite;

  final SortOrder? qtdProdLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$ProdleiteAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ProdleiteMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const ProdleiteMaxOrderByAggregateInput({
    this.codProdLeite,
    this.dataProdLeite,
    this.qtdProdLeite,
  });

  factory ProdleiteMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProdleiteMaxOrderByAggregateInputFromJson(json);

  final SortOrder? codProdLeite;

  final SortOrder? dataProdLeite;

  final SortOrder? qtdProdLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$ProdleiteMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ProdleiteMinOrderByAggregateInput implements _i1.JsonSerializable {
  const ProdleiteMinOrderByAggregateInput({
    this.codProdLeite,
    this.dataProdLeite,
    this.qtdProdLeite,
  });

  factory ProdleiteMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProdleiteMinOrderByAggregateInputFromJson(json);

  final SortOrder? codProdLeite;

  final SortOrder? dataProdLeite;

  final SortOrder? qtdProdLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$ProdleiteMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ProdleiteSumOrderByAggregateInput implements _i1.JsonSerializable {
  const ProdleiteSumOrderByAggregateInput({
    this.codProdLeite,
    this.qtdProdLeite,
  });

  factory ProdleiteSumOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProdleiteSumOrderByAggregateInputFromJson(json);

  final SortOrder? codProdLeite;

  final SortOrder? qtdProdLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$ProdleiteSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CompradorRelationFilter implements _i1.JsonSerializable {
  const CompradorRelationFilter({
    this.$is,
    this.isNot,
  });

  factory CompradorRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$CompradorRelationFilterFromJson(json);

  @JsonKey(name: r'is')
  final CompradorWhereInput? $is;

  final CompradorWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => _$CompradorRelationFilterToJson(this);
}

@_i1.jsonSerializable
class VendaanimalCountOrderByAggregateInput implements _i1.JsonSerializable {
  const VendaanimalCountOrderByAggregateInput({
    this.codVendaAnimal,
    this.codComprador,
    this.dataVendaAnimal,
    this.valorTotalAnimal,
  });

  factory VendaanimalCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalCountOrderByAggregateInputFromJson(json);

  final SortOrder? codVendaAnimal;

  final SortOrder? codComprador;

  final SortOrder? dataVendaAnimal;

  final SortOrder? valorTotalAnimal;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const VendaanimalAvgOrderByAggregateInput({
    this.codVendaAnimal,
    this.codComprador,
    this.valorTotalAnimal,
  });

  factory VendaanimalAvgOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalAvgOrderByAggregateInputFromJson(json);

  final SortOrder? codVendaAnimal;

  final SortOrder? codComprador;

  final SortOrder? valorTotalAnimal;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const VendaanimalMaxOrderByAggregateInput({
    this.codVendaAnimal,
    this.codComprador,
    this.dataVendaAnimal,
    this.valorTotalAnimal,
  });

  factory VendaanimalMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalMaxOrderByAggregateInputFromJson(json);

  final SortOrder? codVendaAnimal;

  final SortOrder? codComprador;

  final SortOrder? dataVendaAnimal;

  final SortOrder? valorTotalAnimal;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalMinOrderByAggregateInput implements _i1.JsonSerializable {
  const VendaanimalMinOrderByAggregateInput({
    this.codVendaAnimal,
    this.codComprador,
    this.dataVendaAnimal,
    this.valorTotalAnimal,
  });

  factory VendaanimalMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalMinOrderByAggregateInputFromJson(json);

  final SortOrder? codVendaAnimal;

  final SortOrder? codComprador;

  final SortOrder? dataVendaAnimal;

  final SortOrder? valorTotalAnimal;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalSumOrderByAggregateInput implements _i1.JsonSerializable {
  const VendaanimalSumOrderByAggregateInput({
    this.codVendaAnimal,
    this.codComprador,
    this.valorTotalAnimal,
  });

  factory VendaanimalSumOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalSumOrderByAggregateInputFromJson(json);

  final SortOrder? codVendaAnimal;

  final SortOrder? codComprador;

  final SortOrder? valorTotalAnimal;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteCountOrderByAggregateInput implements _i1.JsonSerializable {
  const VendaleiteCountOrderByAggregateInput({
    this.codVendaLeite,
    this.codComprador,
    this.dataVendaLeite,
    this.valorTotalLeite,
  });

  factory VendaleiteCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteCountOrderByAggregateInputFromJson(json);

  final SortOrder? codVendaLeite;

  final SortOrder? codComprador;

  final SortOrder? dataVendaLeite;

  final SortOrder? valorTotalLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const VendaleiteAvgOrderByAggregateInput({
    this.codVendaLeite,
    this.codComprador,
    this.valorTotalLeite,
  });

  factory VendaleiteAvgOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteAvgOrderByAggregateInputFromJson(json);

  final SortOrder? codVendaLeite;

  final SortOrder? codComprador;

  final SortOrder? valorTotalLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const VendaleiteMaxOrderByAggregateInput({
    this.codVendaLeite,
    this.codComprador,
    this.dataVendaLeite,
    this.valorTotalLeite,
  });

  factory VendaleiteMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteMaxOrderByAggregateInputFromJson(json);

  final SortOrder? codVendaLeite;

  final SortOrder? codComprador;

  final SortOrder? dataVendaLeite;

  final SortOrder? valorTotalLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteMinOrderByAggregateInput implements _i1.JsonSerializable {
  const VendaleiteMinOrderByAggregateInput({
    this.codVendaLeite,
    this.codComprador,
    this.dataVendaLeite,
    this.valorTotalLeite,
  });

  factory VendaleiteMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteMinOrderByAggregateInputFromJson(json);

  final SortOrder? codVendaLeite;

  final SortOrder? codComprador;

  final SortOrder? dataVendaLeite;

  final SortOrder? valorTotalLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteSumOrderByAggregateInput implements _i1.JsonSerializable {
  const VendaleiteSumOrderByAggregateInput({
    this.codVendaLeite,
    this.codComprador,
    this.valorTotalLeite,
  });

  factory VendaleiteSumOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteSumOrderByAggregateInputFromJson(json);

  final SortOrder? codVendaLeite;

  final SortOrder? codComprador;

  final SortOrder? valorTotalLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteRelationFilter implements _i1.JsonSerializable {
  const VendaleiteRelationFilter({
    this.$is,
    this.isNot,
  });

  factory VendaleiteRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$VendaleiteRelationFilterFromJson(json);

  @JsonKey(name: r'is')
  final VendaleiteWhereInput? $is;

  final VendaleiteWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => _$VendaleiteRelationFilterToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteCodVendaProdLeiteCodVendaLeiteCodProdLeiteCompoundUniqueInput
    implements _i1.JsonSerializable {
  const VendaprodleiteCodVendaProdLeiteCodVendaLeiteCodProdLeiteCompoundUniqueInput({
    required this.codVendaProdLeite,
    required this.codVendaLeite,
    required this.codProdLeite,
  });

  factory VendaprodleiteCodVendaProdLeiteCodVendaLeiteCodProdLeiteCompoundUniqueInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteCodVendaProdLeiteCodVendaLeiteCodProdLeiteCompoundUniqueInputFromJson(
          json);

  final int codVendaProdLeite;

  final int codVendaLeite;

  final int codProdLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteCodVendaProdLeiteCodVendaLeiteCodProdLeiteCompoundUniqueInputToJson(
          this);
}

@_i1.jsonSerializable
class VendaprodleiteCountOrderByAggregateInput implements _i1.JsonSerializable {
  const VendaprodleiteCountOrderByAggregateInput({
    this.codVendaProdLeite,
    this.codVendaLeite,
    this.codProdLeite,
    this.qtdLeite,
    this.valorLitro,
    this.valorTotalItemLeite,
  });

  factory VendaprodleiteCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteCountOrderByAggregateInputFromJson(json);

  final SortOrder? codVendaProdLeite;

  final SortOrder? codVendaLeite;

  final SortOrder? codProdLeite;

  final SortOrder? qtdLeite;

  final SortOrder? valorLitro;

  final SortOrder? valorTotalItemLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const VendaprodleiteAvgOrderByAggregateInput({
    this.codVendaProdLeite,
    this.codVendaLeite,
    this.codProdLeite,
    this.qtdLeite,
    this.valorLitro,
    this.valorTotalItemLeite,
  });

  factory VendaprodleiteAvgOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteAvgOrderByAggregateInputFromJson(json);

  final SortOrder? codVendaProdLeite;

  final SortOrder? codVendaLeite;

  final SortOrder? codProdLeite;

  final SortOrder? qtdLeite;

  final SortOrder? valorLitro;

  final SortOrder? valorTotalItemLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const VendaprodleiteMaxOrderByAggregateInput({
    this.codVendaProdLeite,
    this.codVendaLeite,
    this.codProdLeite,
    this.qtdLeite,
    this.valorLitro,
    this.valorTotalItemLeite,
  });

  factory VendaprodleiteMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteMaxOrderByAggregateInputFromJson(json);

  final SortOrder? codVendaProdLeite;

  final SortOrder? codVendaLeite;

  final SortOrder? codProdLeite;

  final SortOrder? qtdLeite;

  final SortOrder? valorLitro;

  final SortOrder? valorTotalItemLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteMinOrderByAggregateInput implements _i1.JsonSerializable {
  const VendaprodleiteMinOrderByAggregateInput({
    this.codVendaProdLeite,
    this.codVendaLeite,
    this.codProdLeite,
    this.qtdLeite,
    this.valorLitro,
    this.valorTotalItemLeite,
  });

  factory VendaprodleiteMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteMinOrderByAggregateInputFromJson(json);

  final SortOrder? codVendaProdLeite;

  final SortOrder? codVendaLeite;

  final SortOrder? codProdLeite;

  final SortOrder? qtdLeite;

  final SortOrder? valorLitro;

  final SortOrder? valorTotalItemLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteSumOrderByAggregateInput implements _i1.JsonSerializable {
  const VendaprodleiteSumOrderByAggregateInput({
    this.codVendaProdLeite,
    this.codVendaLeite,
    this.codProdLeite,
    this.qtdLeite,
    this.valorLitro,
    this.valorTotalItemLeite,
  });

  factory VendaprodleiteSumOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteSumOrderByAggregateInputFromJson(json);

  final SortOrder? codVendaProdLeite;

  final SortOrder? codVendaLeite;

  final SortOrder? codProdLeite;

  final SortOrder? qtdLeite;

  final SortOrder? valorLitro;

  final SortOrder? valorTotalItemLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CategoriaCreateNestedOneWithoutAnimalInput
    implements _i1.JsonSerializable {
  const CategoriaCreateNestedOneWithoutAnimalInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory CategoriaCreateNestedOneWithoutAnimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoriaCreateNestedOneWithoutAnimalInputFromJson(json);

  final CategoriaCreateWithoutAnimalInput? create;

  final CategoriaCreateOrConnectWithoutAnimalInput? connectOrCreate;

  final CategoriaWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoriaCreateNestedOneWithoutAnimalInputToJson(this);
}

@_i1.jsonSerializable
class ProdleiteCreateNestedOneWithoutAnimalInput
    implements _i1.JsonSerializable {
  const ProdleiteCreateNestedOneWithoutAnimalInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory ProdleiteCreateNestedOneWithoutAnimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProdleiteCreateNestedOneWithoutAnimalInputFromJson(json);

  final ProdleiteCreateWithoutAnimalInput? create;

  final ProdleiteCreateOrConnectWithoutAnimalInput? connectOrCreate;

  final ProdleiteWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$ProdleiteCreateNestedOneWithoutAnimalInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaCreateNestedManyWithoutAnimalInput
    implements _i1.JsonSerializable {
  const ItensvendaCreateNestedManyWithoutAnimalInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory ItensvendaCreateNestedManyWithoutAnimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaCreateNestedManyWithoutAnimalInputFromJson(json);

  final Iterable<ItensvendaCreateWithoutAnimalInput>? create;

  final Iterable<ItensvendaCreateOrConnectWithoutAnimalInput>? connectOrCreate;

  final ItensvendaCreateManyAnimalInputEnvelope? createMany;

  final Iterable<ItensvendaWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaCreateNestedManyWithoutAnimalInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaUncheckedCreateNestedManyWithoutAnimalInput
    implements _i1.JsonSerializable {
  const ItensvendaUncheckedCreateNestedManyWithoutAnimalInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory ItensvendaUncheckedCreateNestedManyWithoutAnimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaUncheckedCreateNestedManyWithoutAnimalInputFromJson(json);

  final Iterable<ItensvendaCreateWithoutAnimalInput>? create;

  final Iterable<ItensvendaCreateOrConnectWithoutAnimalInput>? connectOrCreate;

  final ItensvendaCreateManyAnimalInputEnvelope? createMany;

  final Iterable<ItensvendaWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaUncheckedCreateNestedManyWithoutAnimalInputToJson(this);
}

@_i1.jsonSerializable
class IntFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const IntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  factory IntFieldUpdateOperationsInput.fromJson(Map<String, dynamic> json) =>
      _$IntFieldUpdateOperationsInputFromJson(json);

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() => _$IntFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class StringFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const StringFieldUpdateOperationsInput({this.set});

  factory StringFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$StringFieldUpdateOperationsInputFromJson(json);

  final String? set;

  @override
  Map<String, dynamic> toJson() =>
      _$StringFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class DateTimeFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const DateTimeFieldUpdateOperationsInput({this.set});

  factory DateTimeFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$DateTimeFieldUpdateOperationsInputFromJson(json);

  final DateTime? set;

  @override
  Map<String, dynamic> toJson() =>
      _$DateTimeFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class NullableFloatFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const NullableFloatFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  factory NullableFloatFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$NullableFloatFieldUpdateOperationsInputFromJson(json);

  final double? set;

  final double? increment;

  final double? decrement;

  final double? multiply;

  final double? divide;

  @override
  Map<String, dynamic> toJson() =>
      _$NullableFloatFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class CategoriaUpdateOneRequiredWithoutAnimalNestedInput
    implements _i1.JsonSerializable {
  const CategoriaUpdateOneRequiredWithoutAnimalNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  factory CategoriaUpdateOneRequiredWithoutAnimalNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoriaUpdateOneRequiredWithoutAnimalNestedInputFromJson(json);

  final CategoriaCreateWithoutAnimalInput? create;

  final CategoriaCreateOrConnectWithoutAnimalInput? connectOrCreate;

  final CategoriaUpsertWithoutAnimalInput? upsert;

  final CategoriaWhereUniqueInput? connect;

  final CategoriaUpdateWithoutAnimalInput? update;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoriaUpdateOneRequiredWithoutAnimalNestedInputToJson(this);
}

@_i1.jsonSerializable
class ProdleiteUpdateOneRequiredWithoutAnimalNestedInput
    implements _i1.JsonSerializable {
  const ProdleiteUpdateOneRequiredWithoutAnimalNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  factory ProdleiteUpdateOneRequiredWithoutAnimalNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProdleiteUpdateOneRequiredWithoutAnimalNestedInputFromJson(json);

  final ProdleiteCreateWithoutAnimalInput? create;

  final ProdleiteCreateOrConnectWithoutAnimalInput? connectOrCreate;

  final ProdleiteUpsertWithoutAnimalInput? upsert;

  final ProdleiteWhereUniqueInput? connect;

  final ProdleiteUpdateWithoutAnimalInput? update;

  @override
  Map<String, dynamic> toJson() =>
      _$ProdleiteUpdateOneRequiredWithoutAnimalNestedInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaUpdateManyWithoutAnimalNestedInput
    implements _i1.JsonSerializable {
  const ItensvendaUpdateManyWithoutAnimalNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory ItensvendaUpdateManyWithoutAnimalNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaUpdateManyWithoutAnimalNestedInputFromJson(json);

  final Iterable<ItensvendaCreateWithoutAnimalInput>? create;

  final Iterable<ItensvendaCreateOrConnectWithoutAnimalInput>? connectOrCreate;

  final Iterable<ItensvendaUpsertWithWhereUniqueWithoutAnimalInput>? upsert;

  final ItensvendaCreateManyAnimalInputEnvelope? createMany;

  final Iterable<ItensvendaWhereUniqueInput>? set;

  final Iterable<ItensvendaWhereUniqueInput>? disconnect;

  final Iterable<ItensvendaWhereUniqueInput>? delete;

  final Iterable<ItensvendaWhereUniqueInput>? connect;

  final Iterable<ItensvendaUpdateWithWhereUniqueWithoutAnimalInput>? update;

  final Iterable<ItensvendaUpdateManyWithWhereWithoutAnimalInput>? updateMany;

  final Iterable<ItensvendaScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaUpdateManyWithoutAnimalNestedInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaUncheckedUpdateManyWithoutAnimalNestedInput
    implements _i1.JsonSerializable {
  const ItensvendaUncheckedUpdateManyWithoutAnimalNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory ItensvendaUncheckedUpdateManyWithoutAnimalNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaUncheckedUpdateManyWithoutAnimalNestedInputFromJson(json);

  final Iterable<ItensvendaCreateWithoutAnimalInput>? create;

  final Iterable<ItensvendaCreateOrConnectWithoutAnimalInput>? connectOrCreate;

  final Iterable<ItensvendaUpsertWithWhereUniqueWithoutAnimalInput>? upsert;

  final ItensvendaCreateManyAnimalInputEnvelope? createMany;

  final Iterable<ItensvendaWhereUniqueInput>? set;

  final Iterable<ItensvendaWhereUniqueInput>? disconnect;

  final Iterable<ItensvendaWhereUniqueInput>? delete;

  final Iterable<ItensvendaWhereUniqueInput>? connect;

  final Iterable<ItensvendaUpdateWithWhereUniqueWithoutAnimalInput>? update;

  final Iterable<ItensvendaUpdateManyWithWhereWithoutAnimalInput>? updateMany;

  final Iterable<ItensvendaScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaUncheckedUpdateManyWithoutAnimalNestedInputToJson(this);
}

@_i1.jsonSerializable
class AnimalCreateNestedManyWithoutCategoriaInput
    implements _i1.JsonSerializable {
  const AnimalCreateNestedManyWithoutCategoriaInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory AnimalCreateNestedManyWithoutCategoriaInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalCreateNestedManyWithoutCategoriaInputFromJson(json);

  final Iterable<AnimalCreateWithoutCategoriaInput>? create;

  final Iterable<AnimalCreateOrConnectWithoutCategoriaInput>? connectOrCreate;

  final AnimalCreateManyCategoriaInputEnvelope? createMany;

  final Iterable<AnimalWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalCreateNestedManyWithoutCategoriaInputToJson(this);
}

@_i1.jsonSerializable
class AnimalUncheckedCreateNestedManyWithoutCategoriaInput
    implements _i1.JsonSerializable {
  const AnimalUncheckedCreateNestedManyWithoutCategoriaInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory AnimalUncheckedCreateNestedManyWithoutCategoriaInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalUncheckedCreateNestedManyWithoutCategoriaInputFromJson(json);

  final Iterable<AnimalCreateWithoutCategoriaInput>? create;

  final Iterable<AnimalCreateOrConnectWithoutCategoriaInput>? connectOrCreate;

  final AnimalCreateManyCategoriaInputEnvelope? createMany;

  final Iterable<AnimalWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalUncheckedCreateNestedManyWithoutCategoriaInputToJson(this);
}

@_i1.jsonSerializable
class AnimalUpdateManyWithoutCategoriaNestedInput
    implements _i1.JsonSerializable {
  const AnimalUpdateManyWithoutCategoriaNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory AnimalUpdateManyWithoutCategoriaNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalUpdateManyWithoutCategoriaNestedInputFromJson(json);

  final Iterable<AnimalCreateWithoutCategoriaInput>? create;

  final Iterable<AnimalCreateOrConnectWithoutCategoriaInput>? connectOrCreate;

  final Iterable<AnimalUpsertWithWhereUniqueWithoutCategoriaInput>? upsert;

  final AnimalCreateManyCategoriaInputEnvelope? createMany;

  final Iterable<AnimalWhereUniqueInput>? set;

  final Iterable<AnimalWhereUniqueInput>? disconnect;

  final Iterable<AnimalWhereUniqueInput>? delete;

  final Iterable<AnimalWhereUniqueInput>? connect;

  final Iterable<AnimalUpdateWithWhereUniqueWithoutCategoriaInput>? update;

  final Iterable<AnimalUpdateManyWithWhereWithoutCategoriaInput>? updateMany;

  final Iterable<AnimalScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalUpdateManyWithoutCategoriaNestedInputToJson(this);
}

@_i1.jsonSerializable
class AnimalUncheckedUpdateManyWithoutCategoriaNestedInput
    implements _i1.JsonSerializable {
  const AnimalUncheckedUpdateManyWithoutCategoriaNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory AnimalUncheckedUpdateManyWithoutCategoriaNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalUncheckedUpdateManyWithoutCategoriaNestedInputFromJson(json);

  final Iterable<AnimalCreateWithoutCategoriaInput>? create;

  final Iterable<AnimalCreateOrConnectWithoutCategoriaInput>? connectOrCreate;

  final Iterable<AnimalUpsertWithWhereUniqueWithoutCategoriaInput>? upsert;

  final AnimalCreateManyCategoriaInputEnvelope? createMany;

  final Iterable<AnimalWhereUniqueInput>? set;

  final Iterable<AnimalWhereUniqueInput>? disconnect;

  final Iterable<AnimalWhereUniqueInput>? delete;

  final Iterable<AnimalWhereUniqueInput>? connect;

  final Iterable<AnimalUpdateWithWhereUniqueWithoutCategoriaInput>? update;

  final Iterable<AnimalUpdateManyWithWhereWithoutCategoriaInput>? updateMany;

  final Iterable<AnimalScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalUncheckedUpdateManyWithoutCategoriaNestedInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalCreateNestedManyWithoutCompradorInput
    implements _i1.JsonSerializable {
  const VendaanimalCreateNestedManyWithoutCompradorInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory VendaanimalCreateNestedManyWithoutCompradorInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalCreateNestedManyWithoutCompradorInputFromJson(json);

  final Iterable<VendaanimalCreateWithoutCompradorInput>? create;

  final Iterable<VendaanimalCreateOrConnectWithoutCompradorInput>?
      connectOrCreate;

  final VendaanimalCreateManyCompradorInputEnvelope? createMany;

  final Iterable<VendaanimalWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalCreateNestedManyWithoutCompradorInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteCreateNestedManyWithoutCompradorInput
    implements _i1.JsonSerializable {
  const VendaleiteCreateNestedManyWithoutCompradorInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory VendaleiteCreateNestedManyWithoutCompradorInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteCreateNestedManyWithoutCompradorInputFromJson(json);

  final Iterable<VendaleiteCreateWithoutCompradorInput>? create;

  final Iterable<VendaleiteCreateOrConnectWithoutCompradorInput>?
      connectOrCreate;

  final VendaleiteCreateManyCompradorInputEnvelope? createMany;

  final Iterable<VendaleiteWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteCreateNestedManyWithoutCompradorInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalUncheckedCreateNestedManyWithoutCompradorInput
    implements _i1.JsonSerializable {
  const VendaanimalUncheckedCreateNestedManyWithoutCompradorInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory VendaanimalUncheckedCreateNestedManyWithoutCompradorInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalUncheckedCreateNestedManyWithoutCompradorInputFromJson(json);

  final Iterable<VendaanimalCreateWithoutCompradorInput>? create;

  final Iterable<VendaanimalCreateOrConnectWithoutCompradorInput>?
      connectOrCreate;

  final VendaanimalCreateManyCompradorInputEnvelope? createMany;

  final Iterable<VendaanimalWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalUncheckedCreateNestedManyWithoutCompradorInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteUncheckedCreateNestedManyWithoutCompradorInput
    implements _i1.JsonSerializable {
  const VendaleiteUncheckedCreateNestedManyWithoutCompradorInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory VendaleiteUncheckedCreateNestedManyWithoutCompradorInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteUncheckedCreateNestedManyWithoutCompradorInputFromJson(json);

  final Iterable<VendaleiteCreateWithoutCompradorInput>? create;

  final Iterable<VendaleiteCreateOrConnectWithoutCompradorInput>?
      connectOrCreate;

  final VendaleiteCreateManyCompradorInputEnvelope? createMany;

  final Iterable<VendaleiteWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteUncheckedCreateNestedManyWithoutCompradorInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalUpdateManyWithoutCompradorNestedInput
    implements _i1.JsonSerializable {
  const VendaanimalUpdateManyWithoutCompradorNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory VendaanimalUpdateManyWithoutCompradorNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalUpdateManyWithoutCompradorNestedInputFromJson(json);

  final Iterable<VendaanimalCreateWithoutCompradorInput>? create;

  final Iterable<VendaanimalCreateOrConnectWithoutCompradorInput>?
      connectOrCreate;

  final Iterable<VendaanimalUpsertWithWhereUniqueWithoutCompradorInput>? upsert;

  final VendaanimalCreateManyCompradorInputEnvelope? createMany;

  final Iterable<VendaanimalWhereUniqueInput>? set;

  final Iterable<VendaanimalWhereUniqueInput>? disconnect;

  final Iterable<VendaanimalWhereUniqueInput>? delete;

  final Iterable<VendaanimalWhereUniqueInput>? connect;

  final Iterable<VendaanimalUpdateWithWhereUniqueWithoutCompradorInput>? update;

  final Iterable<VendaanimalUpdateManyWithWhereWithoutCompradorInput>?
      updateMany;

  final Iterable<VendaanimalScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalUpdateManyWithoutCompradorNestedInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteUpdateManyWithoutCompradorNestedInput
    implements _i1.JsonSerializable {
  const VendaleiteUpdateManyWithoutCompradorNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory VendaleiteUpdateManyWithoutCompradorNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteUpdateManyWithoutCompradorNestedInputFromJson(json);

  final Iterable<VendaleiteCreateWithoutCompradorInput>? create;

  final Iterable<VendaleiteCreateOrConnectWithoutCompradorInput>?
      connectOrCreate;

  final Iterable<VendaleiteUpsertWithWhereUniqueWithoutCompradorInput>? upsert;

  final VendaleiteCreateManyCompradorInputEnvelope? createMany;

  final Iterable<VendaleiteWhereUniqueInput>? set;

  final Iterable<VendaleiteWhereUniqueInput>? disconnect;

  final Iterable<VendaleiteWhereUniqueInput>? delete;

  final Iterable<VendaleiteWhereUniqueInput>? connect;

  final Iterable<VendaleiteUpdateWithWhereUniqueWithoutCompradorInput>? update;

  final Iterable<VendaleiteUpdateManyWithWhereWithoutCompradorInput>?
      updateMany;

  final Iterable<VendaleiteScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteUpdateManyWithoutCompradorNestedInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalUncheckedUpdateManyWithoutCompradorNestedInput
    implements _i1.JsonSerializable {
  const VendaanimalUncheckedUpdateManyWithoutCompradorNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory VendaanimalUncheckedUpdateManyWithoutCompradorNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalUncheckedUpdateManyWithoutCompradorNestedInputFromJson(json);

  final Iterable<VendaanimalCreateWithoutCompradorInput>? create;

  final Iterable<VendaanimalCreateOrConnectWithoutCompradorInput>?
      connectOrCreate;

  final Iterable<VendaanimalUpsertWithWhereUniqueWithoutCompradorInput>? upsert;

  final VendaanimalCreateManyCompradorInputEnvelope? createMany;

  final Iterable<VendaanimalWhereUniqueInput>? set;

  final Iterable<VendaanimalWhereUniqueInput>? disconnect;

  final Iterable<VendaanimalWhereUniqueInput>? delete;

  final Iterable<VendaanimalWhereUniqueInput>? connect;

  final Iterable<VendaanimalUpdateWithWhereUniqueWithoutCompradorInput>? update;

  final Iterable<VendaanimalUpdateManyWithWhereWithoutCompradorInput>?
      updateMany;

  final Iterable<VendaanimalScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalUncheckedUpdateManyWithoutCompradorNestedInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteUncheckedUpdateManyWithoutCompradorNestedInput
    implements _i1.JsonSerializable {
  const VendaleiteUncheckedUpdateManyWithoutCompradorNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory VendaleiteUncheckedUpdateManyWithoutCompradorNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteUncheckedUpdateManyWithoutCompradorNestedInputFromJson(json);

  final Iterable<VendaleiteCreateWithoutCompradorInput>? create;

  final Iterable<VendaleiteCreateOrConnectWithoutCompradorInput>?
      connectOrCreate;

  final Iterable<VendaleiteUpsertWithWhereUniqueWithoutCompradorInput>? upsert;

  final VendaleiteCreateManyCompradorInputEnvelope? createMany;

  final Iterable<VendaleiteWhereUniqueInput>? set;

  final Iterable<VendaleiteWhereUniqueInput>? disconnect;

  final Iterable<VendaleiteWhereUniqueInput>? delete;

  final Iterable<VendaleiteWhereUniqueInput>? connect;

  final Iterable<VendaleiteUpdateWithWhereUniqueWithoutCompradorInput>? update;

  final Iterable<VendaleiteUpdateManyWithWhereWithoutCompradorInput>?
      updateMany;

  final Iterable<VendaleiteScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteUncheckedUpdateManyWithoutCompradorNestedInputToJson(this);
}

@_i1.jsonSerializable
class AnimalCreateNestedOneWithoutItensvendaInput
    implements _i1.JsonSerializable {
  const AnimalCreateNestedOneWithoutItensvendaInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory AnimalCreateNestedOneWithoutItensvendaInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalCreateNestedOneWithoutItensvendaInputFromJson(json);

  final AnimalCreateWithoutItensvendaInput? create;

  final AnimalCreateOrConnectWithoutItensvendaInput? connectOrCreate;

  final AnimalWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalCreateNestedOneWithoutItensvendaInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalCreateNestedOneWithoutItensvendaInput
    implements _i1.JsonSerializable {
  const VendaanimalCreateNestedOneWithoutItensvendaInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory VendaanimalCreateNestedOneWithoutItensvendaInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalCreateNestedOneWithoutItensvendaInputFromJson(json);

  final VendaanimalCreateWithoutItensvendaInput? create;

  final VendaanimalCreateOrConnectWithoutItensvendaInput? connectOrCreate;

  final VendaanimalWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalCreateNestedOneWithoutItensvendaInputToJson(this);
}

@_i1.jsonSerializable
class FloatFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const FloatFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  factory FloatFieldUpdateOperationsInput.fromJson(Map<String, dynamic> json) =>
      _$FloatFieldUpdateOperationsInputFromJson(json);

  final double? set;

  final double? increment;

  final double? decrement;

  final double? multiply;

  final double? divide;

  @override
  Map<String, dynamic> toJson() =>
      _$FloatFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class AnimalUpdateOneRequiredWithoutItensvendaNestedInput
    implements _i1.JsonSerializable {
  const AnimalUpdateOneRequiredWithoutItensvendaNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  factory AnimalUpdateOneRequiredWithoutItensvendaNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalUpdateOneRequiredWithoutItensvendaNestedInputFromJson(json);

  final AnimalCreateWithoutItensvendaInput? create;

  final AnimalCreateOrConnectWithoutItensvendaInput? connectOrCreate;

  final AnimalUpsertWithoutItensvendaInput? upsert;

  final AnimalWhereUniqueInput? connect;

  final AnimalUpdateWithoutItensvendaInput? update;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalUpdateOneRequiredWithoutItensvendaNestedInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalUpdateOneRequiredWithoutItensvendaNestedInput
    implements _i1.JsonSerializable {
  const VendaanimalUpdateOneRequiredWithoutItensvendaNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  factory VendaanimalUpdateOneRequiredWithoutItensvendaNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalUpdateOneRequiredWithoutItensvendaNestedInputFromJson(json);

  final VendaanimalCreateWithoutItensvendaInput? create;

  final VendaanimalCreateOrConnectWithoutItensvendaInput? connectOrCreate;

  final VendaanimalUpsertWithoutItensvendaInput? upsert;

  final VendaanimalWhereUniqueInput? connect;

  final VendaanimalUpdateWithoutItensvendaInput? update;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalUpdateOneRequiredWithoutItensvendaNestedInputToJson(this);
}

@_i1.jsonSerializable
class AnimalCreateNestedManyWithoutProdleiteInput
    implements _i1.JsonSerializable {
  const AnimalCreateNestedManyWithoutProdleiteInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory AnimalCreateNestedManyWithoutProdleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalCreateNestedManyWithoutProdleiteInputFromJson(json);

  final Iterable<AnimalCreateWithoutProdleiteInput>? create;

  final Iterable<AnimalCreateOrConnectWithoutProdleiteInput>? connectOrCreate;

  final AnimalCreateManyProdleiteInputEnvelope? createMany;

  final Iterable<AnimalWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalCreateNestedManyWithoutProdleiteInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteCreateNestedManyWithoutProdleiteInput
    implements _i1.JsonSerializable {
  const VendaprodleiteCreateNestedManyWithoutProdleiteInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory VendaprodleiteCreateNestedManyWithoutProdleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteCreateNestedManyWithoutProdleiteInputFromJson(json);

  final Iterable<VendaprodleiteCreateWithoutProdleiteInput>? create;

  final Iterable<VendaprodleiteCreateOrConnectWithoutProdleiteInput>?
      connectOrCreate;

  final VendaprodleiteCreateManyProdleiteInputEnvelope? createMany;

  final Iterable<VendaprodleiteWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteCreateNestedManyWithoutProdleiteInputToJson(this);
}

@_i1.jsonSerializable
class AnimalUncheckedCreateNestedManyWithoutProdleiteInput
    implements _i1.JsonSerializable {
  const AnimalUncheckedCreateNestedManyWithoutProdleiteInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory AnimalUncheckedCreateNestedManyWithoutProdleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalUncheckedCreateNestedManyWithoutProdleiteInputFromJson(json);

  final Iterable<AnimalCreateWithoutProdleiteInput>? create;

  final Iterable<AnimalCreateOrConnectWithoutProdleiteInput>? connectOrCreate;

  final AnimalCreateManyProdleiteInputEnvelope? createMany;

  final Iterable<AnimalWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalUncheckedCreateNestedManyWithoutProdleiteInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteUncheckedCreateNestedManyWithoutProdleiteInput
    implements _i1.JsonSerializable {
  const VendaprodleiteUncheckedCreateNestedManyWithoutProdleiteInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory VendaprodleiteUncheckedCreateNestedManyWithoutProdleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteUncheckedCreateNestedManyWithoutProdleiteInputFromJson(
          json);

  final Iterable<VendaprodleiteCreateWithoutProdleiteInput>? create;

  final Iterable<VendaprodleiteCreateOrConnectWithoutProdleiteInput>?
      connectOrCreate;

  final VendaprodleiteCreateManyProdleiteInputEnvelope? createMany;

  final Iterable<VendaprodleiteWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteUncheckedCreateNestedManyWithoutProdleiteInputToJson(
          this);
}

@_i1.jsonSerializable
class AnimalUpdateManyWithoutProdleiteNestedInput
    implements _i1.JsonSerializable {
  const AnimalUpdateManyWithoutProdleiteNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory AnimalUpdateManyWithoutProdleiteNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalUpdateManyWithoutProdleiteNestedInputFromJson(json);

  final Iterable<AnimalCreateWithoutProdleiteInput>? create;

  final Iterable<AnimalCreateOrConnectWithoutProdleiteInput>? connectOrCreate;

  final Iterable<AnimalUpsertWithWhereUniqueWithoutProdleiteInput>? upsert;

  final AnimalCreateManyProdleiteInputEnvelope? createMany;

  final Iterable<AnimalWhereUniqueInput>? set;

  final Iterable<AnimalWhereUniqueInput>? disconnect;

  final Iterable<AnimalWhereUniqueInput>? delete;

  final Iterable<AnimalWhereUniqueInput>? connect;

  final Iterable<AnimalUpdateWithWhereUniqueWithoutProdleiteInput>? update;

  final Iterable<AnimalUpdateManyWithWhereWithoutProdleiteInput>? updateMany;

  final Iterable<AnimalScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalUpdateManyWithoutProdleiteNestedInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteUpdateManyWithoutProdleiteNestedInput
    implements _i1.JsonSerializable {
  const VendaprodleiteUpdateManyWithoutProdleiteNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory VendaprodleiteUpdateManyWithoutProdleiteNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteUpdateManyWithoutProdleiteNestedInputFromJson(json);

  final Iterable<VendaprodleiteCreateWithoutProdleiteInput>? create;

  final Iterable<VendaprodleiteCreateOrConnectWithoutProdleiteInput>?
      connectOrCreate;

  final Iterable<VendaprodleiteUpsertWithWhereUniqueWithoutProdleiteInput>?
      upsert;

  final VendaprodleiteCreateManyProdleiteInputEnvelope? createMany;

  final Iterable<VendaprodleiteWhereUniqueInput>? set;

  final Iterable<VendaprodleiteWhereUniqueInput>? disconnect;

  final Iterable<VendaprodleiteWhereUniqueInput>? delete;

  final Iterable<VendaprodleiteWhereUniqueInput>? connect;

  final Iterable<VendaprodleiteUpdateWithWhereUniqueWithoutProdleiteInput>?
      update;

  final Iterable<VendaprodleiteUpdateManyWithWhereWithoutProdleiteInput>?
      updateMany;

  final Iterable<VendaprodleiteScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteUpdateManyWithoutProdleiteNestedInputToJson(this);
}

@_i1.jsonSerializable
class AnimalUncheckedUpdateManyWithoutProdleiteNestedInput
    implements _i1.JsonSerializable {
  const AnimalUncheckedUpdateManyWithoutProdleiteNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory AnimalUncheckedUpdateManyWithoutProdleiteNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalUncheckedUpdateManyWithoutProdleiteNestedInputFromJson(json);

  final Iterable<AnimalCreateWithoutProdleiteInput>? create;

  final Iterable<AnimalCreateOrConnectWithoutProdleiteInput>? connectOrCreate;

  final Iterable<AnimalUpsertWithWhereUniqueWithoutProdleiteInput>? upsert;

  final AnimalCreateManyProdleiteInputEnvelope? createMany;

  final Iterable<AnimalWhereUniqueInput>? set;

  final Iterable<AnimalWhereUniqueInput>? disconnect;

  final Iterable<AnimalWhereUniqueInput>? delete;

  final Iterable<AnimalWhereUniqueInput>? connect;

  final Iterable<AnimalUpdateWithWhereUniqueWithoutProdleiteInput>? update;

  final Iterable<AnimalUpdateManyWithWhereWithoutProdleiteInput>? updateMany;

  final Iterable<AnimalScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalUncheckedUpdateManyWithoutProdleiteNestedInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteUncheckedUpdateManyWithoutProdleiteNestedInput
    implements _i1.JsonSerializable {
  const VendaprodleiteUncheckedUpdateManyWithoutProdleiteNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory VendaprodleiteUncheckedUpdateManyWithoutProdleiteNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteUncheckedUpdateManyWithoutProdleiteNestedInputFromJson(
          json);

  final Iterable<VendaprodleiteCreateWithoutProdleiteInput>? create;

  final Iterable<VendaprodleiteCreateOrConnectWithoutProdleiteInput>?
      connectOrCreate;

  final Iterable<VendaprodleiteUpsertWithWhereUniqueWithoutProdleiteInput>?
      upsert;

  final VendaprodleiteCreateManyProdleiteInputEnvelope? createMany;

  final Iterable<VendaprodleiteWhereUniqueInput>? set;

  final Iterable<VendaprodleiteWhereUniqueInput>? disconnect;

  final Iterable<VendaprodleiteWhereUniqueInput>? delete;

  final Iterable<VendaprodleiteWhereUniqueInput>? connect;

  final Iterable<VendaprodleiteUpdateWithWhereUniqueWithoutProdleiteInput>?
      update;

  final Iterable<VendaprodleiteUpdateManyWithWhereWithoutProdleiteInput>?
      updateMany;

  final Iterable<VendaprodleiteScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteUncheckedUpdateManyWithoutProdleiteNestedInputToJson(
          this);
}

@_i1.jsonSerializable
class ItensvendaCreateNestedManyWithoutVendaanimalInput
    implements _i1.JsonSerializable {
  const ItensvendaCreateNestedManyWithoutVendaanimalInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory ItensvendaCreateNestedManyWithoutVendaanimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaCreateNestedManyWithoutVendaanimalInputFromJson(json);

  final Iterable<ItensvendaCreateWithoutVendaanimalInput>? create;

  final Iterable<ItensvendaCreateOrConnectWithoutVendaanimalInput>?
      connectOrCreate;

  final ItensvendaCreateManyVendaanimalInputEnvelope? createMany;

  final Iterable<ItensvendaWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaCreateNestedManyWithoutVendaanimalInputToJson(this);
}

@_i1.jsonSerializable
class CompradorCreateNestedOneWithoutVendaanimalInput
    implements _i1.JsonSerializable {
  const CompradorCreateNestedOneWithoutVendaanimalInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory CompradorCreateNestedOneWithoutVendaanimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$CompradorCreateNestedOneWithoutVendaanimalInputFromJson(json);

  final CompradorCreateWithoutVendaanimalInput? create;

  final CompradorCreateOrConnectWithoutVendaanimalInput? connectOrCreate;

  final CompradorWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$CompradorCreateNestedOneWithoutVendaanimalInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaUncheckedCreateNestedManyWithoutVendaanimalInput
    implements _i1.JsonSerializable {
  const ItensvendaUncheckedCreateNestedManyWithoutVendaanimalInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory ItensvendaUncheckedCreateNestedManyWithoutVendaanimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaUncheckedCreateNestedManyWithoutVendaanimalInputFromJson(
          json);

  final Iterable<ItensvendaCreateWithoutVendaanimalInput>? create;

  final Iterable<ItensvendaCreateOrConnectWithoutVendaanimalInput>?
      connectOrCreate;

  final ItensvendaCreateManyVendaanimalInputEnvelope? createMany;

  final Iterable<ItensvendaWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaUncheckedCreateNestedManyWithoutVendaanimalInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaUpdateManyWithoutVendaanimalNestedInput
    implements _i1.JsonSerializable {
  const ItensvendaUpdateManyWithoutVendaanimalNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory ItensvendaUpdateManyWithoutVendaanimalNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaUpdateManyWithoutVendaanimalNestedInputFromJson(json);

  final Iterable<ItensvendaCreateWithoutVendaanimalInput>? create;

  final Iterable<ItensvendaCreateOrConnectWithoutVendaanimalInput>?
      connectOrCreate;

  final Iterable<ItensvendaUpsertWithWhereUniqueWithoutVendaanimalInput>?
      upsert;

  final ItensvendaCreateManyVendaanimalInputEnvelope? createMany;

  final Iterable<ItensvendaWhereUniqueInput>? set;

  final Iterable<ItensvendaWhereUniqueInput>? disconnect;

  final Iterable<ItensvendaWhereUniqueInput>? delete;

  final Iterable<ItensvendaWhereUniqueInput>? connect;

  final Iterable<ItensvendaUpdateWithWhereUniqueWithoutVendaanimalInput>?
      update;

  final Iterable<ItensvendaUpdateManyWithWhereWithoutVendaanimalInput>?
      updateMany;

  final Iterable<ItensvendaScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaUpdateManyWithoutVendaanimalNestedInputToJson(this);
}

@_i1.jsonSerializable
class CompradorUpdateOneRequiredWithoutVendaanimalNestedInput
    implements _i1.JsonSerializable {
  const CompradorUpdateOneRequiredWithoutVendaanimalNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  factory CompradorUpdateOneRequiredWithoutVendaanimalNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$CompradorUpdateOneRequiredWithoutVendaanimalNestedInputFromJson(json);

  final CompradorCreateWithoutVendaanimalInput? create;

  final CompradorCreateOrConnectWithoutVendaanimalInput? connectOrCreate;

  final CompradorUpsertWithoutVendaanimalInput? upsert;

  final CompradorWhereUniqueInput? connect;

  final CompradorUpdateWithoutVendaanimalInput? update;

  @override
  Map<String, dynamic> toJson() =>
      _$CompradorUpdateOneRequiredWithoutVendaanimalNestedInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaUncheckedUpdateManyWithoutVendaanimalNestedInput
    implements _i1.JsonSerializable {
  const ItensvendaUncheckedUpdateManyWithoutVendaanimalNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory ItensvendaUncheckedUpdateManyWithoutVendaanimalNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaUncheckedUpdateManyWithoutVendaanimalNestedInputFromJson(
          json);

  final Iterable<ItensvendaCreateWithoutVendaanimalInput>? create;

  final Iterable<ItensvendaCreateOrConnectWithoutVendaanimalInput>?
      connectOrCreate;

  final Iterable<ItensvendaUpsertWithWhereUniqueWithoutVendaanimalInput>?
      upsert;

  final ItensvendaCreateManyVendaanimalInputEnvelope? createMany;

  final Iterable<ItensvendaWhereUniqueInput>? set;

  final Iterable<ItensvendaWhereUniqueInput>? disconnect;

  final Iterable<ItensvendaWhereUniqueInput>? delete;

  final Iterable<ItensvendaWhereUniqueInput>? connect;

  final Iterable<ItensvendaUpdateWithWhereUniqueWithoutVendaanimalInput>?
      update;

  final Iterable<ItensvendaUpdateManyWithWhereWithoutVendaanimalInput>?
      updateMany;

  final Iterable<ItensvendaScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaUncheckedUpdateManyWithoutVendaanimalNestedInputToJson(this);
}

@_i1.jsonSerializable
class CompradorCreateNestedOneWithoutVendaleiteInput
    implements _i1.JsonSerializable {
  const CompradorCreateNestedOneWithoutVendaleiteInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory CompradorCreateNestedOneWithoutVendaleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$CompradorCreateNestedOneWithoutVendaleiteInputFromJson(json);

  final CompradorCreateWithoutVendaleiteInput? create;

  final CompradorCreateOrConnectWithoutVendaleiteInput? connectOrCreate;

  final CompradorWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$CompradorCreateNestedOneWithoutVendaleiteInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteCreateNestedManyWithoutVendaleiteInput
    implements _i1.JsonSerializable {
  const VendaprodleiteCreateNestedManyWithoutVendaleiteInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory VendaprodleiteCreateNestedManyWithoutVendaleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteCreateNestedManyWithoutVendaleiteInputFromJson(json);

  final Iterable<VendaprodleiteCreateWithoutVendaleiteInput>? create;

  final Iterable<VendaprodleiteCreateOrConnectWithoutVendaleiteInput>?
      connectOrCreate;

  final VendaprodleiteCreateManyVendaleiteInputEnvelope? createMany;

  final Iterable<VendaprodleiteWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteCreateNestedManyWithoutVendaleiteInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteUncheckedCreateNestedManyWithoutVendaleiteInput
    implements _i1.JsonSerializable {
  const VendaprodleiteUncheckedCreateNestedManyWithoutVendaleiteInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory VendaprodleiteUncheckedCreateNestedManyWithoutVendaleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteUncheckedCreateNestedManyWithoutVendaleiteInputFromJson(
          json);

  final Iterable<VendaprodleiteCreateWithoutVendaleiteInput>? create;

  final Iterable<VendaprodleiteCreateOrConnectWithoutVendaleiteInput>?
      connectOrCreate;

  final VendaprodleiteCreateManyVendaleiteInputEnvelope? createMany;

  final Iterable<VendaprodleiteWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteUncheckedCreateNestedManyWithoutVendaleiteInputToJson(
          this);
}

@_i1.jsonSerializable
class CompradorUpdateOneRequiredWithoutVendaleiteNestedInput
    implements _i1.JsonSerializable {
  const CompradorUpdateOneRequiredWithoutVendaleiteNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  factory CompradorUpdateOneRequiredWithoutVendaleiteNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$CompradorUpdateOneRequiredWithoutVendaleiteNestedInputFromJson(json);

  final CompradorCreateWithoutVendaleiteInput? create;

  final CompradorCreateOrConnectWithoutVendaleiteInput? connectOrCreate;

  final CompradorUpsertWithoutVendaleiteInput? upsert;

  final CompradorWhereUniqueInput? connect;

  final CompradorUpdateWithoutVendaleiteInput? update;

  @override
  Map<String, dynamic> toJson() =>
      _$CompradorUpdateOneRequiredWithoutVendaleiteNestedInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteUpdateManyWithoutVendaleiteNestedInput
    implements _i1.JsonSerializable {
  const VendaprodleiteUpdateManyWithoutVendaleiteNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory VendaprodleiteUpdateManyWithoutVendaleiteNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteUpdateManyWithoutVendaleiteNestedInputFromJson(json);

  final Iterable<VendaprodleiteCreateWithoutVendaleiteInput>? create;

  final Iterable<VendaprodleiteCreateOrConnectWithoutVendaleiteInput>?
      connectOrCreate;

  final Iterable<VendaprodleiteUpsertWithWhereUniqueWithoutVendaleiteInput>?
      upsert;

  final VendaprodleiteCreateManyVendaleiteInputEnvelope? createMany;

  final Iterable<VendaprodleiteWhereUniqueInput>? set;

  final Iterable<VendaprodleiteWhereUniqueInput>? disconnect;

  final Iterable<VendaprodleiteWhereUniqueInput>? delete;

  final Iterable<VendaprodleiteWhereUniqueInput>? connect;

  final Iterable<VendaprodleiteUpdateWithWhereUniqueWithoutVendaleiteInput>?
      update;

  final Iterable<VendaprodleiteUpdateManyWithWhereWithoutVendaleiteInput>?
      updateMany;

  final Iterable<VendaprodleiteScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteUpdateManyWithoutVendaleiteNestedInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteUncheckedUpdateManyWithoutVendaleiteNestedInput
    implements _i1.JsonSerializable {
  const VendaprodleiteUncheckedUpdateManyWithoutVendaleiteNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory VendaprodleiteUncheckedUpdateManyWithoutVendaleiteNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteUncheckedUpdateManyWithoutVendaleiteNestedInputFromJson(
          json);

  final Iterable<VendaprodleiteCreateWithoutVendaleiteInput>? create;

  final Iterable<VendaprodleiteCreateOrConnectWithoutVendaleiteInput>?
      connectOrCreate;

  final Iterable<VendaprodleiteUpsertWithWhereUniqueWithoutVendaleiteInput>?
      upsert;

  final VendaprodleiteCreateManyVendaleiteInputEnvelope? createMany;

  final Iterable<VendaprodleiteWhereUniqueInput>? set;

  final Iterable<VendaprodleiteWhereUniqueInput>? disconnect;

  final Iterable<VendaprodleiteWhereUniqueInput>? delete;

  final Iterable<VendaprodleiteWhereUniqueInput>? connect;

  final Iterable<VendaprodleiteUpdateWithWhereUniqueWithoutVendaleiteInput>?
      update;

  final Iterable<VendaprodleiteUpdateManyWithWhereWithoutVendaleiteInput>?
      updateMany;

  final Iterable<VendaprodleiteScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteUncheckedUpdateManyWithoutVendaleiteNestedInputToJson(
          this);
}

@_i1.jsonSerializable
class ProdleiteCreateNestedOneWithoutVendaprodleiteInput
    implements _i1.JsonSerializable {
  const ProdleiteCreateNestedOneWithoutVendaprodleiteInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory ProdleiteCreateNestedOneWithoutVendaprodleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProdleiteCreateNestedOneWithoutVendaprodleiteInputFromJson(json);

  final ProdleiteCreateWithoutVendaprodleiteInput? create;

  final ProdleiteCreateOrConnectWithoutVendaprodleiteInput? connectOrCreate;

  final ProdleiteWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$ProdleiteCreateNestedOneWithoutVendaprodleiteInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteCreateNestedOneWithoutVendaprodleiteInput
    implements _i1.JsonSerializable {
  const VendaleiteCreateNestedOneWithoutVendaprodleiteInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory VendaleiteCreateNestedOneWithoutVendaprodleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteCreateNestedOneWithoutVendaprodleiteInputFromJson(json);

  final VendaleiteCreateWithoutVendaprodleiteInput? create;

  final VendaleiteCreateOrConnectWithoutVendaprodleiteInput? connectOrCreate;

  final VendaleiteWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteCreateNestedOneWithoutVendaprodleiteInputToJson(this);
}

@_i1.jsonSerializable
class ProdleiteUpdateOneRequiredWithoutVendaprodleiteNestedInput
    implements _i1.JsonSerializable {
  const ProdleiteUpdateOneRequiredWithoutVendaprodleiteNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  factory ProdleiteUpdateOneRequiredWithoutVendaprodleiteNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProdleiteUpdateOneRequiredWithoutVendaprodleiteNestedInputFromJson(
          json);

  final ProdleiteCreateWithoutVendaprodleiteInput? create;

  final ProdleiteCreateOrConnectWithoutVendaprodleiteInput? connectOrCreate;

  final ProdleiteUpsertWithoutVendaprodleiteInput? upsert;

  final ProdleiteWhereUniqueInput? connect;

  final ProdleiteUpdateWithoutVendaprodleiteInput? update;

  @override
  Map<String, dynamic> toJson() =>
      _$ProdleiteUpdateOneRequiredWithoutVendaprodleiteNestedInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteUpdateOneRequiredWithoutVendaprodleiteNestedInput
    implements _i1.JsonSerializable {
  const VendaleiteUpdateOneRequiredWithoutVendaprodleiteNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  factory VendaleiteUpdateOneRequiredWithoutVendaprodleiteNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteUpdateOneRequiredWithoutVendaprodleiteNestedInputFromJson(
          json);

  final VendaleiteCreateWithoutVendaprodleiteInput? create;

  final VendaleiteCreateOrConnectWithoutVendaprodleiteInput? connectOrCreate;

  final VendaleiteUpsertWithoutVendaprodleiteInput? upsert;

  final VendaleiteWhereUniqueInput? connect;

  final VendaleiteUpdateWithoutVendaprodleiteInput? update;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteUpdateOneRequiredWithoutVendaprodleiteNestedInputToJson(this);
}

@_i1.jsonSerializable
class NestedIntFilter implements _i1.JsonSerializable {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedIntFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedIntFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringFilter implements _i1.JsonSerializable {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory NestedStringFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedStringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedStringFilterToJson(this);
}

@_i1.jsonSerializable
class NestedDateTimeFilter implements _i1.JsonSerializable {
  const NestedDateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedDateTimeFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedDateTimeFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedDateTimeFilterToJson(this);
}

@_i1.jsonSerializable
class NestedFloatNullableFilter implements _i1.JsonSerializable {
  const NestedFloatNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedFloatNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedFloatNullableFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedFloatNullableFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedIntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory NestedIntWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$NestedIntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedFloatFilter implements _i1.JsonSerializable {
  const NestedFloatFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedFloatFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedFloatFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedFloatFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedStringWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedStringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedStringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedDateTimeWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedDateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedDateTimeWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedDateTimeWithAggregatesFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedDateTimeFilter? $min;

  @JsonKey(name: r'_max')
  final NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedDateTimeWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedFloatNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedFloatNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory NestedFloatNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedFloatNullableWithAggregatesFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatNullableFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedFloatNullableFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedFloatNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedFloatNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedFloatNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntNullableFilter implements _i1.JsonSerializable {
  const NestedIntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedIntNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntNullableFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedIntNullableFilterToJson(this);
}

@_i1.jsonSerializable
class NestedFloatWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedFloatWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory NestedFloatWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedFloatWithAggregatesFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedFloatFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedFloatFilter? $min;

  @JsonKey(name: r'_max')
  final NestedFloatFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedFloatWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class CategoriaCreateWithoutAnimalInput implements _i1.JsonSerializable {
  const CategoriaCreateWithoutAnimalInput({
    required this.codCategoria,
    required this.tipo,
  });

  factory CategoriaCreateWithoutAnimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoriaCreateWithoutAnimalInputFromJson(json);

  final int codCategoria;

  final String tipo;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoriaCreateWithoutAnimalInputToJson(this);
}

@_i1.jsonSerializable
class CategoriaUncheckedCreateWithoutAnimalInput
    implements _i1.JsonSerializable {
  const CategoriaUncheckedCreateWithoutAnimalInput({
    required this.codCategoria,
    required this.tipo,
  });

  factory CategoriaUncheckedCreateWithoutAnimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoriaUncheckedCreateWithoutAnimalInputFromJson(json);

  final int codCategoria;

  final String tipo;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoriaUncheckedCreateWithoutAnimalInputToJson(this);
}

@_i1.jsonSerializable
class CategoriaCreateOrConnectWithoutAnimalInput
    implements _i1.JsonSerializable {
  const CategoriaCreateOrConnectWithoutAnimalInput({
    required this.where,
    required this.create,
  });

  factory CategoriaCreateOrConnectWithoutAnimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoriaCreateOrConnectWithoutAnimalInputFromJson(json);

  final CategoriaWhereUniqueInput where;

  final CategoriaCreateWithoutAnimalInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoriaCreateOrConnectWithoutAnimalInputToJson(this);
}

@_i1.jsonSerializable
class ProdleiteCreateWithoutAnimalInput implements _i1.JsonSerializable {
  const ProdleiteCreateWithoutAnimalInput({
    required this.codProdLeite,
    required this.dataProdLeite,
    required this.qtdProdLeite,
    this.vendaprodleite,
  });

  factory ProdleiteCreateWithoutAnimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProdleiteCreateWithoutAnimalInputFromJson(json);

  final int codProdLeite;

  final DateTime dataProdLeite;

  final double qtdProdLeite;

  final VendaprodleiteCreateNestedManyWithoutProdleiteInput? vendaprodleite;

  @override
  Map<String, dynamic> toJson() =>
      _$ProdleiteCreateWithoutAnimalInputToJson(this);
}

@_i1.jsonSerializable
class ProdleiteUncheckedCreateWithoutAnimalInput
    implements _i1.JsonSerializable {
  const ProdleiteUncheckedCreateWithoutAnimalInput({
    required this.codProdLeite,
    required this.dataProdLeite,
    required this.qtdProdLeite,
    this.vendaprodleite,
  });

  factory ProdleiteUncheckedCreateWithoutAnimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProdleiteUncheckedCreateWithoutAnimalInputFromJson(json);

  final int codProdLeite;

  final DateTime dataProdLeite;

  final double qtdProdLeite;

  final VendaprodleiteUncheckedCreateNestedManyWithoutProdleiteInput?
      vendaprodleite;

  @override
  Map<String, dynamic> toJson() =>
      _$ProdleiteUncheckedCreateWithoutAnimalInputToJson(this);
}

@_i1.jsonSerializable
class ProdleiteCreateOrConnectWithoutAnimalInput
    implements _i1.JsonSerializable {
  const ProdleiteCreateOrConnectWithoutAnimalInput({
    required this.where,
    required this.create,
  });

  factory ProdleiteCreateOrConnectWithoutAnimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProdleiteCreateOrConnectWithoutAnimalInputFromJson(json);

  final ProdleiteWhereUniqueInput where;

  final ProdleiteCreateWithoutAnimalInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$ProdleiteCreateOrConnectWithoutAnimalInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaCreateWithoutAnimalInput implements _i1.JsonSerializable {
  const ItensvendaCreateWithoutAnimalInput({
    required this.codItensVenda,
    required this.quantidade,
    required this.valorUnitario,
    required this.valorTotalItemAnimal,
    required this.vendaanimal,
  });

  factory ItensvendaCreateWithoutAnimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaCreateWithoutAnimalInputFromJson(json);

  final int codItensVenda;

  final int quantidade;

  final double valorUnitario;

  final double valorTotalItemAnimal;

  final VendaanimalCreateNestedOneWithoutItensvendaInput vendaanimal;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaCreateWithoutAnimalInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaUncheckedCreateWithoutAnimalInput
    implements _i1.JsonSerializable {
  const ItensvendaUncheckedCreateWithoutAnimalInput({
    required this.codItensVenda,
    required this.codVendaAnimal,
    required this.quantidade,
    required this.valorUnitario,
    required this.valorTotalItemAnimal,
  });

  factory ItensvendaUncheckedCreateWithoutAnimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaUncheckedCreateWithoutAnimalInputFromJson(json);

  final int codItensVenda;

  final int codVendaAnimal;

  final int quantidade;

  final double valorUnitario;

  final double valorTotalItemAnimal;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaUncheckedCreateWithoutAnimalInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaCreateOrConnectWithoutAnimalInput
    implements _i1.JsonSerializable {
  const ItensvendaCreateOrConnectWithoutAnimalInput({
    required this.where,
    required this.create,
  });

  factory ItensvendaCreateOrConnectWithoutAnimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaCreateOrConnectWithoutAnimalInputFromJson(json);

  final ItensvendaWhereUniqueInput where;

  final ItensvendaCreateWithoutAnimalInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaCreateOrConnectWithoutAnimalInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaCreateManyAnimalInputEnvelope implements _i1.JsonSerializable {
  const ItensvendaCreateManyAnimalInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  factory ItensvendaCreateManyAnimalInputEnvelope.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaCreateManyAnimalInputEnvelopeFromJson(json);

  final Iterable<ItensvendaCreateManyAnimalInput> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaCreateManyAnimalInputEnvelopeToJson(this);
}

@_i1.jsonSerializable
class CategoriaUpsertWithoutAnimalInput implements _i1.JsonSerializable {
  const CategoriaUpsertWithoutAnimalInput({
    required this.update,
    required this.create,
  });

  factory CategoriaUpsertWithoutAnimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoriaUpsertWithoutAnimalInputFromJson(json);

  final CategoriaUpdateWithoutAnimalInput update;

  final CategoriaCreateWithoutAnimalInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoriaUpsertWithoutAnimalInputToJson(this);
}

@_i1.jsonSerializable
class CategoriaUpdateWithoutAnimalInput implements _i1.JsonSerializable {
  const CategoriaUpdateWithoutAnimalInput({
    this.codCategoria,
    this.tipo,
  });

  factory CategoriaUpdateWithoutAnimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoriaUpdateWithoutAnimalInputFromJson(json);

  final IntFieldUpdateOperationsInput? codCategoria;

  final StringFieldUpdateOperationsInput? tipo;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoriaUpdateWithoutAnimalInputToJson(this);
}

@_i1.jsonSerializable
class CategoriaUncheckedUpdateWithoutAnimalInput
    implements _i1.JsonSerializable {
  const CategoriaUncheckedUpdateWithoutAnimalInput({
    this.codCategoria,
    this.tipo,
  });

  factory CategoriaUncheckedUpdateWithoutAnimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoriaUncheckedUpdateWithoutAnimalInputFromJson(json);

  final IntFieldUpdateOperationsInput? codCategoria;

  final StringFieldUpdateOperationsInput? tipo;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoriaUncheckedUpdateWithoutAnimalInputToJson(this);
}

@_i1.jsonSerializable
class ProdleiteUpsertWithoutAnimalInput implements _i1.JsonSerializable {
  const ProdleiteUpsertWithoutAnimalInput({
    required this.update,
    required this.create,
  });

  factory ProdleiteUpsertWithoutAnimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProdleiteUpsertWithoutAnimalInputFromJson(json);

  final ProdleiteUpdateWithoutAnimalInput update;

  final ProdleiteCreateWithoutAnimalInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$ProdleiteUpsertWithoutAnimalInputToJson(this);
}

@_i1.jsonSerializable
class ProdleiteUpdateWithoutAnimalInput implements _i1.JsonSerializable {
  const ProdleiteUpdateWithoutAnimalInput({
    this.codProdLeite,
    this.dataProdLeite,
    this.qtdProdLeite,
    this.vendaprodleite,
  });

  factory ProdleiteUpdateWithoutAnimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProdleiteUpdateWithoutAnimalInputFromJson(json);

  final IntFieldUpdateOperationsInput? codProdLeite;

  final DateTimeFieldUpdateOperationsInput? dataProdLeite;

  final FloatFieldUpdateOperationsInput? qtdProdLeite;

  final VendaprodleiteUpdateManyWithoutProdleiteNestedInput? vendaprodleite;

  @override
  Map<String, dynamic> toJson() =>
      _$ProdleiteUpdateWithoutAnimalInputToJson(this);
}

@_i1.jsonSerializable
class ProdleiteUncheckedUpdateWithoutAnimalInput
    implements _i1.JsonSerializable {
  const ProdleiteUncheckedUpdateWithoutAnimalInput({
    this.codProdLeite,
    this.dataProdLeite,
    this.qtdProdLeite,
    this.vendaprodleite,
  });

  factory ProdleiteUncheckedUpdateWithoutAnimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProdleiteUncheckedUpdateWithoutAnimalInputFromJson(json);

  final IntFieldUpdateOperationsInput? codProdLeite;

  final DateTimeFieldUpdateOperationsInput? dataProdLeite;

  final FloatFieldUpdateOperationsInput? qtdProdLeite;

  final VendaprodleiteUncheckedUpdateManyWithoutProdleiteNestedInput?
      vendaprodleite;

  @override
  Map<String, dynamic> toJson() =>
      _$ProdleiteUncheckedUpdateWithoutAnimalInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaUpsertWithWhereUniqueWithoutAnimalInput
    implements _i1.JsonSerializable {
  const ItensvendaUpsertWithWhereUniqueWithoutAnimalInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory ItensvendaUpsertWithWhereUniqueWithoutAnimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaUpsertWithWhereUniqueWithoutAnimalInputFromJson(json);

  final ItensvendaWhereUniqueInput where;

  final ItensvendaUpdateWithoutAnimalInput update;

  final ItensvendaCreateWithoutAnimalInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaUpsertWithWhereUniqueWithoutAnimalInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaUpdateWithWhereUniqueWithoutAnimalInput
    implements _i1.JsonSerializable {
  const ItensvendaUpdateWithWhereUniqueWithoutAnimalInput({
    required this.where,
    required this.data,
  });

  factory ItensvendaUpdateWithWhereUniqueWithoutAnimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaUpdateWithWhereUniqueWithoutAnimalInputFromJson(json);

  final ItensvendaWhereUniqueInput where;

  final ItensvendaUpdateWithoutAnimalInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaUpdateWithWhereUniqueWithoutAnimalInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaUpdateManyWithWhereWithoutAnimalInput
    implements _i1.JsonSerializable {
  const ItensvendaUpdateManyWithWhereWithoutAnimalInput({
    required this.where,
    required this.data,
  });

  factory ItensvendaUpdateManyWithWhereWithoutAnimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaUpdateManyWithWhereWithoutAnimalInputFromJson(json);

  final ItensvendaScalarWhereInput where;

  final ItensvendaUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaUpdateManyWithWhereWithoutAnimalInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaScalarWhereInput implements _i1.JsonSerializable {
  const ItensvendaScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.codItensVenda,
    this.codVendaAnimal,
    this.codAnimal,
    this.quantidade,
    this.valorUnitario,
    this.valorTotalItemAnimal,
  });

  factory ItensvendaScalarWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ItensvendaScalarWhereInputFromJson(json);

  final Iterable<ItensvendaScalarWhereInput>? AND;

  final Iterable<ItensvendaScalarWhereInput>? OR;

  final Iterable<ItensvendaScalarWhereInput>? NOT;

  final IntFilter? codItensVenda;

  final IntFilter? codVendaAnimal;

  final IntFilter? codAnimal;

  final IntFilter? quantidade;

  final FloatFilter? valorUnitario;

  final FloatFilter? valorTotalItemAnimal;

  @override
  Map<String, dynamic> toJson() => _$ItensvendaScalarWhereInputToJson(this);
}

@_i1.jsonSerializable
class AnimalCreateWithoutCategoriaInput implements _i1.JsonSerializable {
  const AnimalCreateWithoutCategoriaInput({
    required this.codAnimal,
    required this.nome,
    required this.dataNascimento,
    required this.sexo,
    required this.raca,
    required this.idade,
    required this.formaManejo,
    this.mediaLeite,
    required this.prodleite,
    this.itensvenda,
  });

  factory AnimalCreateWithoutCategoriaInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalCreateWithoutCategoriaInputFromJson(json);

  final int codAnimal;

  final String nome;

  final DateTime dataNascimento;

  final String sexo;

  final String raca;

  final int idade;

  final String formaManejo;

  final double? mediaLeite;

  final ProdleiteCreateNestedOneWithoutAnimalInput prodleite;

  final ItensvendaCreateNestedManyWithoutAnimalInput? itensvenda;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalCreateWithoutCategoriaInputToJson(this);
}

@_i1.jsonSerializable
class AnimalUncheckedCreateWithoutCategoriaInput
    implements _i1.JsonSerializable {
  const AnimalUncheckedCreateWithoutCategoriaInput({
    required this.codAnimal,
    required this.codProdLeite,
    required this.nome,
    required this.dataNascimento,
    required this.sexo,
    required this.raca,
    required this.idade,
    required this.formaManejo,
    this.mediaLeite,
    this.itensvenda,
  });

  factory AnimalUncheckedCreateWithoutCategoriaInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalUncheckedCreateWithoutCategoriaInputFromJson(json);

  final int codAnimal;

  final int codProdLeite;

  final String nome;

  final DateTime dataNascimento;

  final String sexo;

  final String raca;

  final int idade;

  final String formaManejo;

  final double? mediaLeite;

  final ItensvendaUncheckedCreateNestedManyWithoutAnimalInput? itensvenda;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalUncheckedCreateWithoutCategoriaInputToJson(this);
}

@_i1.jsonSerializable
class AnimalCreateOrConnectWithoutCategoriaInput
    implements _i1.JsonSerializable {
  const AnimalCreateOrConnectWithoutCategoriaInput({
    required this.where,
    required this.create,
  });

  factory AnimalCreateOrConnectWithoutCategoriaInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalCreateOrConnectWithoutCategoriaInputFromJson(json);

  final AnimalWhereUniqueInput where;

  final AnimalCreateWithoutCategoriaInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalCreateOrConnectWithoutCategoriaInputToJson(this);
}

@_i1.jsonSerializable
class AnimalCreateManyCategoriaInputEnvelope implements _i1.JsonSerializable {
  const AnimalCreateManyCategoriaInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  factory AnimalCreateManyCategoriaInputEnvelope.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalCreateManyCategoriaInputEnvelopeFromJson(json);

  final Iterable<AnimalCreateManyCategoriaInput> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalCreateManyCategoriaInputEnvelopeToJson(this);
}

@_i1.jsonSerializable
class AnimalUpsertWithWhereUniqueWithoutCategoriaInput
    implements _i1.JsonSerializable {
  const AnimalUpsertWithWhereUniqueWithoutCategoriaInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory AnimalUpsertWithWhereUniqueWithoutCategoriaInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalUpsertWithWhereUniqueWithoutCategoriaInputFromJson(json);

  final AnimalWhereUniqueInput where;

  final AnimalUpdateWithoutCategoriaInput update;

  final AnimalCreateWithoutCategoriaInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalUpsertWithWhereUniqueWithoutCategoriaInputToJson(this);
}

@_i1.jsonSerializable
class AnimalUpdateWithWhereUniqueWithoutCategoriaInput
    implements _i1.JsonSerializable {
  const AnimalUpdateWithWhereUniqueWithoutCategoriaInput({
    required this.where,
    required this.data,
  });

  factory AnimalUpdateWithWhereUniqueWithoutCategoriaInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalUpdateWithWhereUniqueWithoutCategoriaInputFromJson(json);

  final AnimalWhereUniqueInput where;

  final AnimalUpdateWithoutCategoriaInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalUpdateWithWhereUniqueWithoutCategoriaInputToJson(this);
}

@_i1.jsonSerializable
class AnimalUpdateManyWithWhereWithoutCategoriaInput
    implements _i1.JsonSerializable {
  const AnimalUpdateManyWithWhereWithoutCategoriaInput({
    required this.where,
    required this.data,
  });

  factory AnimalUpdateManyWithWhereWithoutCategoriaInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalUpdateManyWithWhereWithoutCategoriaInputFromJson(json);

  final AnimalScalarWhereInput where;

  final AnimalUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalUpdateManyWithWhereWithoutCategoriaInputToJson(this);
}

@_i1.jsonSerializable
class AnimalScalarWhereInput implements _i1.JsonSerializable {
  const AnimalScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.codAnimal,
    this.codProdLeite,
    this.codCategoria,
    this.nome,
    this.dataNascimento,
    this.sexo,
    this.raca,
    this.idade,
    this.formaManejo,
    this.mediaLeite,
  });

  factory AnimalScalarWhereInput.fromJson(Map<String, dynamic> json) =>
      _$AnimalScalarWhereInputFromJson(json);

  final Iterable<AnimalScalarWhereInput>? AND;

  final Iterable<AnimalScalarWhereInput>? OR;

  final Iterable<AnimalScalarWhereInput>? NOT;

  final IntFilter? codAnimal;

  final IntFilter? codProdLeite;

  final IntFilter? codCategoria;

  final StringFilter? nome;

  final DateTimeFilter? dataNascimento;

  final StringFilter? sexo;

  final StringFilter? raca;

  final IntFilter? idade;

  final StringFilter? formaManejo;

  final FloatNullableFilter? mediaLeite;

  @override
  Map<String, dynamic> toJson() => _$AnimalScalarWhereInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalCreateWithoutCompradorInput implements _i1.JsonSerializable {
  const VendaanimalCreateWithoutCompradorInput({
    required this.codVendaAnimal,
    required this.dataVendaAnimal,
    required this.valorTotalAnimal,
    this.itensvenda,
  });

  factory VendaanimalCreateWithoutCompradorInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalCreateWithoutCompradorInputFromJson(json);

  final int codVendaAnimal;

  final DateTime dataVendaAnimal;

  final double valorTotalAnimal;

  final ItensvendaCreateNestedManyWithoutVendaanimalInput? itensvenda;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalCreateWithoutCompradorInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalUncheckedCreateWithoutCompradorInput
    implements _i1.JsonSerializable {
  const VendaanimalUncheckedCreateWithoutCompradorInput({
    required this.codVendaAnimal,
    required this.dataVendaAnimal,
    required this.valorTotalAnimal,
    this.itensvenda,
  });

  factory VendaanimalUncheckedCreateWithoutCompradorInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalUncheckedCreateWithoutCompradorInputFromJson(json);

  final int codVendaAnimal;

  final DateTime dataVendaAnimal;

  final double valorTotalAnimal;

  final ItensvendaUncheckedCreateNestedManyWithoutVendaanimalInput? itensvenda;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalUncheckedCreateWithoutCompradorInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalCreateOrConnectWithoutCompradorInput
    implements _i1.JsonSerializable {
  const VendaanimalCreateOrConnectWithoutCompradorInput({
    required this.where,
    required this.create,
  });

  factory VendaanimalCreateOrConnectWithoutCompradorInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalCreateOrConnectWithoutCompradorInputFromJson(json);

  final VendaanimalWhereUniqueInput where;

  final VendaanimalCreateWithoutCompradorInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalCreateOrConnectWithoutCompradorInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalCreateManyCompradorInputEnvelope
    implements _i1.JsonSerializable {
  const VendaanimalCreateManyCompradorInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  factory VendaanimalCreateManyCompradorInputEnvelope.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalCreateManyCompradorInputEnvelopeFromJson(json);

  final Iterable<VendaanimalCreateManyCompradorInput> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalCreateManyCompradorInputEnvelopeToJson(this);
}

@_i1.jsonSerializable
class VendaleiteCreateWithoutCompradorInput implements _i1.JsonSerializable {
  const VendaleiteCreateWithoutCompradorInput({
    required this.codVendaLeite,
    required this.dataVendaLeite,
    required this.valorTotalLeite,
    this.vendaprodleite,
  });

  factory VendaleiteCreateWithoutCompradorInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteCreateWithoutCompradorInputFromJson(json);

  final int codVendaLeite;

  final DateTime dataVendaLeite;

  final double valorTotalLeite;

  final VendaprodleiteCreateNestedManyWithoutVendaleiteInput? vendaprodleite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteCreateWithoutCompradorInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteUncheckedCreateWithoutCompradorInput
    implements _i1.JsonSerializable {
  const VendaleiteUncheckedCreateWithoutCompradorInput({
    required this.codVendaLeite,
    required this.dataVendaLeite,
    required this.valorTotalLeite,
    this.vendaprodleite,
  });

  factory VendaleiteUncheckedCreateWithoutCompradorInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteUncheckedCreateWithoutCompradorInputFromJson(json);

  final int codVendaLeite;

  final DateTime dataVendaLeite;

  final double valorTotalLeite;

  final VendaprodleiteUncheckedCreateNestedManyWithoutVendaleiteInput?
      vendaprodleite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteUncheckedCreateWithoutCompradorInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteCreateOrConnectWithoutCompradorInput
    implements _i1.JsonSerializable {
  const VendaleiteCreateOrConnectWithoutCompradorInput({
    required this.where,
    required this.create,
  });

  factory VendaleiteCreateOrConnectWithoutCompradorInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteCreateOrConnectWithoutCompradorInputFromJson(json);

  final VendaleiteWhereUniqueInput where;

  final VendaleiteCreateWithoutCompradorInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteCreateOrConnectWithoutCompradorInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteCreateManyCompradorInputEnvelope
    implements _i1.JsonSerializable {
  const VendaleiteCreateManyCompradorInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  factory VendaleiteCreateManyCompradorInputEnvelope.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteCreateManyCompradorInputEnvelopeFromJson(json);

  final Iterable<VendaleiteCreateManyCompradorInput> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteCreateManyCompradorInputEnvelopeToJson(this);
}

@_i1.jsonSerializable
class VendaanimalUpsertWithWhereUniqueWithoutCompradorInput
    implements _i1.JsonSerializable {
  const VendaanimalUpsertWithWhereUniqueWithoutCompradorInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory VendaanimalUpsertWithWhereUniqueWithoutCompradorInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalUpsertWithWhereUniqueWithoutCompradorInputFromJson(json);

  final VendaanimalWhereUniqueInput where;

  final VendaanimalUpdateWithoutCompradorInput update;

  final VendaanimalCreateWithoutCompradorInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalUpsertWithWhereUniqueWithoutCompradorInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalUpdateWithWhereUniqueWithoutCompradorInput
    implements _i1.JsonSerializable {
  const VendaanimalUpdateWithWhereUniqueWithoutCompradorInput({
    required this.where,
    required this.data,
  });

  factory VendaanimalUpdateWithWhereUniqueWithoutCompradorInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalUpdateWithWhereUniqueWithoutCompradorInputFromJson(json);

  final VendaanimalWhereUniqueInput where;

  final VendaanimalUpdateWithoutCompradorInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalUpdateWithWhereUniqueWithoutCompradorInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalUpdateManyWithWhereWithoutCompradorInput
    implements _i1.JsonSerializable {
  const VendaanimalUpdateManyWithWhereWithoutCompradorInput({
    required this.where,
    required this.data,
  });

  factory VendaanimalUpdateManyWithWhereWithoutCompradorInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalUpdateManyWithWhereWithoutCompradorInputFromJson(json);

  final VendaanimalScalarWhereInput where;

  final VendaanimalUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalUpdateManyWithWhereWithoutCompradorInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalScalarWhereInput implements _i1.JsonSerializable {
  const VendaanimalScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.codVendaAnimal,
    this.codComprador,
    this.dataVendaAnimal,
    this.valorTotalAnimal,
  });

  factory VendaanimalScalarWhereInput.fromJson(Map<String, dynamic> json) =>
      _$VendaanimalScalarWhereInputFromJson(json);

  final Iterable<VendaanimalScalarWhereInput>? AND;

  final Iterable<VendaanimalScalarWhereInput>? OR;

  final Iterable<VendaanimalScalarWhereInput>? NOT;

  final IntFilter? codVendaAnimal;

  final IntFilter? codComprador;

  final DateTimeFilter? dataVendaAnimal;

  final FloatFilter? valorTotalAnimal;

  @override
  Map<String, dynamic> toJson() => _$VendaanimalScalarWhereInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteUpsertWithWhereUniqueWithoutCompradorInput
    implements _i1.JsonSerializable {
  const VendaleiteUpsertWithWhereUniqueWithoutCompradorInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory VendaleiteUpsertWithWhereUniqueWithoutCompradorInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteUpsertWithWhereUniqueWithoutCompradorInputFromJson(json);

  final VendaleiteWhereUniqueInput where;

  final VendaleiteUpdateWithoutCompradorInput update;

  final VendaleiteCreateWithoutCompradorInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteUpsertWithWhereUniqueWithoutCompradorInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteUpdateWithWhereUniqueWithoutCompradorInput
    implements _i1.JsonSerializable {
  const VendaleiteUpdateWithWhereUniqueWithoutCompradorInput({
    required this.where,
    required this.data,
  });

  factory VendaleiteUpdateWithWhereUniqueWithoutCompradorInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteUpdateWithWhereUniqueWithoutCompradorInputFromJson(json);

  final VendaleiteWhereUniqueInput where;

  final VendaleiteUpdateWithoutCompradorInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteUpdateWithWhereUniqueWithoutCompradorInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteUpdateManyWithWhereWithoutCompradorInput
    implements _i1.JsonSerializable {
  const VendaleiteUpdateManyWithWhereWithoutCompradorInput({
    required this.where,
    required this.data,
  });

  factory VendaleiteUpdateManyWithWhereWithoutCompradorInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteUpdateManyWithWhereWithoutCompradorInputFromJson(json);

  final VendaleiteScalarWhereInput where;

  final VendaleiteUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteUpdateManyWithWhereWithoutCompradorInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteScalarWhereInput implements _i1.JsonSerializable {
  const VendaleiteScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.codVendaLeite,
    this.codComprador,
    this.dataVendaLeite,
    this.valorTotalLeite,
  });

  factory VendaleiteScalarWhereInput.fromJson(Map<String, dynamic> json) =>
      _$VendaleiteScalarWhereInputFromJson(json);

  final Iterable<VendaleiteScalarWhereInput>? AND;

  final Iterable<VendaleiteScalarWhereInput>? OR;

  final Iterable<VendaleiteScalarWhereInput>? NOT;

  final IntFilter? codVendaLeite;

  final IntFilter? codComprador;

  final DateTimeFilter? dataVendaLeite;

  final FloatFilter? valorTotalLeite;

  @override
  Map<String, dynamic> toJson() => _$VendaleiteScalarWhereInputToJson(this);
}

@_i1.jsonSerializable
class AnimalCreateWithoutItensvendaInput implements _i1.JsonSerializable {
  const AnimalCreateWithoutItensvendaInput({
    required this.codAnimal,
    required this.nome,
    required this.dataNascimento,
    required this.sexo,
    required this.raca,
    required this.idade,
    required this.formaManejo,
    this.mediaLeite,
    required this.categoria,
    required this.prodleite,
  });

  factory AnimalCreateWithoutItensvendaInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalCreateWithoutItensvendaInputFromJson(json);

  final int codAnimal;

  final String nome;

  final DateTime dataNascimento;

  final String sexo;

  final String raca;

  final int idade;

  final String formaManejo;

  final double? mediaLeite;

  final CategoriaCreateNestedOneWithoutAnimalInput categoria;

  final ProdleiteCreateNestedOneWithoutAnimalInput prodleite;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalCreateWithoutItensvendaInputToJson(this);
}

@_i1.jsonSerializable
class AnimalUncheckedCreateWithoutItensvendaInput
    implements _i1.JsonSerializable {
  const AnimalUncheckedCreateWithoutItensvendaInput({
    required this.codAnimal,
    required this.codProdLeite,
    required this.codCategoria,
    required this.nome,
    required this.dataNascimento,
    required this.sexo,
    required this.raca,
    required this.idade,
    required this.formaManejo,
    this.mediaLeite,
  });

  factory AnimalUncheckedCreateWithoutItensvendaInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalUncheckedCreateWithoutItensvendaInputFromJson(json);

  final int codAnimal;

  final int codProdLeite;

  final int codCategoria;

  final String nome;

  final DateTime dataNascimento;

  final String sexo;

  final String raca;

  final int idade;

  final String formaManejo;

  final double? mediaLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalUncheckedCreateWithoutItensvendaInputToJson(this);
}

@_i1.jsonSerializable
class AnimalCreateOrConnectWithoutItensvendaInput
    implements _i1.JsonSerializable {
  const AnimalCreateOrConnectWithoutItensvendaInput({
    required this.where,
    required this.create,
  });

  factory AnimalCreateOrConnectWithoutItensvendaInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalCreateOrConnectWithoutItensvendaInputFromJson(json);

  final AnimalWhereUniqueInput where;

  final AnimalCreateWithoutItensvendaInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalCreateOrConnectWithoutItensvendaInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalCreateWithoutItensvendaInput implements _i1.JsonSerializable {
  const VendaanimalCreateWithoutItensvendaInput({
    required this.codVendaAnimal,
    required this.dataVendaAnimal,
    required this.valorTotalAnimal,
    required this.comprador,
  });

  factory VendaanimalCreateWithoutItensvendaInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalCreateWithoutItensvendaInputFromJson(json);

  final int codVendaAnimal;

  final DateTime dataVendaAnimal;

  final double valorTotalAnimal;

  final CompradorCreateNestedOneWithoutVendaanimalInput comprador;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalCreateWithoutItensvendaInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalUncheckedCreateWithoutItensvendaInput
    implements _i1.JsonSerializable {
  const VendaanimalUncheckedCreateWithoutItensvendaInput({
    required this.codVendaAnimal,
    required this.codComprador,
    required this.dataVendaAnimal,
    required this.valorTotalAnimal,
  });

  factory VendaanimalUncheckedCreateWithoutItensvendaInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalUncheckedCreateWithoutItensvendaInputFromJson(json);

  final int codVendaAnimal;

  final int codComprador;

  final DateTime dataVendaAnimal;

  final double valorTotalAnimal;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalUncheckedCreateWithoutItensvendaInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalCreateOrConnectWithoutItensvendaInput
    implements _i1.JsonSerializable {
  const VendaanimalCreateOrConnectWithoutItensvendaInput({
    required this.where,
    required this.create,
  });

  factory VendaanimalCreateOrConnectWithoutItensvendaInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalCreateOrConnectWithoutItensvendaInputFromJson(json);

  final VendaanimalWhereUniqueInput where;

  final VendaanimalCreateWithoutItensvendaInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalCreateOrConnectWithoutItensvendaInputToJson(this);
}

@_i1.jsonSerializable
class AnimalUpsertWithoutItensvendaInput implements _i1.JsonSerializable {
  const AnimalUpsertWithoutItensvendaInput({
    required this.update,
    required this.create,
  });

  factory AnimalUpsertWithoutItensvendaInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalUpsertWithoutItensvendaInputFromJson(json);

  final AnimalUpdateWithoutItensvendaInput update;

  final AnimalCreateWithoutItensvendaInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalUpsertWithoutItensvendaInputToJson(this);
}

@_i1.jsonSerializable
class AnimalUpdateWithoutItensvendaInput implements _i1.JsonSerializable {
  const AnimalUpdateWithoutItensvendaInput({
    this.codAnimal,
    this.nome,
    this.dataNascimento,
    this.sexo,
    this.raca,
    this.idade,
    this.formaManejo,
    this.mediaLeite,
    this.categoria,
    this.prodleite,
  });

  factory AnimalUpdateWithoutItensvendaInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalUpdateWithoutItensvendaInputFromJson(json);

  final IntFieldUpdateOperationsInput? codAnimal;

  final StringFieldUpdateOperationsInput? nome;

  final DateTimeFieldUpdateOperationsInput? dataNascimento;

  final StringFieldUpdateOperationsInput? sexo;

  final StringFieldUpdateOperationsInput? raca;

  final IntFieldUpdateOperationsInput? idade;

  final StringFieldUpdateOperationsInput? formaManejo;

  final NullableFloatFieldUpdateOperationsInput? mediaLeite;

  final CategoriaUpdateOneRequiredWithoutAnimalNestedInput? categoria;

  final ProdleiteUpdateOneRequiredWithoutAnimalNestedInput? prodleite;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalUpdateWithoutItensvendaInputToJson(this);
}

@_i1.jsonSerializable
class AnimalUncheckedUpdateWithoutItensvendaInput
    implements _i1.JsonSerializable {
  const AnimalUncheckedUpdateWithoutItensvendaInput({
    this.codAnimal,
    this.codProdLeite,
    this.codCategoria,
    this.nome,
    this.dataNascimento,
    this.sexo,
    this.raca,
    this.idade,
    this.formaManejo,
    this.mediaLeite,
  });

  factory AnimalUncheckedUpdateWithoutItensvendaInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalUncheckedUpdateWithoutItensvendaInputFromJson(json);

  final IntFieldUpdateOperationsInput? codAnimal;

  final IntFieldUpdateOperationsInput? codProdLeite;

  final IntFieldUpdateOperationsInput? codCategoria;

  final StringFieldUpdateOperationsInput? nome;

  final DateTimeFieldUpdateOperationsInput? dataNascimento;

  final StringFieldUpdateOperationsInput? sexo;

  final StringFieldUpdateOperationsInput? raca;

  final IntFieldUpdateOperationsInput? idade;

  final StringFieldUpdateOperationsInput? formaManejo;

  final NullableFloatFieldUpdateOperationsInput? mediaLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalUncheckedUpdateWithoutItensvendaInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalUpsertWithoutItensvendaInput implements _i1.JsonSerializable {
  const VendaanimalUpsertWithoutItensvendaInput({
    required this.update,
    required this.create,
  });

  factory VendaanimalUpsertWithoutItensvendaInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalUpsertWithoutItensvendaInputFromJson(json);

  final VendaanimalUpdateWithoutItensvendaInput update;

  final VendaanimalCreateWithoutItensvendaInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalUpsertWithoutItensvendaInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalUpdateWithoutItensvendaInput implements _i1.JsonSerializable {
  const VendaanimalUpdateWithoutItensvendaInput({
    this.codVendaAnimal,
    this.dataVendaAnimal,
    this.valorTotalAnimal,
    this.comprador,
  });

  factory VendaanimalUpdateWithoutItensvendaInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalUpdateWithoutItensvendaInputFromJson(json);

  final IntFieldUpdateOperationsInput? codVendaAnimal;

  final DateTimeFieldUpdateOperationsInput? dataVendaAnimal;

  final FloatFieldUpdateOperationsInput? valorTotalAnimal;

  final CompradorUpdateOneRequiredWithoutVendaanimalNestedInput? comprador;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalUpdateWithoutItensvendaInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalUncheckedUpdateWithoutItensvendaInput
    implements _i1.JsonSerializable {
  const VendaanimalUncheckedUpdateWithoutItensvendaInput({
    this.codVendaAnimal,
    this.codComprador,
    this.dataVendaAnimal,
    this.valorTotalAnimal,
  });

  factory VendaanimalUncheckedUpdateWithoutItensvendaInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalUncheckedUpdateWithoutItensvendaInputFromJson(json);

  final IntFieldUpdateOperationsInput? codVendaAnimal;

  final IntFieldUpdateOperationsInput? codComprador;

  final DateTimeFieldUpdateOperationsInput? dataVendaAnimal;

  final FloatFieldUpdateOperationsInput? valorTotalAnimal;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalUncheckedUpdateWithoutItensvendaInputToJson(this);
}

@_i1.jsonSerializable
class AnimalCreateWithoutProdleiteInput implements _i1.JsonSerializable {
  const AnimalCreateWithoutProdleiteInput({
    required this.codAnimal,
    required this.nome,
    required this.dataNascimento,
    required this.sexo,
    required this.raca,
    required this.idade,
    required this.formaManejo,
    this.mediaLeite,
    required this.categoria,
    this.itensvenda,
  });

  factory AnimalCreateWithoutProdleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalCreateWithoutProdleiteInputFromJson(json);

  final int codAnimal;

  final String nome;

  final DateTime dataNascimento;

  final String sexo;

  final String raca;

  final int idade;

  final String formaManejo;

  final double? mediaLeite;

  final CategoriaCreateNestedOneWithoutAnimalInput categoria;

  final ItensvendaCreateNestedManyWithoutAnimalInput? itensvenda;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalCreateWithoutProdleiteInputToJson(this);
}

@_i1.jsonSerializable
class AnimalUncheckedCreateWithoutProdleiteInput
    implements _i1.JsonSerializable {
  const AnimalUncheckedCreateWithoutProdleiteInput({
    required this.codAnimal,
    required this.codCategoria,
    required this.nome,
    required this.dataNascimento,
    required this.sexo,
    required this.raca,
    required this.idade,
    required this.formaManejo,
    this.mediaLeite,
    this.itensvenda,
  });

  factory AnimalUncheckedCreateWithoutProdleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalUncheckedCreateWithoutProdleiteInputFromJson(json);

  final int codAnimal;

  final int codCategoria;

  final String nome;

  final DateTime dataNascimento;

  final String sexo;

  final String raca;

  final int idade;

  final String formaManejo;

  final double? mediaLeite;

  final ItensvendaUncheckedCreateNestedManyWithoutAnimalInput? itensvenda;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalUncheckedCreateWithoutProdleiteInputToJson(this);
}

@_i1.jsonSerializable
class AnimalCreateOrConnectWithoutProdleiteInput
    implements _i1.JsonSerializable {
  const AnimalCreateOrConnectWithoutProdleiteInput({
    required this.where,
    required this.create,
  });

  factory AnimalCreateOrConnectWithoutProdleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalCreateOrConnectWithoutProdleiteInputFromJson(json);

  final AnimalWhereUniqueInput where;

  final AnimalCreateWithoutProdleiteInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalCreateOrConnectWithoutProdleiteInputToJson(this);
}

@_i1.jsonSerializable
class AnimalCreateManyProdleiteInputEnvelope implements _i1.JsonSerializable {
  const AnimalCreateManyProdleiteInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  factory AnimalCreateManyProdleiteInputEnvelope.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalCreateManyProdleiteInputEnvelopeFromJson(json);

  final Iterable<AnimalCreateManyProdleiteInput> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalCreateManyProdleiteInputEnvelopeToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteCreateWithoutProdleiteInput
    implements _i1.JsonSerializable {
  const VendaprodleiteCreateWithoutProdleiteInput({
    required this.codVendaProdLeite,
    required this.qtdLeite,
    required this.valorLitro,
    required this.valorTotalItemLeite,
    required this.vendaleite,
  });

  factory VendaprodleiteCreateWithoutProdleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteCreateWithoutProdleiteInputFromJson(json);

  final int codVendaProdLeite;

  final double qtdLeite;

  final double valorLitro;

  final double valorTotalItemLeite;

  final VendaleiteCreateNestedOneWithoutVendaprodleiteInput vendaleite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteCreateWithoutProdleiteInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteUncheckedCreateWithoutProdleiteInput
    implements _i1.JsonSerializable {
  const VendaprodleiteUncheckedCreateWithoutProdleiteInput({
    required this.codVendaProdLeite,
    required this.codVendaLeite,
    required this.qtdLeite,
    required this.valorLitro,
    required this.valorTotalItemLeite,
  });

  factory VendaprodleiteUncheckedCreateWithoutProdleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteUncheckedCreateWithoutProdleiteInputFromJson(json);

  final int codVendaProdLeite;

  final int codVendaLeite;

  final double qtdLeite;

  final double valorLitro;

  final double valorTotalItemLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteUncheckedCreateWithoutProdleiteInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteCreateOrConnectWithoutProdleiteInput
    implements _i1.JsonSerializable {
  const VendaprodleiteCreateOrConnectWithoutProdleiteInput({
    required this.where,
    required this.create,
  });

  factory VendaprodleiteCreateOrConnectWithoutProdleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteCreateOrConnectWithoutProdleiteInputFromJson(json);

  final VendaprodleiteWhereUniqueInput where;

  final VendaprodleiteCreateWithoutProdleiteInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteCreateOrConnectWithoutProdleiteInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteCreateManyProdleiteInputEnvelope
    implements _i1.JsonSerializable {
  const VendaprodleiteCreateManyProdleiteInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  factory VendaprodleiteCreateManyProdleiteInputEnvelope.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteCreateManyProdleiteInputEnvelopeFromJson(json);

  final Iterable<VendaprodleiteCreateManyProdleiteInput> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteCreateManyProdleiteInputEnvelopeToJson(this);
}

@_i1.jsonSerializable
class AnimalUpsertWithWhereUniqueWithoutProdleiteInput
    implements _i1.JsonSerializable {
  const AnimalUpsertWithWhereUniqueWithoutProdleiteInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory AnimalUpsertWithWhereUniqueWithoutProdleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalUpsertWithWhereUniqueWithoutProdleiteInputFromJson(json);

  final AnimalWhereUniqueInput where;

  final AnimalUpdateWithoutProdleiteInput update;

  final AnimalCreateWithoutProdleiteInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalUpsertWithWhereUniqueWithoutProdleiteInputToJson(this);
}

@_i1.jsonSerializable
class AnimalUpdateWithWhereUniqueWithoutProdleiteInput
    implements _i1.JsonSerializable {
  const AnimalUpdateWithWhereUniqueWithoutProdleiteInput({
    required this.where,
    required this.data,
  });

  factory AnimalUpdateWithWhereUniqueWithoutProdleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalUpdateWithWhereUniqueWithoutProdleiteInputFromJson(json);

  final AnimalWhereUniqueInput where;

  final AnimalUpdateWithoutProdleiteInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalUpdateWithWhereUniqueWithoutProdleiteInputToJson(this);
}

@_i1.jsonSerializable
class AnimalUpdateManyWithWhereWithoutProdleiteInput
    implements _i1.JsonSerializable {
  const AnimalUpdateManyWithWhereWithoutProdleiteInput({
    required this.where,
    required this.data,
  });

  factory AnimalUpdateManyWithWhereWithoutProdleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalUpdateManyWithWhereWithoutProdleiteInputFromJson(json);

  final AnimalScalarWhereInput where;

  final AnimalUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalUpdateManyWithWhereWithoutProdleiteInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteUpsertWithWhereUniqueWithoutProdleiteInput
    implements _i1.JsonSerializable {
  const VendaprodleiteUpsertWithWhereUniqueWithoutProdleiteInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory VendaprodleiteUpsertWithWhereUniqueWithoutProdleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteUpsertWithWhereUniqueWithoutProdleiteInputFromJson(json);

  final VendaprodleiteWhereUniqueInput where;

  final VendaprodleiteUpdateWithoutProdleiteInput update;

  final VendaprodleiteCreateWithoutProdleiteInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteUpsertWithWhereUniqueWithoutProdleiteInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteUpdateWithWhereUniqueWithoutProdleiteInput
    implements _i1.JsonSerializable {
  const VendaprodleiteUpdateWithWhereUniqueWithoutProdleiteInput({
    required this.where,
    required this.data,
  });

  factory VendaprodleiteUpdateWithWhereUniqueWithoutProdleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteUpdateWithWhereUniqueWithoutProdleiteInputFromJson(json);

  final VendaprodleiteWhereUniqueInput where;

  final VendaprodleiteUpdateWithoutProdleiteInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteUpdateWithWhereUniqueWithoutProdleiteInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteUpdateManyWithWhereWithoutProdleiteInput
    implements _i1.JsonSerializable {
  const VendaprodleiteUpdateManyWithWhereWithoutProdleiteInput({
    required this.where,
    required this.data,
  });

  factory VendaprodleiteUpdateManyWithWhereWithoutProdleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteUpdateManyWithWhereWithoutProdleiteInputFromJson(json);

  final VendaprodleiteScalarWhereInput where;

  final VendaprodleiteUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteUpdateManyWithWhereWithoutProdleiteInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteScalarWhereInput implements _i1.JsonSerializable {
  const VendaprodleiteScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.codVendaProdLeite,
    this.codVendaLeite,
    this.codProdLeite,
    this.qtdLeite,
    this.valorLitro,
    this.valorTotalItemLeite,
  });

  factory VendaprodleiteScalarWhereInput.fromJson(Map<String, dynamic> json) =>
      _$VendaprodleiteScalarWhereInputFromJson(json);

  final Iterable<VendaprodleiteScalarWhereInput>? AND;

  final Iterable<VendaprodleiteScalarWhereInput>? OR;

  final Iterable<VendaprodleiteScalarWhereInput>? NOT;

  final IntFilter? codVendaProdLeite;

  final IntFilter? codVendaLeite;

  final IntFilter? codProdLeite;

  final FloatFilter? qtdLeite;

  final FloatFilter? valorLitro;

  final FloatFilter? valorTotalItemLeite;

  @override
  Map<String, dynamic> toJson() => _$VendaprodleiteScalarWhereInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaCreateWithoutVendaanimalInput implements _i1.JsonSerializable {
  const ItensvendaCreateWithoutVendaanimalInput({
    required this.codItensVenda,
    required this.quantidade,
    required this.valorUnitario,
    required this.valorTotalItemAnimal,
    required this.animal,
  });

  factory ItensvendaCreateWithoutVendaanimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaCreateWithoutVendaanimalInputFromJson(json);

  final int codItensVenda;

  final int quantidade;

  final double valorUnitario;

  final double valorTotalItemAnimal;

  final AnimalCreateNestedOneWithoutItensvendaInput animal;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaCreateWithoutVendaanimalInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaUncheckedCreateWithoutVendaanimalInput
    implements _i1.JsonSerializable {
  const ItensvendaUncheckedCreateWithoutVendaanimalInput({
    required this.codItensVenda,
    required this.codAnimal,
    required this.quantidade,
    required this.valorUnitario,
    required this.valorTotalItemAnimal,
  });

  factory ItensvendaUncheckedCreateWithoutVendaanimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaUncheckedCreateWithoutVendaanimalInputFromJson(json);

  final int codItensVenda;

  final int codAnimal;

  final int quantidade;

  final double valorUnitario;

  final double valorTotalItemAnimal;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaUncheckedCreateWithoutVendaanimalInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaCreateOrConnectWithoutVendaanimalInput
    implements _i1.JsonSerializable {
  const ItensvendaCreateOrConnectWithoutVendaanimalInput({
    required this.where,
    required this.create,
  });

  factory ItensvendaCreateOrConnectWithoutVendaanimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaCreateOrConnectWithoutVendaanimalInputFromJson(json);

  final ItensvendaWhereUniqueInput where;

  final ItensvendaCreateWithoutVendaanimalInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaCreateOrConnectWithoutVendaanimalInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaCreateManyVendaanimalInputEnvelope
    implements _i1.JsonSerializable {
  const ItensvendaCreateManyVendaanimalInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  factory ItensvendaCreateManyVendaanimalInputEnvelope.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaCreateManyVendaanimalInputEnvelopeFromJson(json);

  final Iterable<ItensvendaCreateManyVendaanimalInput> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaCreateManyVendaanimalInputEnvelopeToJson(this);
}

@_i1.jsonSerializable
class CompradorCreateWithoutVendaanimalInput implements _i1.JsonSerializable {
  const CompradorCreateWithoutVendaanimalInput({
    required this.codComprador,
    required this.nome,
    required this.telefone,
    required this.endereco,
    this.vendaleite,
  });

  factory CompradorCreateWithoutVendaanimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$CompradorCreateWithoutVendaanimalInputFromJson(json);

  final int codComprador;

  final String nome;

  final String telefone;

  final String endereco;

  final VendaleiteCreateNestedManyWithoutCompradorInput? vendaleite;

  @override
  Map<String, dynamic> toJson() =>
      _$CompradorCreateWithoutVendaanimalInputToJson(this);
}

@_i1.jsonSerializable
class CompradorUncheckedCreateWithoutVendaanimalInput
    implements _i1.JsonSerializable {
  const CompradorUncheckedCreateWithoutVendaanimalInput({
    required this.codComprador,
    required this.nome,
    required this.telefone,
    required this.endereco,
    this.vendaleite,
  });

  factory CompradorUncheckedCreateWithoutVendaanimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$CompradorUncheckedCreateWithoutVendaanimalInputFromJson(json);

  final int codComprador;

  final String nome;

  final String telefone;

  final String endereco;

  final VendaleiteUncheckedCreateNestedManyWithoutCompradorInput? vendaleite;

  @override
  Map<String, dynamic> toJson() =>
      _$CompradorUncheckedCreateWithoutVendaanimalInputToJson(this);
}

@_i1.jsonSerializable
class CompradorCreateOrConnectWithoutVendaanimalInput
    implements _i1.JsonSerializable {
  const CompradorCreateOrConnectWithoutVendaanimalInput({
    required this.where,
    required this.create,
  });

  factory CompradorCreateOrConnectWithoutVendaanimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$CompradorCreateOrConnectWithoutVendaanimalInputFromJson(json);

  final CompradorWhereUniqueInput where;

  final CompradorCreateWithoutVendaanimalInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$CompradorCreateOrConnectWithoutVendaanimalInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaUpsertWithWhereUniqueWithoutVendaanimalInput
    implements _i1.JsonSerializable {
  const ItensvendaUpsertWithWhereUniqueWithoutVendaanimalInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory ItensvendaUpsertWithWhereUniqueWithoutVendaanimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaUpsertWithWhereUniqueWithoutVendaanimalInputFromJson(json);

  final ItensvendaWhereUniqueInput where;

  final ItensvendaUpdateWithoutVendaanimalInput update;

  final ItensvendaCreateWithoutVendaanimalInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaUpsertWithWhereUniqueWithoutVendaanimalInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaUpdateWithWhereUniqueWithoutVendaanimalInput
    implements _i1.JsonSerializable {
  const ItensvendaUpdateWithWhereUniqueWithoutVendaanimalInput({
    required this.where,
    required this.data,
  });

  factory ItensvendaUpdateWithWhereUniqueWithoutVendaanimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaUpdateWithWhereUniqueWithoutVendaanimalInputFromJson(json);

  final ItensvendaWhereUniqueInput where;

  final ItensvendaUpdateWithoutVendaanimalInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaUpdateWithWhereUniqueWithoutVendaanimalInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaUpdateManyWithWhereWithoutVendaanimalInput
    implements _i1.JsonSerializable {
  const ItensvendaUpdateManyWithWhereWithoutVendaanimalInput({
    required this.where,
    required this.data,
  });

  factory ItensvendaUpdateManyWithWhereWithoutVendaanimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaUpdateManyWithWhereWithoutVendaanimalInputFromJson(json);

  final ItensvendaScalarWhereInput where;

  final ItensvendaUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaUpdateManyWithWhereWithoutVendaanimalInputToJson(this);
}

@_i1.jsonSerializable
class CompradorUpsertWithoutVendaanimalInput implements _i1.JsonSerializable {
  const CompradorUpsertWithoutVendaanimalInput({
    required this.update,
    required this.create,
  });

  factory CompradorUpsertWithoutVendaanimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$CompradorUpsertWithoutVendaanimalInputFromJson(json);

  final CompradorUpdateWithoutVendaanimalInput update;

  final CompradorCreateWithoutVendaanimalInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$CompradorUpsertWithoutVendaanimalInputToJson(this);
}

@_i1.jsonSerializable
class CompradorUpdateWithoutVendaanimalInput implements _i1.JsonSerializable {
  const CompradorUpdateWithoutVendaanimalInput({
    this.codComprador,
    this.nome,
    this.telefone,
    this.endereco,
    this.vendaleite,
  });

  factory CompradorUpdateWithoutVendaanimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$CompradorUpdateWithoutVendaanimalInputFromJson(json);

  final IntFieldUpdateOperationsInput? codComprador;

  final StringFieldUpdateOperationsInput? nome;

  final StringFieldUpdateOperationsInput? telefone;

  final StringFieldUpdateOperationsInput? endereco;

  final VendaleiteUpdateManyWithoutCompradorNestedInput? vendaleite;

  @override
  Map<String, dynamic> toJson() =>
      _$CompradorUpdateWithoutVendaanimalInputToJson(this);
}

@_i1.jsonSerializable
class CompradorUncheckedUpdateWithoutVendaanimalInput
    implements _i1.JsonSerializable {
  const CompradorUncheckedUpdateWithoutVendaanimalInput({
    this.codComprador,
    this.nome,
    this.telefone,
    this.endereco,
    this.vendaleite,
  });

  factory CompradorUncheckedUpdateWithoutVendaanimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$CompradorUncheckedUpdateWithoutVendaanimalInputFromJson(json);

  final IntFieldUpdateOperationsInput? codComprador;

  final StringFieldUpdateOperationsInput? nome;

  final StringFieldUpdateOperationsInput? telefone;

  final StringFieldUpdateOperationsInput? endereco;

  final VendaleiteUncheckedUpdateManyWithoutCompradorNestedInput? vendaleite;

  @override
  Map<String, dynamic> toJson() =>
      _$CompradorUncheckedUpdateWithoutVendaanimalInputToJson(this);
}

@_i1.jsonSerializable
class CompradorCreateWithoutVendaleiteInput implements _i1.JsonSerializable {
  const CompradorCreateWithoutVendaleiteInput({
    required this.codComprador,
    required this.nome,
    required this.telefone,
    required this.endereco,
    this.vendaanimal,
  });

  factory CompradorCreateWithoutVendaleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$CompradorCreateWithoutVendaleiteInputFromJson(json);

  final int codComprador;

  final String nome;

  final String telefone;

  final String endereco;

  final VendaanimalCreateNestedManyWithoutCompradorInput? vendaanimal;

  @override
  Map<String, dynamic> toJson() =>
      _$CompradorCreateWithoutVendaleiteInputToJson(this);
}

@_i1.jsonSerializable
class CompradorUncheckedCreateWithoutVendaleiteInput
    implements _i1.JsonSerializable {
  const CompradorUncheckedCreateWithoutVendaleiteInput({
    required this.codComprador,
    required this.nome,
    required this.telefone,
    required this.endereco,
    this.vendaanimal,
  });

  factory CompradorUncheckedCreateWithoutVendaleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$CompradorUncheckedCreateWithoutVendaleiteInputFromJson(json);

  final int codComprador;

  final String nome;

  final String telefone;

  final String endereco;

  final VendaanimalUncheckedCreateNestedManyWithoutCompradorInput? vendaanimal;

  @override
  Map<String, dynamic> toJson() =>
      _$CompradorUncheckedCreateWithoutVendaleiteInputToJson(this);
}

@_i1.jsonSerializable
class CompradorCreateOrConnectWithoutVendaleiteInput
    implements _i1.JsonSerializable {
  const CompradorCreateOrConnectWithoutVendaleiteInput({
    required this.where,
    required this.create,
  });

  factory CompradorCreateOrConnectWithoutVendaleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$CompradorCreateOrConnectWithoutVendaleiteInputFromJson(json);

  final CompradorWhereUniqueInput where;

  final CompradorCreateWithoutVendaleiteInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$CompradorCreateOrConnectWithoutVendaleiteInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteCreateWithoutVendaleiteInput
    implements _i1.JsonSerializable {
  const VendaprodleiteCreateWithoutVendaleiteInput({
    required this.codVendaProdLeite,
    required this.qtdLeite,
    required this.valorLitro,
    required this.valorTotalItemLeite,
    required this.prodleite,
  });

  factory VendaprodleiteCreateWithoutVendaleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteCreateWithoutVendaleiteInputFromJson(json);

  final int codVendaProdLeite;

  final double qtdLeite;

  final double valorLitro;

  final double valorTotalItemLeite;

  final ProdleiteCreateNestedOneWithoutVendaprodleiteInput prodleite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteCreateWithoutVendaleiteInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteUncheckedCreateWithoutVendaleiteInput
    implements _i1.JsonSerializable {
  const VendaprodleiteUncheckedCreateWithoutVendaleiteInput({
    required this.codVendaProdLeite,
    required this.codProdLeite,
    required this.qtdLeite,
    required this.valorLitro,
    required this.valorTotalItemLeite,
  });

  factory VendaprodleiteUncheckedCreateWithoutVendaleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteUncheckedCreateWithoutVendaleiteInputFromJson(json);

  final int codVendaProdLeite;

  final int codProdLeite;

  final double qtdLeite;

  final double valorLitro;

  final double valorTotalItemLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteUncheckedCreateWithoutVendaleiteInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteCreateOrConnectWithoutVendaleiteInput
    implements _i1.JsonSerializable {
  const VendaprodleiteCreateOrConnectWithoutVendaleiteInput({
    required this.where,
    required this.create,
  });

  factory VendaprodleiteCreateOrConnectWithoutVendaleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteCreateOrConnectWithoutVendaleiteInputFromJson(json);

  final VendaprodleiteWhereUniqueInput where;

  final VendaprodleiteCreateWithoutVendaleiteInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteCreateOrConnectWithoutVendaleiteInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteCreateManyVendaleiteInputEnvelope
    implements _i1.JsonSerializable {
  const VendaprodleiteCreateManyVendaleiteInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  factory VendaprodleiteCreateManyVendaleiteInputEnvelope.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteCreateManyVendaleiteInputEnvelopeFromJson(json);

  final Iterable<VendaprodleiteCreateManyVendaleiteInput> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteCreateManyVendaleiteInputEnvelopeToJson(this);
}

@_i1.jsonSerializable
class CompradorUpsertWithoutVendaleiteInput implements _i1.JsonSerializable {
  const CompradorUpsertWithoutVendaleiteInput({
    required this.update,
    required this.create,
  });

  factory CompradorUpsertWithoutVendaleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$CompradorUpsertWithoutVendaleiteInputFromJson(json);

  final CompradorUpdateWithoutVendaleiteInput update;

  final CompradorCreateWithoutVendaleiteInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$CompradorUpsertWithoutVendaleiteInputToJson(this);
}

@_i1.jsonSerializable
class CompradorUpdateWithoutVendaleiteInput implements _i1.JsonSerializable {
  const CompradorUpdateWithoutVendaleiteInput({
    this.codComprador,
    this.nome,
    this.telefone,
    this.endereco,
    this.vendaanimal,
  });

  factory CompradorUpdateWithoutVendaleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$CompradorUpdateWithoutVendaleiteInputFromJson(json);

  final IntFieldUpdateOperationsInput? codComprador;

  final StringFieldUpdateOperationsInput? nome;

  final StringFieldUpdateOperationsInput? telefone;

  final StringFieldUpdateOperationsInput? endereco;

  final VendaanimalUpdateManyWithoutCompradorNestedInput? vendaanimal;

  @override
  Map<String, dynamic> toJson() =>
      _$CompradorUpdateWithoutVendaleiteInputToJson(this);
}

@_i1.jsonSerializable
class CompradorUncheckedUpdateWithoutVendaleiteInput
    implements _i1.JsonSerializable {
  const CompradorUncheckedUpdateWithoutVendaleiteInput({
    this.codComprador,
    this.nome,
    this.telefone,
    this.endereco,
    this.vendaanimal,
  });

  factory CompradorUncheckedUpdateWithoutVendaleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$CompradorUncheckedUpdateWithoutVendaleiteInputFromJson(json);

  final IntFieldUpdateOperationsInput? codComprador;

  final StringFieldUpdateOperationsInput? nome;

  final StringFieldUpdateOperationsInput? telefone;

  final StringFieldUpdateOperationsInput? endereco;

  final VendaanimalUncheckedUpdateManyWithoutCompradorNestedInput? vendaanimal;

  @override
  Map<String, dynamic> toJson() =>
      _$CompradorUncheckedUpdateWithoutVendaleiteInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteUpsertWithWhereUniqueWithoutVendaleiteInput
    implements _i1.JsonSerializable {
  const VendaprodleiteUpsertWithWhereUniqueWithoutVendaleiteInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory VendaprodleiteUpsertWithWhereUniqueWithoutVendaleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteUpsertWithWhereUniqueWithoutVendaleiteInputFromJson(json);

  final VendaprodleiteWhereUniqueInput where;

  final VendaprodleiteUpdateWithoutVendaleiteInput update;

  final VendaprodleiteCreateWithoutVendaleiteInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteUpsertWithWhereUniqueWithoutVendaleiteInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteUpdateWithWhereUniqueWithoutVendaleiteInput
    implements _i1.JsonSerializable {
  const VendaprodleiteUpdateWithWhereUniqueWithoutVendaleiteInput({
    required this.where,
    required this.data,
  });

  factory VendaprodleiteUpdateWithWhereUniqueWithoutVendaleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteUpdateWithWhereUniqueWithoutVendaleiteInputFromJson(json);

  final VendaprodleiteWhereUniqueInput where;

  final VendaprodleiteUpdateWithoutVendaleiteInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteUpdateWithWhereUniqueWithoutVendaleiteInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteUpdateManyWithWhereWithoutVendaleiteInput
    implements _i1.JsonSerializable {
  const VendaprodleiteUpdateManyWithWhereWithoutVendaleiteInput({
    required this.where,
    required this.data,
  });

  factory VendaprodleiteUpdateManyWithWhereWithoutVendaleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteUpdateManyWithWhereWithoutVendaleiteInputFromJson(json);

  final VendaprodleiteScalarWhereInput where;

  final VendaprodleiteUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteUpdateManyWithWhereWithoutVendaleiteInputToJson(this);
}

@_i1.jsonSerializable
class ProdleiteCreateWithoutVendaprodleiteInput
    implements _i1.JsonSerializable {
  const ProdleiteCreateWithoutVendaprodleiteInput({
    required this.codProdLeite,
    required this.dataProdLeite,
    required this.qtdProdLeite,
    this.animal,
  });

  factory ProdleiteCreateWithoutVendaprodleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProdleiteCreateWithoutVendaprodleiteInputFromJson(json);

  final int codProdLeite;

  final DateTime dataProdLeite;

  final double qtdProdLeite;

  final AnimalCreateNestedManyWithoutProdleiteInput? animal;

  @override
  Map<String, dynamic> toJson() =>
      _$ProdleiteCreateWithoutVendaprodleiteInputToJson(this);
}

@_i1.jsonSerializable
class ProdleiteUncheckedCreateWithoutVendaprodleiteInput
    implements _i1.JsonSerializable {
  const ProdleiteUncheckedCreateWithoutVendaprodleiteInput({
    required this.codProdLeite,
    required this.dataProdLeite,
    required this.qtdProdLeite,
    this.animal,
  });

  factory ProdleiteUncheckedCreateWithoutVendaprodleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProdleiteUncheckedCreateWithoutVendaprodleiteInputFromJson(json);

  final int codProdLeite;

  final DateTime dataProdLeite;

  final double qtdProdLeite;

  final AnimalUncheckedCreateNestedManyWithoutProdleiteInput? animal;

  @override
  Map<String, dynamic> toJson() =>
      _$ProdleiteUncheckedCreateWithoutVendaprodleiteInputToJson(this);
}

@_i1.jsonSerializable
class ProdleiteCreateOrConnectWithoutVendaprodleiteInput
    implements _i1.JsonSerializable {
  const ProdleiteCreateOrConnectWithoutVendaprodleiteInput({
    required this.where,
    required this.create,
  });

  factory ProdleiteCreateOrConnectWithoutVendaprodleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProdleiteCreateOrConnectWithoutVendaprodleiteInputFromJson(json);

  final ProdleiteWhereUniqueInput where;

  final ProdleiteCreateWithoutVendaprodleiteInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$ProdleiteCreateOrConnectWithoutVendaprodleiteInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteCreateWithoutVendaprodleiteInput
    implements _i1.JsonSerializable {
  const VendaleiteCreateWithoutVendaprodleiteInput({
    required this.codVendaLeite,
    required this.dataVendaLeite,
    required this.valorTotalLeite,
    required this.comprador,
  });

  factory VendaleiteCreateWithoutVendaprodleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteCreateWithoutVendaprodleiteInputFromJson(json);

  final int codVendaLeite;

  final DateTime dataVendaLeite;

  final double valorTotalLeite;

  final CompradorCreateNestedOneWithoutVendaleiteInput comprador;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteCreateWithoutVendaprodleiteInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteUncheckedCreateWithoutVendaprodleiteInput
    implements _i1.JsonSerializable {
  const VendaleiteUncheckedCreateWithoutVendaprodleiteInput({
    required this.codVendaLeite,
    required this.codComprador,
    required this.dataVendaLeite,
    required this.valorTotalLeite,
  });

  factory VendaleiteUncheckedCreateWithoutVendaprodleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteUncheckedCreateWithoutVendaprodleiteInputFromJson(json);

  final int codVendaLeite;

  final int codComprador;

  final DateTime dataVendaLeite;

  final double valorTotalLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteUncheckedCreateWithoutVendaprodleiteInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteCreateOrConnectWithoutVendaprodleiteInput
    implements _i1.JsonSerializable {
  const VendaleiteCreateOrConnectWithoutVendaprodleiteInput({
    required this.where,
    required this.create,
  });

  factory VendaleiteCreateOrConnectWithoutVendaprodleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteCreateOrConnectWithoutVendaprodleiteInputFromJson(json);

  final VendaleiteWhereUniqueInput where;

  final VendaleiteCreateWithoutVendaprodleiteInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteCreateOrConnectWithoutVendaprodleiteInputToJson(this);
}

@_i1.jsonSerializable
class ProdleiteUpsertWithoutVendaprodleiteInput
    implements _i1.JsonSerializable {
  const ProdleiteUpsertWithoutVendaprodleiteInput({
    required this.update,
    required this.create,
  });

  factory ProdleiteUpsertWithoutVendaprodleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProdleiteUpsertWithoutVendaprodleiteInputFromJson(json);

  final ProdleiteUpdateWithoutVendaprodleiteInput update;

  final ProdleiteCreateWithoutVendaprodleiteInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$ProdleiteUpsertWithoutVendaprodleiteInputToJson(this);
}

@_i1.jsonSerializable
class ProdleiteUpdateWithoutVendaprodleiteInput
    implements _i1.JsonSerializable {
  const ProdleiteUpdateWithoutVendaprodleiteInput({
    this.codProdLeite,
    this.dataProdLeite,
    this.qtdProdLeite,
    this.animal,
  });

  factory ProdleiteUpdateWithoutVendaprodleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProdleiteUpdateWithoutVendaprodleiteInputFromJson(json);

  final IntFieldUpdateOperationsInput? codProdLeite;

  final DateTimeFieldUpdateOperationsInput? dataProdLeite;

  final FloatFieldUpdateOperationsInput? qtdProdLeite;

  final AnimalUpdateManyWithoutProdleiteNestedInput? animal;

  @override
  Map<String, dynamic> toJson() =>
      _$ProdleiteUpdateWithoutVendaprodleiteInputToJson(this);
}

@_i1.jsonSerializable
class ProdleiteUncheckedUpdateWithoutVendaprodleiteInput
    implements _i1.JsonSerializable {
  const ProdleiteUncheckedUpdateWithoutVendaprodleiteInput({
    this.codProdLeite,
    this.dataProdLeite,
    this.qtdProdLeite,
    this.animal,
  });

  factory ProdleiteUncheckedUpdateWithoutVendaprodleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProdleiteUncheckedUpdateWithoutVendaprodleiteInputFromJson(json);

  final IntFieldUpdateOperationsInput? codProdLeite;

  final DateTimeFieldUpdateOperationsInput? dataProdLeite;

  final FloatFieldUpdateOperationsInput? qtdProdLeite;

  final AnimalUncheckedUpdateManyWithoutProdleiteNestedInput? animal;

  @override
  Map<String, dynamic> toJson() =>
      _$ProdleiteUncheckedUpdateWithoutVendaprodleiteInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteUpsertWithoutVendaprodleiteInput
    implements _i1.JsonSerializable {
  const VendaleiteUpsertWithoutVendaprodleiteInput({
    required this.update,
    required this.create,
  });

  factory VendaleiteUpsertWithoutVendaprodleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteUpsertWithoutVendaprodleiteInputFromJson(json);

  final VendaleiteUpdateWithoutVendaprodleiteInput update;

  final VendaleiteCreateWithoutVendaprodleiteInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteUpsertWithoutVendaprodleiteInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteUpdateWithoutVendaprodleiteInput
    implements _i1.JsonSerializable {
  const VendaleiteUpdateWithoutVendaprodleiteInput({
    this.codVendaLeite,
    this.dataVendaLeite,
    this.valorTotalLeite,
    this.comprador,
  });

  factory VendaleiteUpdateWithoutVendaprodleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteUpdateWithoutVendaprodleiteInputFromJson(json);

  final IntFieldUpdateOperationsInput? codVendaLeite;

  final DateTimeFieldUpdateOperationsInput? dataVendaLeite;

  final FloatFieldUpdateOperationsInput? valorTotalLeite;

  final CompradorUpdateOneRequiredWithoutVendaleiteNestedInput? comprador;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteUpdateWithoutVendaprodleiteInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteUncheckedUpdateWithoutVendaprodleiteInput
    implements _i1.JsonSerializable {
  const VendaleiteUncheckedUpdateWithoutVendaprodleiteInput({
    this.codVendaLeite,
    this.codComprador,
    this.dataVendaLeite,
    this.valorTotalLeite,
  });

  factory VendaleiteUncheckedUpdateWithoutVendaprodleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteUncheckedUpdateWithoutVendaprodleiteInputFromJson(json);

  final IntFieldUpdateOperationsInput? codVendaLeite;

  final IntFieldUpdateOperationsInput? codComprador;

  final DateTimeFieldUpdateOperationsInput? dataVendaLeite;

  final FloatFieldUpdateOperationsInput? valorTotalLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteUncheckedUpdateWithoutVendaprodleiteInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaCreateManyAnimalInput implements _i1.JsonSerializable {
  const ItensvendaCreateManyAnimalInput({
    required this.codItensVenda,
    required this.codVendaAnimal,
    required this.quantidade,
    required this.valorUnitario,
    required this.valorTotalItemAnimal,
  });

  factory ItensvendaCreateManyAnimalInput.fromJson(Map<String, dynamic> json) =>
      _$ItensvendaCreateManyAnimalInputFromJson(json);

  final int codItensVenda;

  final int codVendaAnimal;

  final int quantidade;

  final double valorUnitario;

  final double valorTotalItemAnimal;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaCreateManyAnimalInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaUpdateWithoutAnimalInput implements _i1.JsonSerializable {
  const ItensvendaUpdateWithoutAnimalInput({
    this.codItensVenda,
    this.quantidade,
    this.valorUnitario,
    this.valorTotalItemAnimal,
    this.vendaanimal,
  });

  factory ItensvendaUpdateWithoutAnimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaUpdateWithoutAnimalInputFromJson(json);

  final IntFieldUpdateOperationsInput? codItensVenda;

  final IntFieldUpdateOperationsInput? quantidade;

  final FloatFieldUpdateOperationsInput? valorUnitario;

  final FloatFieldUpdateOperationsInput? valorTotalItemAnimal;

  final VendaanimalUpdateOneRequiredWithoutItensvendaNestedInput? vendaanimal;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaUpdateWithoutAnimalInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaUncheckedUpdateWithoutAnimalInput
    implements _i1.JsonSerializable {
  const ItensvendaUncheckedUpdateWithoutAnimalInput({
    this.codItensVenda,
    this.codVendaAnimal,
    this.quantidade,
    this.valorUnitario,
    this.valorTotalItemAnimal,
  });

  factory ItensvendaUncheckedUpdateWithoutAnimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaUncheckedUpdateWithoutAnimalInputFromJson(json);

  final IntFieldUpdateOperationsInput? codItensVenda;

  final IntFieldUpdateOperationsInput? codVendaAnimal;

  final IntFieldUpdateOperationsInput? quantidade;

  final FloatFieldUpdateOperationsInput? valorUnitario;

  final FloatFieldUpdateOperationsInput? valorTotalItemAnimal;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaUncheckedUpdateWithoutAnimalInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaUncheckedUpdateManyWithoutItensvendaInput
    implements _i1.JsonSerializable {
  const ItensvendaUncheckedUpdateManyWithoutItensvendaInput({
    this.codItensVenda,
    this.codVendaAnimal,
    this.quantidade,
    this.valorUnitario,
    this.valorTotalItemAnimal,
  });

  factory ItensvendaUncheckedUpdateManyWithoutItensvendaInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaUncheckedUpdateManyWithoutItensvendaInputFromJson(json);

  final IntFieldUpdateOperationsInput? codItensVenda;

  final IntFieldUpdateOperationsInput? codVendaAnimal;

  final IntFieldUpdateOperationsInput? quantidade;

  final FloatFieldUpdateOperationsInput? valorUnitario;

  final FloatFieldUpdateOperationsInput? valorTotalItemAnimal;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaUncheckedUpdateManyWithoutItensvendaInputToJson(this);
}

@_i1.jsonSerializable
class AnimalCreateManyCategoriaInput implements _i1.JsonSerializable {
  const AnimalCreateManyCategoriaInput({
    required this.codAnimal,
    required this.codProdLeite,
    required this.nome,
    required this.dataNascimento,
    required this.sexo,
    required this.raca,
    required this.idade,
    required this.formaManejo,
    this.mediaLeite,
  });

  factory AnimalCreateManyCategoriaInput.fromJson(Map<String, dynamic> json) =>
      _$AnimalCreateManyCategoriaInputFromJson(json);

  final int codAnimal;

  final int codProdLeite;

  final String nome;

  final DateTime dataNascimento;

  final String sexo;

  final String raca;

  final int idade;

  final String formaManejo;

  final double? mediaLeite;

  @override
  Map<String, dynamic> toJson() => _$AnimalCreateManyCategoriaInputToJson(this);
}

@_i1.jsonSerializable
class AnimalUpdateWithoutCategoriaInput implements _i1.JsonSerializable {
  const AnimalUpdateWithoutCategoriaInput({
    this.codAnimal,
    this.nome,
    this.dataNascimento,
    this.sexo,
    this.raca,
    this.idade,
    this.formaManejo,
    this.mediaLeite,
    this.prodleite,
    this.itensvenda,
  });

  factory AnimalUpdateWithoutCategoriaInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalUpdateWithoutCategoriaInputFromJson(json);

  final IntFieldUpdateOperationsInput? codAnimal;

  final StringFieldUpdateOperationsInput? nome;

  final DateTimeFieldUpdateOperationsInput? dataNascimento;

  final StringFieldUpdateOperationsInput? sexo;

  final StringFieldUpdateOperationsInput? raca;

  final IntFieldUpdateOperationsInput? idade;

  final StringFieldUpdateOperationsInput? formaManejo;

  final NullableFloatFieldUpdateOperationsInput? mediaLeite;

  final ProdleiteUpdateOneRequiredWithoutAnimalNestedInput? prodleite;

  final ItensvendaUpdateManyWithoutAnimalNestedInput? itensvenda;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalUpdateWithoutCategoriaInputToJson(this);
}

@_i1.jsonSerializable
class AnimalUncheckedUpdateWithoutCategoriaInput
    implements _i1.JsonSerializable {
  const AnimalUncheckedUpdateWithoutCategoriaInput({
    this.codAnimal,
    this.codProdLeite,
    this.nome,
    this.dataNascimento,
    this.sexo,
    this.raca,
    this.idade,
    this.formaManejo,
    this.mediaLeite,
    this.itensvenda,
  });

  factory AnimalUncheckedUpdateWithoutCategoriaInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalUncheckedUpdateWithoutCategoriaInputFromJson(json);

  final IntFieldUpdateOperationsInput? codAnimal;

  final IntFieldUpdateOperationsInput? codProdLeite;

  final StringFieldUpdateOperationsInput? nome;

  final DateTimeFieldUpdateOperationsInput? dataNascimento;

  final StringFieldUpdateOperationsInput? sexo;

  final StringFieldUpdateOperationsInput? raca;

  final IntFieldUpdateOperationsInput? idade;

  final StringFieldUpdateOperationsInput? formaManejo;

  final NullableFloatFieldUpdateOperationsInput? mediaLeite;

  final ItensvendaUncheckedUpdateManyWithoutAnimalNestedInput? itensvenda;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalUncheckedUpdateWithoutCategoriaInputToJson(this);
}

@_i1.jsonSerializable
class AnimalUncheckedUpdateManyWithoutAnimalInput
    implements _i1.JsonSerializable {
  const AnimalUncheckedUpdateManyWithoutAnimalInput({
    this.codAnimal,
    this.codProdLeite,
    this.nome,
    this.dataNascimento,
    this.sexo,
    this.raca,
    this.idade,
    this.formaManejo,
    this.mediaLeite,
  });

  factory AnimalUncheckedUpdateManyWithoutAnimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalUncheckedUpdateManyWithoutAnimalInputFromJson(json);

  final IntFieldUpdateOperationsInput? codAnimal;

  final IntFieldUpdateOperationsInput? codProdLeite;

  final StringFieldUpdateOperationsInput? nome;

  final DateTimeFieldUpdateOperationsInput? dataNascimento;

  final StringFieldUpdateOperationsInput? sexo;

  final StringFieldUpdateOperationsInput? raca;

  final IntFieldUpdateOperationsInput? idade;

  final StringFieldUpdateOperationsInput? formaManejo;

  final NullableFloatFieldUpdateOperationsInput? mediaLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalUncheckedUpdateManyWithoutAnimalInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalCreateManyCompradorInput implements _i1.JsonSerializable {
  const VendaanimalCreateManyCompradorInput({
    required this.codVendaAnimal,
    required this.dataVendaAnimal,
    required this.valorTotalAnimal,
  });

  factory VendaanimalCreateManyCompradorInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalCreateManyCompradorInputFromJson(json);

  final int codVendaAnimal;

  final DateTime dataVendaAnimal;

  final double valorTotalAnimal;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalCreateManyCompradorInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteCreateManyCompradorInput implements _i1.JsonSerializable {
  const VendaleiteCreateManyCompradorInput({
    required this.codVendaLeite,
    required this.dataVendaLeite,
    required this.valorTotalLeite,
  });

  factory VendaleiteCreateManyCompradorInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteCreateManyCompradorInputFromJson(json);

  final int codVendaLeite;

  final DateTime dataVendaLeite;

  final double valorTotalLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteCreateManyCompradorInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalUpdateWithoutCompradorInput implements _i1.JsonSerializable {
  const VendaanimalUpdateWithoutCompradorInput({
    this.codVendaAnimal,
    this.dataVendaAnimal,
    this.valorTotalAnimal,
    this.itensvenda,
  });

  factory VendaanimalUpdateWithoutCompradorInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalUpdateWithoutCompradorInputFromJson(json);

  final IntFieldUpdateOperationsInput? codVendaAnimal;

  final DateTimeFieldUpdateOperationsInput? dataVendaAnimal;

  final FloatFieldUpdateOperationsInput? valorTotalAnimal;

  final ItensvendaUpdateManyWithoutVendaanimalNestedInput? itensvenda;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalUpdateWithoutCompradorInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalUncheckedUpdateWithoutCompradorInput
    implements _i1.JsonSerializable {
  const VendaanimalUncheckedUpdateWithoutCompradorInput({
    this.codVendaAnimal,
    this.dataVendaAnimal,
    this.valorTotalAnimal,
    this.itensvenda,
  });

  factory VendaanimalUncheckedUpdateWithoutCompradorInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalUncheckedUpdateWithoutCompradorInputFromJson(json);

  final IntFieldUpdateOperationsInput? codVendaAnimal;

  final DateTimeFieldUpdateOperationsInput? dataVendaAnimal;

  final FloatFieldUpdateOperationsInput? valorTotalAnimal;

  final ItensvendaUncheckedUpdateManyWithoutVendaanimalNestedInput? itensvenda;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalUncheckedUpdateWithoutCompradorInputToJson(this);
}

@_i1.jsonSerializable
class VendaanimalUncheckedUpdateManyWithoutVendaanimalInput
    implements _i1.JsonSerializable {
  const VendaanimalUncheckedUpdateManyWithoutVendaanimalInput({
    this.codVendaAnimal,
    this.dataVendaAnimal,
    this.valorTotalAnimal,
  });

  factory VendaanimalUncheckedUpdateManyWithoutVendaanimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaanimalUncheckedUpdateManyWithoutVendaanimalInputFromJson(json);

  final IntFieldUpdateOperationsInput? codVendaAnimal;

  final DateTimeFieldUpdateOperationsInput? dataVendaAnimal;

  final FloatFieldUpdateOperationsInput? valorTotalAnimal;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaanimalUncheckedUpdateManyWithoutVendaanimalInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteUpdateWithoutCompradorInput implements _i1.JsonSerializable {
  const VendaleiteUpdateWithoutCompradorInput({
    this.codVendaLeite,
    this.dataVendaLeite,
    this.valorTotalLeite,
    this.vendaprodleite,
  });

  factory VendaleiteUpdateWithoutCompradorInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteUpdateWithoutCompradorInputFromJson(json);

  final IntFieldUpdateOperationsInput? codVendaLeite;

  final DateTimeFieldUpdateOperationsInput? dataVendaLeite;

  final FloatFieldUpdateOperationsInput? valorTotalLeite;

  final VendaprodleiteUpdateManyWithoutVendaleiteNestedInput? vendaprodleite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteUpdateWithoutCompradorInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteUncheckedUpdateWithoutCompradorInput
    implements _i1.JsonSerializable {
  const VendaleiteUncheckedUpdateWithoutCompradorInput({
    this.codVendaLeite,
    this.dataVendaLeite,
    this.valorTotalLeite,
    this.vendaprodleite,
  });

  factory VendaleiteUncheckedUpdateWithoutCompradorInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteUncheckedUpdateWithoutCompradorInputFromJson(json);

  final IntFieldUpdateOperationsInput? codVendaLeite;

  final DateTimeFieldUpdateOperationsInput? dataVendaLeite;

  final FloatFieldUpdateOperationsInput? valorTotalLeite;

  final VendaprodleiteUncheckedUpdateManyWithoutVendaleiteNestedInput?
      vendaprodleite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteUncheckedUpdateWithoutCompradorInputToJson(this);
}

@_i1.jsonSerializable
class VendaleiteUncheckedUpdateManyWithoutVendaleiteInput
    implements _i1.JsonSerializable {
  const VendaleiteUncheckedUpdateManyWithoutVendaleiteInput({
    this.codVendaLeite,
    this.dataVendaLeite,
    this.valorTotalLeite,
  });

  factory VendaleiteUncheckedUpdateManyWithoutVendaleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaleiteUncheckedUpdateManyWithoutVendaleiteInputFromJson(json);

  final IntFieldUpdateOperationsInput? codVendaLeite;

  final DateTimeFieldUpdateOperationsInput? dataVendaLeite;

  final FloatFieldUpdateOperationsInput? valorTotalLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaleiteUncheckedUpdateManyWithoutVendaleiteInputToJson(this);
}

@_i1.jsonSerializable
class AnimalCreateManyProdleiteInput implements _i1.JsonSerializable {
  const AnimalCreateManyProdleiteInput({
    required this.codAnimal,
    required this.codCategoria,
    required this.nome,
    required this.dataNascimento,
    required this.sexo,
    required this.raca,
    required this.idade,
    required this.formaManejo,
    this.mediaLeite,
  });

  factory AnimalCreateManyProdleiteInput.fromJson(Map<String, dynamic> json) =>
      _$AnimalCreateManyProdleiteInputFromJson(json);

  final int codAnimal;

  final int codCategoria;

  final String nome;

  final DateTime dataNascimento;

  final String sexo;

  final String raca;

  final int idade;

  final String formaManejo;

  final double? mediaLeite;

  @override
  Map<String, dynamic> toJson() => _$AnimalCreateManyProdleiteInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteCreateManyProdleiteInput implements _i1.JsonSerializable {
  const VendaprodleiteCreateManyProdleiteInput({
    required this.codVendaProdLeite,
    required this.codVendaLeite,
    required this.qtdLeite,
    required this.valorLitro,
    required this.valorTotalItemLeite,
  });

  factory VendaprodleiteCreateManyProdleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteCreateManyProdleiteInputFromJson(json);

  final int codVendaProdLeite;

  final int codVendaLeite;

  final double qtdLeite;

  final double valorLitro;

  final double valorTotalItemLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteCreateManyProdleiteInputToJson(this);
}

@_i1.jsonSerializable
class AnimalUpdateWithoutProdleiteInput implements _i1.JsonSerializable {
  const AnimalUpdateWithoutProdleiteInput({
    this.codAnimal,
    this.nome,
    this.dataNascimento,
    this.sexo,
    this.raca,
    this.idade,
    this.formaManejo,
    this.mediaLeite,
    this.categoria,
    this.itensvenda,
  });

  factory AnimalUpdateWithoutProdleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalUpdateWithoutProdleiteInputFromJson(json);

  final IntFieldUpdateOperationsInput? codAnimal;

  final StringFieldUpdateOperationsInput? nome;

  final DateTimeFieldUpdateOperationsInput? dataNascimento;

  final StringFieldUpdateOperationsInput? sexo;

  final StringFieldUpdateOperationsInput? raca;

  final IntFieldUpdateOperationsInput? idade;

  final StringFieldUpdateOperationsInput? formaManejo;

  final NullableFloatFieldUpdateOperationsInput? mediaLeite;

  final CategoriaUpdateOneRequiredWithoutAnimalNestedInput? categoria;

  final ItensvendaUpdateManyWithoutAnimalNestedInput? itensvenda;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalUpdateWithoutProdleiteInputToJson(this);
}

@_i1.jsonSerializable
class AnimalUncheckedUpdateWithoutProdleiteInput
    implements _i1.JsonSerializable {
  const AnimalUncheckedUpdateWithoutProdleiteInput({
    this.codAnimal,
    this.codCategoria,
    this.nome,
    this.dataNascimento,
    this.sexo,
    this.raca,
    this.idade,
    this.formaManejo,
    this.mediaLeite,
    this.itensvenda,
  });

  factory AnimalUncheckedUpdateWithoutProdleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$AnimalUncheckedUpdateWithoutProdleiteInputFromJson(json);

  final IntFieldUpdateOperationsInput? codAnimal;

  final IntFieldUpdateOperationsInput? codCategoria;

  final StringFieldUpdateOperationsInput? nome;

  final DateTimeFieldUpdateOperationsInput? dataNascimento;

  final StringFieldUpdateOperationsInput? sexo;

  final StringFieldUpdateOperationsInput? raca;

  final IntFieldUpdateOperationsInput? idade;

  final StringFieldUpdateOperationsInput? formaManejo;

  final NullableFloatFieldUpdateOperationsInput? mediaLeite;

  final ItensvendaUncheckedUpdateManyWithoutAnimalNestedInput? itensvenda;

  @override
  Map<String, dynamic> toJson() =>
      _$AnimalUncheckedUpdateWithoutProdleiteInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteUpdateWithoutProdleiteInput
    implements _i1.JsonSerializable {
  const VendaprodleiteUpdateWithoutProdleiteInput({
    this.codVendaProdLeite,
    this.qtdLeite,
    this.valorLitro,
    this.valorTotalItemLeite,
    this.vendaleite,
  });

  factory VendaprodleiteUpdateWithoutProdleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteUpdateWithoutProdleiteInputFromJson(json);

  final IntFieldUpdateOperationsInput? codVendaProdLeite;

  final FloatFieldUpdateOperationsInput? qtdLeite;

  final FloatFieldUpdateOperationsInput? valorLitro;

  final FloatFieldUpdateOperationsInput? valorTotalItemLeite;

  final VendaleiteUpdateOneRequiredWithoutVendaprodleiteNestedInput? vendaleite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteUpdateWithoutProdleiteInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteUncheckedUpdateWithoutProdleiteInput
    implements _i1.JsonSerializable {
  const VendaprodleiteUncheckedUpdateWithoutProdleiteInput({
    this.codVendaProdLeite,
    this.codVendaLeite,
    this.qtdLeite,
    this.valorLitro,
    this.valorTotalItemLeite,
  });

  factory VendaprodleiteUncheckedUpdateWithoutProdleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteUncheckedUpdateWithoutProdleiteInputFromJson(json);

  final IntFieldUpdateOperationsInput? codVendaProdLeite;

  final IntFieldUpdateOperationsInput? codVendaLeite;

  final FloatFieldUpdateOperationsInput? qtdLeite;

  final FloatFieldUpdateOperationsInput? valorLitro;

  final FloatFieldUpdateOperationsInput? valorTotalItemLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteUncheckedUpdateWithoutProdleiteInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteUncheckedUpdateManyWithoutVendaprodleiteInput
    implements _i1.JsonSerializable {
  const VendaprodleiteUncheckedUpdateManyWithoutVendaprodleiteInput({
    this.codVendaProdLeite,
    this.codVendaLeite,
    this.qtdLeite,
    this.valorLitro,
    this.valorTotalItemLeite,
  });

  factory VendaprodleiteUncheckedUpdateManyWithoutVendaprodleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteUncheckedUpdateManyWithoutVendaprodleiteInputFromJson(
          json);

  final IntFieldUpdateOperationsInput? codVendaProdLeite;

  final IntFieldUpdateOperationsInput? codVendaLeite;

  final FloatFieldUpdateOperationsInput? qtdLeite;

  final FloatFieldUpdateOperationsInput? valorLitro;

  final FloatFieldUpdateOperationsInput? valorTotalItemLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteUncheckedUpdateManyWithoutVendaprodleiteInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaCreateManyVendaanimalInput implements _i1.JsonSerializable {
  const ItensvendaCreateManyVendaanimalInput({
    required this.codItensVenda,
    required this.codAnimal,
    required this.quantidade,
    required this.valorUnitario,
    required this.valorTotalItemAnimal,
  });

  factory ItensvendaCreateManyVendaanimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaCreateManyVendaanimalInputFromJson(json);

  final int codItensVenda;

  final int codAnimal;

  final int quantidade;

  final double valorUnitario;

  final double valorTotalItemAnimal;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaCreateManyVendaanimalInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaUpdateWithoutVendaanimalInput implements _i1.JsonSerializable {
  const ItensvendaUpdateWithoutVendaanimalInput({
    this.codItensVenda,
    this.quantidade,
    this.valorUnitario,
    this.valorTotalItemAnimal,
    this.animal,
  });

  factory ItensvendaUpdateWithoutVendaanimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaUpdateWithoutVendaanimalInputFromJson(json);

  final IntFieldUpdateOperationsInput? codItensVenda;

  final IntFieldUpdateOperationsInput? quantidade;

  final FloatFieldUpdateOperationsInput? valorUnitario;

  final FloatFieldUpdateOperationsInput? valorTotalItemAnimal;

  final AnimalUpdateOneRequiredWithoutItensvendaNestedInput? animal;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaUpdateWithoutVendaanimalInputToJson(this);
}

@_i1.jsonSerializable
class ItensvendaUncheckedUpdateWithoutVendaanimalInput
    implements _i1.JsonSerializable {
  const ItensvendaUncheckedUpdateWithoutVendaanimalInput({
    this.codItensVenda,
    this.codAnimal,
    this.quantidade,
    this.valorUnitario,
    this.valorTotalItemAnimal,
  });

  factory ItensvendaUncheckedUpdateWithoutVendaanimalInput.fromJson(
          Map<String, dynamic> json) =>
      _$ItensvendaUncheckedUpdateWithoutVendaanimalInputFromJson(json);

  final IntFieldUpdateOperationsInput? codItensVenda;

  final IntFieldUpdateOperationsInput? codAnimal;

  final IntFieldUpdateOperationsInput? quantidade;

  final FloatFieldUpdateOperationsInput? valorUnitario;

  final FloatFieldUpdateOperationsInput? valorTotalItemAnimal;

  @override
  Map<String, dynamic> toJson() =>
      _$ItensvendaUncheckedUpdateWithoutVendaanimalInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteCreateManyVendaleiteInput implements _i1.JsonSerializable {
  const VendaprodleiteCreateManyVendaleiteInput({
    required this.codVendaProdLeite,
    required this.codProdLeite,
    required this.qtdLeite,
    required this.valorLitro,
    required this.valorTotalItemLeite,
  });

  factory VendaprodleiteCreateManyVendaleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteCreateManyVendaleiteInputFromJson(json);

  final int codVendaProdLeite;

  final int codProdLeite;

  final double qtdLeite;

  final double valorLitro;

  final double valorTotalItemLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteCreateManyVendaleiteInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteUpdateWithoutVendaleiteInput
    implements _i1.JsonSerializable {
  const VendaprodleiteUpdateWithoutVendaleiteInput({
    this.codVendaProdLeite,
    this.qtdLeite,
    this.valorLitro,
    this.valorTotalItemLeite,
    this.prodleite,
  });

  factory VendaprodleiteUpdateWithoutVendaleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteUpdateWithoutVendaleiteInputFromJson(json);

  final IntFieldUpdateOperationsInput? codVendaProdLeite;

  final FloatFieldUpdateOperationsInput? qtdLeite;

  final FloatFieldUpdateOperationsInput? valorLitro;

  final FloatFieldUpdateOperationsInput? valorTotalItemLeite;

  final ProdleiteUpdateOneRequiredWithoutVendaprodleiteNestedInput? prodleite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteUpdateWithoutVendaleiteInputToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteUncheckedUpdateWithoutVendaleiteInput
    implements _i1.JsonSerializable {
  const VendaprodleiteUncheckedUpdateWithoutVendaleiteInput({
    this.codVendaProdLeite,
    this.codProdLeite,
    this.qtdLeite,
    this.valorLitro,
    this.valorTotalItemLeite,
  });

  factory VendaprodleiteUncheckedUpdateWithoutVendaleiteInput.fromJson(
          Map<String, dynamic> json) =>
      _$VendaprodleiteUncheckedUpdateWithoutVendaleiteInputFromJson(json);

  final IntFieldUpdateOperationsInput? codVendaProdLeite;

  final IntFieldUpdateOperationsInput? codProdLeite;

  final FloatFieldUpdateOperationsInput? qtdLeite;

  final FloatFieldUpdateOperationsInput? valorLitro;

  final FloatFieldUpdateOperationsInput? valorTotalItemLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteUncheckedUpdateWithoutVendaleiteInputToJson(this);
}

@_i1.jsonSerializable
class Animal implements _i1.JsonSerializable {
  const Animal({
    required this.codAnimal,
    required this.codProdLeite,
    required this.codCategoria,
    required this.nome,
    required this.dataNascimento,
    required this.sexo,
    required this.raca,
    required this.idade,
    required this.formaManejo,
    this.mediaLeite,
  });

  factory Animal.fromJson(Map<String, dynamic> json) => _$AnimalFromJson(json);

  final int codAnimal;

  final int codProdLeite;

  final int codCategoria;

  final String nome;

  final DateTime dataNascimento;

  final String sexo;

  final String raca;

  final int idade;

  final String formaManejo;

  final double? mediaLeite;

  @override
  Map<String, dynamic> toJson() => _$AnimalToJson(this);
}

@_i1.jsonSerializable
class Categoria implements _i1.JsonSerializable {
  const Categoria({
    required this.codCategoria,
    required this.tipo,
  });

  factory Categoria.fromJson(Map<String, dynamic> json) =>
      _$CategoriaFromJson(json);

  final int codCategoria;

  final String tipo;

  @override
  Map<String, dynamic> toJson() => _$CategoriaToJson(this);
}

@_i1.jsonSerializable
class Comprador implements _i1.JsonSerializable {
  const Comprador({
    required this.codComprador,
    required this.nome,
    required this.telefone,
    required this.endereco,
  });

  factory Comprador.fromJson(Map<String, dynamic> json) =>
      _$CompradorFromJson(json);

  final int codComprador;

  final String nome;

  final String telefone;

  final String endereco;

  @override
  Map<String, dynamic> toJson() => _$CompradorToJson(this);
}

@_i1.jsonSerializable
class Itensvenda implements _i1.JsonSerializable {
  const Itensvenda({
    required this.codItensVenda,
    required this.codVendaAnimal,
    required this.codAnimal,
    required this.quantidade,
    required this.valorUnitario,
    required this.valorTotalItemAnimal,
  });

  factory Itensvenda.fromJson(Map<String, dynamic> json) =>
      _$ItensvendaFromJson(json);

  final int codItensVenda;

  final int codVendaAnimal;

  final int codAnimal;

  final int quantidade;

  final double valorUnitario;

  final double valorTotalItemAnimal;

  @override
  Map<String, dynamic> toJson() => _$ItensvendaToJson(this);
}

@_i1.jsonSerializable
class Prodleite implements _i1.JsonSerializable {
  const Prodleite({
    required this.codProdLeite,
    required this.dataProdLeite,
    required this.qtdProdLeite,
  });

  factory Prodleite.fromJson(Map<String, dynamic> json) =>
      _$ProdleiteFromJson(json);

  final int codProdLeite;

  final DateTime dataProdLeite;

  final double qtdProdLeite;

  @override
  Map<String, dynamic> toJson() => _$ProdleiteToJson(this);
}

@_i1.jsonSerializable
class Vendaanimal implements _i1.JsonSerializable {
  const Vendaanimal({
    required this.codVendaAnimal,
    required this.codComprador,
    required this.dataVendaAnimal,
    required this.valorTotalAnimal,
  });

  factory Vendaanimal.fromJson(Map<String, dynamic> json) =>
      _$VendaanimalFromJson(json);

  final int codVendaAnimal;

  final int codComprador;

  final DateTime dataVendaAnimal;

  final double valorTotalAnimal;

  @override
  Map<String, dynamic> toJson() => _$VendaanimalToJson(this);
}

@_i1.jsonSerializable
class Vendaleite implements _i1.JsonSerializable {
  const Vendaleite({
    required this.codVendaLeite,
    required this.codComprador,
    required this.dataVendaLeite,
    required this.valorTotalLeite,
  });

  factory Vendaleite.fromJson(Map<String, dynamic> json) =>
      _$VendaleiteFromJson(json);

  final int codVendaLeite;

  final int codComprador;

  final DateTime dataVendaLeite;

  final double valorTotalLeite;

  @override
  Map<String, dynamic> toJson() => _$VendaleiteToJson(this);
}

@_i1.jsonSerializable
class Vendaprodleite implements _i1.JsonSerializable {
  const Vendaprodleite({
    required this.codVendaProdLeite,
    required this.codVendaLeite,
    required this.codProdLeite,
    required this.qtdLeite,
    required this.valorLitro,
    required this.valorTotalItemLeite,
  });

  factory Vendaprodleite.fromJson(Map<String, dynamic> json) =>
      _$VendaprodleiteFromJson(json);

  final int codVendaProdLeite;

  final int codVendaLeite;

  final int codProdLeite;

  final double qtdLeite;

  final double valorLitro;

  final double valorTotalItemLeite;

  @override
  Map<String, dynamic> toJson() => _$VendaprodleiteToJson(this);
}

class AnimalFluent<T> extends _i1.PrismaFluent<T> {
  const AnimalFluent(
    super.original,
    super.$query,
  );

  CategoriaFluent<Categoria> categoria() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'categoria',
          fields: fields,
        )
      ]),
      key: r'categoria',
    );
    final future = query(CategoriaScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Categoria.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: categoria)'));
    return CategoriaFluent<Categoria>(
      future,
      query,
    );
  }

  ProdleiteFluent<Prodleite> prodleite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'prodleite',
          fields: fields,
        )
      ]),
      key: r'prodleite',
    );
    final future = query(ProdleiteScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Prodleite.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: prodleite)'));
    return ProdleiteFluent<Prodleite>(
      future,
      query,
    );
  }

  Future<Iterable<Itensvenda>?> itensvenda({
    ItensvendaWhereInput? where,
    Iterable<ItensvendaOrderByWithRelationInput>? orderBy,
    ItensvendaWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<ItensvendaScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'itensvenda',
          fields: fields,
          args: args,
        )
      ]),
      key: r'itensvenda',
    );
    final fields = ItensvendaScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> itensvenda) => itensvenda
        .map((Map itensvenda) => Itensvenda.fromJson(itensvenda.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  AnimalCountOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return AnimalCountOutputType(query);
  }
}

class CategoriaFluent<T> extends _i1.PrismaFluent<T> {
  const CategoriaFluent(
    super.original,
    super.$query,
  );

  Future<Iterable<Animal>?> animal({
    AnimalWhereInput? where,
    Iterable<AnimalOrderByWithRelationInput>? orderBy,
    AnimalWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<AnimalScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'animal',
          fields: fields,
          args: args,
        )
      ]),
      key: r'animal',
    );
    final fields = AnimalScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> animal) =>
        animal.map((Map animal) => Animal.fromJson(animal.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  CategoriaCountOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return CategoriaCountOutputType(query);
  }
}

class CompradorFluent<T> extends _i1.PrismaFluent<T> {
  const CompradorFluent(
    super.original,
    super.$query,
  );

  Future<Iterable<Vendaanimal>?> vendaanimal({
    VendaanimalWhereInput? where,
    Iterable<VendaanimalOrderByWithRelationInput>? orderBy,
    VendaanimalWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<VendaanimalScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'vendaanimal',
          fields: fields,
          args: args,
        )
      ]),
      key: r'vendaanimal',
    );
    final fields = VendaanimalScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> vendaanimal) => vendaanimal
        .map((Map vendaanimal) => Vendaanimal.fromJson(vendaanimal.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  Future<Iterable<Vendaleite>?> vendaleite({
    VendaleiteWhereInput? where,
    Iterable<VendaleiteOrderByWithRelationInput>? orderBy,
    VendaleiteWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<VendaleiteScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'vendaleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'vendaleite',
    );
    final fields = VendaleiteScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> vendaleite) => vendaleite
        .map((Map vendaleite) => Vendaleite.fromJson(vendaleite.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  CompradorCountOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return CompradorCountOutputType(query);
  }
}

class ItensvendaFluent<T> extends _i1.PrismaFluent<T> {
  const ItensvendaFluent(
    super.original,
    super.$query,
  );

  AnimalFluent<Animal> animal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'animal',
          fields: fields,
        )
      ]),
      key: r'animal',
    );
    final future = query(AnimalScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Animal.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: animal)'));
    return AnimalFluent<Animal>(
      future,
      query,
    );
  }

  VendaanimalFluent<Vendaanimal> vendaanimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'vendaanimal',
          fields: fields,
        )
      ]),
      key: r'vendaanimal',
    );
    final future = query(VendaanimalScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Vendaanimal.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: vendaanimal)'));
    return VendaanimalFluent<Vendaanimal>(
      future,
      query,
    );
  }
}

class ProdleiteFluent<T> extends _i1.PrismaFluent<T> {
  const ProdleiteFluent(
    super.original,
    super.$query,
  );

  Future<Iterable<Animal>?> animal({
    AnimalWhereInput? where,
    Iterable<AnimalOrderByWithRelationInput>? orderBy,
    AnimalWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<AnimalScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'animal',
          fields: fields,
          args: args,
        )
      ]),
      key: r'animal',
    );
    final fields = AnimalScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> animal) =>
        animal.map((Map animal) => Animal.fromJson(animal.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  Future<Iterable<Vendaprodleite>?> vendaprodleite({
    VendaprodleiteWhereInput? where,
    Iterable<VendaprodleiteOrderByWithRelationInput>? orderBy,
    VendaprodleiteWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<VendaprodleiteScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'vendaprodleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'vendaprodleite',
    );
    final fields = VendaprodleiteScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> vendaprodleite) => vendaprodleite.map(
        (Map vendaprodleite) => Vendaprodleite.fromJson(vendaprodleite.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  ProdleiteCountOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return ProdleiteCountOutputType(query);
  }
}

class VendaanimalFluent<T> extends _i1.PrismaFluent<T> {
  const VendaanimalFluent(
    super.original,
    super.$query,
  );

  Future<Iterable<Itensvenda>?> itensvenda({
    ItensvendaWhereInput? where,
    Iterable<ItensvendaOrderByWithRelationInput>? orderBy,
    ItensvendaWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<ItensvendaScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'itensvenda',
          fields: fields,
          args: args,
        )
      ]),
      key: r'itensvenda',
    );
    final fields = ItensvendaScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> itensvenda) => itensvenda
        .map((Map itensvenda) => Itensvenda.fromJson(itensvenda.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  CompradorFluent<Comprador> comprador() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'comprador',
          fields: fields,
        )
      ]),
      key: r'comprador',
    );
    final future = query(CompradorScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Comprador.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: comprador)'));
    return CompradorFluent<Comprador>(
      future,
      query,
    );
  }

  VendaanimalCountOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return VendaanimalCountOutputType(query);
  }
}

class VendaleiteFluent<T> extends _i1.PrismaFluent<T> {
  const VendaleiteFluent(
    super.original,
    super.$query,
  );

  CompradorFluent<Comprador> comprador() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'comprador',
          fields: fields,
        )
      ]),
      key: r'comprador',
    );
    final future = query(CompradorScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Comprador.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: comprador)'));
    return CompradorFluent<Comprador>(
      future,
      query,
    );
  }

  Future<Iterable<Vendaprodleite>?> vendaprodleite({
    VendaprodleiteWhereInput? where,
    Iterable<VendaprodleiteOrderByWithRelationInput>? orderBy,
    VendaprodleiteWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<VendaprodleiteScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'vendaprodleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'vendaprodleite',
    );
    final fields = VendaprodleiteScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> vendaprodleite) => vendaprodleite.map(
        (Map vendaprodleite) => Vendaprodleite.fromJson(vendaprodleite.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  VendaleiteCountOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return VendaleiteCountOutputType(query);
  }
}

class VendaprodleiteFluent<T> extends _i1.PrismaFluent<T> {
  const VendaprodleiteFluent(
    super.original,
    super.$query,
  );

  ProdleiteFluent<Prodleite> prodleite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'prodleite',
          fields: fields,
        )
      ]),
      key: r'prodleite',
    );
    final future = query(ProdleiteScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Prodleite.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: prodleite)'));
    return ProdleiteFluent<Prodleite>(
      future,
      query,
    );
  }

  VendaleiteFluent<Vendaleite> vendaleite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'vendaleite',
          fields: fields,
        )
      ]),
      key: r'vendaleite',
    );
    final future = query(VendaleiteScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Vendaleite.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: vendaleite)'));
    return VendaleiteFluent<Vendaleite>(
      future,
      query,
    );
  }
}

extension AnimalModelDelegateExtension on _i1.ModelDelegate<Animal> {
  AnimalFluent<Animal?> findUnique({required AnimalWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueanimal',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueanimal',
    );
    final future = query(AnimalScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Animal.fromJson(json.cast<String, dynamic>()) : null);
    return AnimalFluent<Animal?>(
      future,
      query,
    );
  }

  AnimalFluent<Animal> findUniqueOrThrow(
      {required AnimalWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueanimalOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueanimalOrThrow',
    );
    final future = query(AnimalScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Animal.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: animal)'));
    return AnimalFluent<Animal>(
      future,
      query,
    );
  }

  AnimalFluent<Animal?> findFirst({
    AnimalWhereInput? where,
    Iterable<AnimalOrderByWithRelationInput>? orderBy,
    AnimalWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<AnimalScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstanimal',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstanimal',
    );
    final future = query(AnimalScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Animal.fromJson(json.cast<String, dynamic>()) : null);
    return AnimalFluent<Animal?>(
      future,
      query,
    );
  }

  AnimalFluent<Animal> findFirstOrThrow({
    AnimalWhereInput? where,
    Iterable<AnimalOrderByWithRelationInput>? orderBy,
    AnimalWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<AnimalScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstanimalOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstanimalOrThrow',
    );
    final future = query(AnimalScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Animal.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: animal)'));
    return AnimalFluent<Animal>(
      future,
      query,
    );
  }

  Future<Iterable<Animal>> findMany({
    AnimalWhereInput? where,
    Iterable<AnimalOrderByWithRelationInput>? orderBy,
    AnimalWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<AnimalScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyanimal',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyanimal',
    );
    final fields = AnimalScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyanimal) => findManyanimal
        .map((Map findManyanimal) => Animal.fromJson(findManyanimal.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  AnimalFluent<Animal> create({required AnimalCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneanimal',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneanimal',
    );
    final future = query(AnimalScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Animal.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: animal)'));
    return AnimalFluent<Animal>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<AnimalCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyanimal',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyanimal',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyanimal) =>
        AffectedRowsOutput.fromJson(createManyanimal.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AnimalFluent<Animal?> update({
    required AnimalUpdateInput data,
    required AnimalWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneanimal',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneanimal',
    );
    final future = query(AnimalScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Animal.fromJson(json.cast<String, dynamic>()) : null);
    return AnimalFluent<Animal?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required AnimalUpdateManyMutationInput data,
    AnimalWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyanimal',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyanimal',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyanimal) =>
        AffectedRowsOutput.fromJson(updateManyanimal.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AnimalFluent<Animal> upsert({
    required AnimalWhereUniqueInput where,
    required AnimalCreateInput create,
    required AnimalUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneanimal',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneanimal',
    );
    final future = query(AnimalScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Animal.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: animal)'));
    return AnimalFluent<Animal>(
      future,
      query,
    );
  }

  AnimalFluent<Animal?> delete({required AnimalWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneanimal',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneanimal',
    );
    final future = query(AnimalScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Animal.fromJson(json.cast<String, dynamic>()) : null);
    return AnimalFluent<Animal?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({AnimalWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyanimal',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyanimal',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyanimal) =>
        AffectedRowsOutput.fromJson(deleteManyanimal.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateAnimal aggregate({
    AnimalWhereInput? where,
    Iterable<AnimalOrderByWithRelationInput>? orderBy,
    AnimalWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateanimal',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateanimal',
    );
    return AggregateAnimal(query);
  }

  Future<Iterable<AnimalGroupByOutputType>> groupBy({
    AnimalWhereInput? where,
    Iterable<AnimalOrderByWithAggregationInput>? orderBy,
    required Iterable<AnimalScalarFieldEnum> by,
    AnimalScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByanimal',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByanimal',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByanimal) =>
        groupByanimal.map((Map groupByanimal) =>
            AnimalGroupByOutputType.fromJson(groupByanimal.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension CategoriaModelDelegateExtension on _i1.ModelDelegate<Categoria> {
  CategoriaFluent<Categoria?> findUnique(
      {required CategoriaWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquecategoria',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquecategoria',
    );
    final future = query(CategoriaScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Categoria.fromJson(json.cast<String, dynamic>())
            : null);
    return CategoriaFluent<Categoria?>(
      future,
      query,
    );
  }

  CategoriaFluent<Categoria> findUniqueOrThrow(
      {required CategoriaWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquecategoriaOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquecategoriaOrThrow',
    );
    final future = query(CategoriaScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Categoria.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: categoria)'));
    return CategoriaFluent<Categoria>(
      future,
      query,
    );
  }

  CategoriaFluent<Categoria?> findFirst({
    CategoriaWhereInput? where,
    Iterable<CategoriaOrderByWithRelationInput>? orderBy,
    CategoriaWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<CategoriaScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstcategoria',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstcategoria',
    );
    final future = query(CategoriaScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Categoria.fromJson(json.cast<String, dynamic>())
            : null);
    return CategoriaFluent<Categoria?>(
      future,
      query,
    );
  }

  CategoriaFluent<Categoria> findFirstOrThrow({
    CategoriaWhereInput? where,
    Iterable<CategoriaOrderByWithRelationInput>? orderBy,
    CategoriaWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<CategoriaScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstcategoriaOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstcategoriaOrThrow',
    );
    final future = query(CategoriaScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Categoria.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: categoria)'));
    return CategoriaFluent<Categoria>(
      future,
      query,
    );
  }

  Future<Iterable<Categoria>> findMany({
    CategoriaWhereInput? where,
    Iterable<CategoriaOrderByWithRelationInput>? orderBy,
    CategoriaWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<CategoriaScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManycategoria',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManycategoria',
    );
    final fields = CategoriaScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManycategoria) =>
        findManycategoria.map((Map findManycategoria) =>
            Categoria.fromJson(findManycategoria.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  CategoriaFluent<Categoria> create({required CategoriaCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOnecategoria',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOnecategoria',
    );
    final future = query(CategoriaScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Categoria.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: categoria)'));
    return CategoriaFluent<Categoria>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<CategoriaCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManycategoria',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManycategoria',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManycategoria) =>
        AffectedRowsOutput.fromJson(createManycategoria.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  CategoriaFluent<Categoria?> update({
    required CategoriaUpdateInput data,
    required CategoriaWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOnecategoria',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOnecategoria',
    );
    final future = query(CategoriaScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Categoria.fromJson(json.cast<String, dynamic>())
            : null);
    return CategoriaFluent<Categoria?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required CategoriaUpdateManyMutationInput data,
    CategoriaWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManycategoria',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManycategoria',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManycategoria) =>
        AffectedRowsOutput.fromJson(updateManycategoria.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  CategoriaFluent<Categoria> upsert({
    required CategoriaWhereUniqueInput where,
    required CategoriaCreateInput create,
    required CategoriaUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOnecategoria',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOnecategoria',
    );
    final future = query(CategoriaScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Categoria.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: categoria)'));
    return CategoriaFluent<Categoria>(
      future,
      query,
    );
  }

  CategoriaFluent<Categoria?> delete(
      {required CategoriaWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOnecategoria',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOnecategoria',
    );
    final future = query(CategoriaScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Categoria.fromJson(json.cast<String, dynamic>())
            : null);
    return CategoriaFluent<Categoria?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({CategoriaWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManycategoria',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManycategoria',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManycategoria) =>
        AffectedRowsOutput.fromJson(deleteManycategoria.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateCategoria aggregate({
    CategoriaWhereInput? where,
    Iterable<CategoriaOrderByWithRelationInput>? orderBy,
    CategoriaWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregatecategoria',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregatecategoria',
    );
    return AggregateCategoria(query);
  }

  Future<Iterable<CategoriaGroupByOutputType>> groupBy({
    CategoriaWhereInput? where,
    Iterable<CategoriaOrderByWithAggregationInput>? orderBy,
    required Iterable<CategoriaScalarFieldEnum> by,
    CategoriaScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupBycategoria',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupBycategoria',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupBycategoria) =>
        groupBycategoria.map((Map groupBycategoria) =>
            CategoriaGroupByOutputType.fromJson(groupBycategoria.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension CompradorModelDelegateExtension on _i1.ModelDelegate<Comprador> {
  CompradorFluent<Comprador?> findUnique(
      {required CompradorWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquecomprador',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquecomprador',
    );
    final future = query(CompradorScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Comprador.fromJson(json.cast<String, dynamic>())
            : null);
    return CompradorFluent<Comprador?>(
      future,
      query,
    );
  }

  CompradorFluent<Comprador> findUniqueOrThrow(
      {required CompradorWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquecompradorOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquecompradorOrThrow',
    );
    final future = query(CompradorScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Comprador.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: comprador)'));
    return CompradorFluent<Comprador>(
      future,
      query,
    );
  }

  CompradorFluent<Comprador?> findFirst({
    CompradorWhereInput? where,
    Iterable<CompradorOrderByWithRelationInput>? orderBy,
    CompradorWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<CompradorScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstcomprador',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstcomprador',
    );
    final future = query(CompradorScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Comprador.fromJson(json.cast<String, dynamic>())
            : null);
    return CompradorFluent<Comprador?>(
      future,
      query,
    );
  }

  CompradorFluent<Comprador> findFirstOrThrow({
    CompradorWhereInput? where,
    Iterable<CompradorOrderByWithRelationInput>? orderBy,
    CompradorWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<CompradorScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstcompradorOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstcompradorOrThrow',
    );
    final future = query(CompradorScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Comprador.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: comprador)'));
    return CompradorFluent<Comprador>(
      future,
      query,
    );
  }

  Future<Iterable<Comprador>> findMany({
    CompradorWhereInput? where,
    Iterable<CompradorOrderByWithRelationInput>? orderBy,
    CompradorWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<CompradorScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManycomprador',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManycomprador',
    );
    final fields = CompradorScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManycomprador) =>
        findManycomprador.map((Map findManycomprador) =>
            Comprador.fromJson(findManycomprador.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  CompradorFluent<Comprador> create({required CompradorCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOnecomprador',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOnecomprador',
    );
    final future = query(CompradorScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Comprador.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: comprador)'));
    return CompradorFluent<Comprador>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<CompradorCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManycomprador',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManycomprador',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManycomprador) =>
        AffectedRowsOutput.fromJson(createManycomprador.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  CompradorFluent<Comprador?> update({
    required CompradorUpdateInput data,
    required CompradorWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOnecomprador',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOnecomprador',
    );
    final future = query(CompradorScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Comprador.fromJson(json.cast<String, dynamic>())
            : null);
    return CompradorFluent<Comprador?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required CompradorUpdateManyMutationInput data,
    CompradorWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManycomprador',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManycomprador',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManycomprador) =>
        AffectedRowsOutput.fromJson(updateManycomprador.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  CompradorFluent<Comprador> upsert({
    required CompradorWhereUniqueInput where,
    required CompradorCreateInput create,
    required CompradorUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOnecomprador',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOnecomprador',
    );
    final future = query(CompradorScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Comprador.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: comprador)'));
    return CompradorFluent<Comprador>(
      future,
      query,
    );
  }

  CompradorFluent<Comprador?> delete(
      {required CompradorWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOnecomprador',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOnecomprador',
    );
    final future = query(CompradorScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Comprador.fromJson(json.cast<String, dynamic>())
            : null);
    return CompradorFluent<Comprador?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({CompradorWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManycomprador',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManycomprador',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManycomprador) =>
        AffectedRowsOutput.fromJson(deleteManycomprador.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateComprador aggregate({
    CompradorWhereInput? where,
    Iterable<CompradorOrderByWithRelationInput>? orderBy,
    CompradorWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregatecomprador',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregatecomprador',
    );
    return AggregateComprador(query);
  }

  Future<Iterable<CompradorGroupByOutputType>> groupBy({
    CompradorWhereInput? where,
    Iterable<CompradorOrderByWithAggregationInput>? orderBy,
    required Iterable<CompradorScalarFieldEnum> by,
    CompradorScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupBycomprador',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupBycomprador',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupBycomprador) =>
        groupBycomprador.map((Map groupBycomprador) =>
            CompradorGroupByOutputType.fromJson(groupBycomprador.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension ItensvendaModelDelegateExtension on _i1.ModelDelegate<Itensvenda> {
  ItensvendaFluent<Itensvenda?> findUnique(
      {required ItensvendaWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueitensvenda',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueitensvenda',
    );
    final future = query(ItensvendaScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Itensvenda.fromJson(json.cast<String, dynamic>())
            : null);
    return ItensvendaFluent<Itensvenda?>(
      future,
      query,
    );
  }

  ItensvendaFluent<Itensvenda> findUniqueOrThrow(
      {required ItensvendaWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueitensvendaOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueitensvendaOrThrow',
    );
    final future = query(ItensvendaScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Itensvenda.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: itensvenda)'));
    return ItensvendaFluent<Itensvenda>(
      future,
      query,
    );
  }

  ItensvendaFluent<Itensvenda?> findFirst({
    ItensvendaWhereInput? where,
    Iterable<ItensvendaOrderByWithRelationInput>? orderBy,
    ItensvendaWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<ItensvendaScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstitensvenda',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstitensvenda',
    );
    final future = query(ItensvendaScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Itensvenda.fromJson(json.cast<String, dynamic>())
            : null);
    return ItensvendaFluent<Itensvenda?>(
      future,
      query,
    );
  }

  ItensvendaFluent<Itensvenda> findFirstOrThrow({
    ItensvendaWhereInput? where,
    Iterable<ItensvendaOrderByWithRelationInput>? orderBy,
    ItensvendaWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<ItensvendaScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstitensvendaOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstitensvendaOrThrow',
    );
    final future = query(ItensvendaScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Itensvenda.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: itensvenda)'));
    return ItensvendaFluent<Itensvenda>(
      future,
      query,
    );
  }

  Future<Iterable<Itensvenda>> findMany({
    ItensvendaWhereInput? where,
    Iterable<ItensvendaOrderByWithRelationInput>? orderBy,
    ItensvendaWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<ItensvendaScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyitensvenda',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyitensvenda',
    );
    final fields = ItensvendaScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyitensvenda) =>
        findManyitensvenda.map((Map findManyitensvenda) =>
            Itensvenda.fromJson(findManyitensvenda.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  ItensvendaFluent<Itensvenda> create({required ItensvendaCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneitensvenda',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneitensvenda',
    );
    final future = query(ItensvendaScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Itensvenda.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: itensvenda)'));
    return ItensvendaFluent<Itensvenda>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<ItensvendaCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyitensvenda',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyitensvenda',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyitensvenda) =>
        AffectedRowsOutput.fromJson(createManyitensvenda.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  ItensvendaFluent<Itensvenda?> update({
    required ItensvendaUpdateInput data,
    required ItensvendaWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneitensvenda',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneitensvenda',
    );
    final future = query(ItensvendaScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Itensvenda.fromJson(json.cast<String, dynamic>())
            : null);
    return ItensvendaFluent<Itensvenda?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required ItensvendaUpdateManyMutationInput data,
    ItensvendaWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyitensvenda',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyitensvenda',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyitensvenda) =>
        AffectedRowsOutput.fromJson(updateManyitensvenda.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  ItensvendaFluent<Itensvenda> upsert({
    required ItensvendaWhereUniqueInput where,
    required ItensvendaCreateInput create,
    required ItensvendaUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneitensvenda',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneitensvenda',
    );
    final future = query(ItensvendaScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Itensvenda.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: itensvenda)'));
    return ItensvendaFluent<Itensvenda>(
      future,
      query,
    );
  }

  ItensvendaFluent<Itensvenda?> delete(
      {required ItensvendaWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneitensvenda',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneitensvenda',
    );
    final future = query(ItensvendaScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Itensvenda.fromJson(json.cast<String, dynamic>())
            : null);
    return ItensvendaFluent<Itensvenda?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({ItensvendaWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyitensvenda',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyitensvenda',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyitensvenda) =>
        AffectedRowsOutput.fromJson(deleteManyitensvenda.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateItensvenda aggregate({
    ItensvendaWhereInput? where,
    Iterable<ItensvendaOrderByWithRelationInput>? orderBy,
    ItensvendaWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateitensvenda',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateitensvenda',
    );
    return AggregateItensvenda(query);
  }

  Future<Iterable<ItensvendaGroupByOutputType>> groupBy({
    ItensvendaWhereInput? where,
    Iterable<ItensvendaOrderByWithAggregationInput>? orderBy,
    required Iterable<ItensvendaScalarFieldEnum> by,
    ItensvendaScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByitensvenda',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByitensvenda',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByitensvenda) =>
        groupByitensvenda.map((Map groupByitensvenda) =>
            ItensvendaGroupByOutputType.fromJson(groupByitensvenda.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension ProdleiteModelDelegateExtension on _i1.ModelDelegate<Prodleite> {
  ProdleiteFluent<Prodleite?> findUnique(
      {required ProdleiteWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueprodleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueprodleite',
    );
    final future = query(ProdleiteScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Prodleite.fromJson(json.cast<String, dynamic>())
            : null);
    return ProdleiteFluent<Prodleite?>(
      future,
      query,
    );
  }

  ProdleiteFluent<Prodleite> findUniqueOrThrow(
      {required ProdleiteWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueprodleiteOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueprodleiteOrThrow',
    );
    final future = query(ProdleiteScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Prodleite.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: prodleite)'));
    return ProdleiteFluent<Prodleite>(
      future,
      query,
    );
  }

  ProdleiteFluent<Prodleite?> findFirst({
    ProdleiteWhereInput? where,
    Iterable<ProdleiteOrderByWithRelationInput>? orderBy,
    ProdleiteWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<ProdleiteScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstprodleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstprodleite',
    );
    final future = query(ProdleiteScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Prodleite.fromJson(json.cast<String, dynamic>())
            : null);
    return ProdleiteFluent<Prodleite?>(
      future,
      query,
    );
  }

  ProdleiteFluent<Prodleite> findFirstOrThrow({
    ProdleiteWhereInput? where,
    Iterable<ProdleiteOrderByWithRelationInput>? orderBy,
    ProdleiteWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<ProdleiteScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstprodleiteOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstprodleiteOrThrow',
    );
    final future = query(ProdleiteScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Prodleite.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: prodleite)'));
    return ProdleiteFluent<Prodleite>(
      future,
      query,
    );
  }

  Future<Iterable<Prodleite>> findMany({
    ProdleiteWhereInput? where,
    Iterable<ProdleiteOrderByWithRelationInput>? orderBy,
    ProdleiteWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<ProdleiteScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyprodleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyprodleite',
    );
    final fields = ProdleiteScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyprodleite) =>
        findManyprodleite.map((Map findManyprodleite) =>
            Prodleite.fromJson(findManyprodleite.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  ProdleiteFluent<Prodleite> create({required ProdleiteCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneprodleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneprodleite',
    );
    final future = query(ProdleiteScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Prodleite.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: prodleite)'));
    return ProdleiteFluent<Prodleite>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<ProdleiteCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyprodleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyprodleite',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyprodleite) =>
        AffectedRowsOutput.fromJson(createManyprodleite.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  ProdleiteFluent<Prodleite?> update({
    required ProdleiteUpdateInput data,
    required ProdleiteWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneprodleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneprodleite',
    );
    final future = query(ProdleiteScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Prodleite.fromJson(json.cast<String, dynamic>())
            : null);
    return ProdleiteFluent<Prodleite?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required ProdleiteUpdateManyMutationInput data,
    ProdleiteWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyprodleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyprodleite',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyprodleite) =>
        AffectedRowsOutput.fromJson(updateManyprodleite.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  ProdleiteFluent<Prodleite> upsert({
    required ProdleiteWhereUniqueInput where,
    required ProdleiteCreateInput create,
    required ProdleiteUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneprodleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneprodleite',
    );
    final future = query(ProdleiteScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Prodleite.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: prodleite)'));
    return ProdleiteFluent<Prodleite>(
      future,
      query,
    );
  }

  ProdleiteFluent<Prodleite?> delete(
      {required ProdleiteWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneprodleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneprodleite',
    );
    final future = query(ProdleiteScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Prodleite.fromJson(json.cast<String, dynamic>())
            : null);
    return ProdleiteFluent<Prodleite?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({ProdleiteWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyprodleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyprodleite',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyprodleite) =>
        AffectedRowsOutput.fromJson(deleteManyprodleite.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateProdleite aggregate({
    ProdleiteWhereInput? where,
    Iterable<ProdleiteOrderByWithRelationInput>? orderBy,
    ProdleiteWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateprodleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateprodleite',
    );
    return AggregateProdleite(query);
  }

  Future<Iterable<ProdleiteGroupByOutputType>> groupBy({
    ProdleiteWhereInput? where,
    Iterable<ProdleiteOrderByWithAggregationInput>? orderBy,
    required Iterable<ProdleiteScalarFieldEnum> by,
    ProdleiteScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByprodleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByprodleite',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByprodleite) =>
        groupByprodleite.map((Map groupByprodleite) =>
            ProdleiteGroupByOutputType.fromJson(groupByprodleite.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension VendaanimalModelDelegateExtension on _i1.ModelDelegate<Vendaanimal> {
  VendaanimalFluent<Vendaanimal?> findUnique(
      {required VendaanimalWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquevendaanimal',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquevendaanimal',
    );
    final future = query(VendaanimalScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Vendaanimal.fromJson(json.cast<String, dynamic>())
            : null);
    return VendaanimalFluent<Vendaanimal?>(
      future,
      query,
    );
  }

  VendaanimalFluent<Vendaanimal> findUniqueOrThrow(
      {required VendaanimalWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquevendaanimalOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquevendaanimalOrThrow',
    );
    final future = query(VendaanimalScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Vendaanimal.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: vendaanimal)'));
    return VendaanimalFluent<Vendaanimal>(
      future,
      query,
    );
  }

  VendaanimalFluent<Vendaanimal?> findFirst({
    VendaanimalWhereInput? where,
    Iterable<VendaanimalOrderByWithRelationInput>? orderBy,
    VendaanimalWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<VendaanimalScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstvendaanimal',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstvendaanimal',
    );
    final future = query(VendaanimalScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Vendaanimal.fromJson(json.cast<String, dynamic>())
            : null);
    return VendaanimalFluent<Vendaanimal?>(
      future,
      query,
    );
  }

  VendaanimalFluent<Vendaanimal> findFirstOrThrow({
    VendaanimalWhereInput? where,
    Iterable<VendaanimalOrderByWithRelationInput>? orderBy,
    VendaanimalWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<VendaanimalScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstvendaanimalOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstvendaanimalOrThrow',
    );
    final future = query(VendaanimalScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Vendaanimal.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: vendaanimal)'));
    return VendaanimalFluent<Vendaanimal>(
      future,
      query,
    );
  }

  Future<Iterable<Vendaanimal>> findMany({
    VendaanimalWhereInput? where,
    Iterable<VendaanimalOrderByWithRelationInput>? orderBy,
    VendaanimalWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<VendaanimalScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyvendaanimal',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyvendaanimal',
    );
    final fields = VendaanimalScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyvendaanimal) =>
        findManyvendaanimal.map((Map findManyvendaanimal) =>
            Vendaanimal.fromJson(findManyvendaanimal.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  VendaanimalFluent<Vendaanimal> create(
      {required VendaanimalCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOnevendaanimal',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOnevendaanimal',
    );
    final future = query(VendaanimalScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Vendaanimal.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: vendaanimal)'));
    return VendaanimalFluent<Vendaanimal>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<VendaanimalCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyvendaanimal',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyvendaanimal',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyvendaanimal) =>
        AffectedRowsOutput.fromJson(createManyvendaanimal.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  VendaanimalFluent<Vendaanimal?> update({
    required VendaanimalUpdateInput data,
    required VendaanimalWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOnevendaanimal',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOnevendaanimal',
    );
    final future = query(VendaanimalScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Vendaanimal.fromJson(json.cast<String, dynamic>())
            : null);
    return VendaanimalFluent<Vendaanimal?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required VendaanimalUpdateManyMutationInput data,
    VendaanimalWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyvendaanimal',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyvendaanimal',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyvendaanimal) =>
        AffectedRowsOutput.fromJson(updateManyvendaanimal.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  VendaanimalFluent<Vendaanimal> upsert({
    required VendaanimalWhereUniqueInput where,
    required VendaanimalCreateInput create,
    required VendaanimalUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOnevendaanimal',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOnevendaanimal',
    );
    final future = query(VendaanimalScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Vendaanimal.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: vendaanimal)'));
    return VendaanimalFluent<Vendaanimal>(
      future,
      query,
    );
  }

  VendaanimalFluent<Vendaanimal?> delete(
      {required VendaanimalWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOnevendaanimal',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOnevendaanimal',
    );
    final future = query(VendaanimalScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Vendaanimal.fromJson(json.cast<String, dynamic>())
            : null);
    return VendaanimalFluent<Vendaanimal?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({VendaanimalWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyvendaanimal',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyvendaanimal',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyvendaanimal) =>
        AffectedRowsOutput.fromJson(deleteManyvendaanimal.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateVendaanimal aggregate({
    VendaanimalWhereInput? where,
    Iterable<VendaanimalOrderByWithRelationInput>? orderBy,
    VendaanimalWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregatevendaanimal',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregatevendaanimal',
    );
    return AggregateVendaanimal(query);
  }

  Future<Iterable<VendaanimalGroupByOutputType>> groupBy({
    VendaanimalWhereInput? where,
    Iterable<VendaanimalOrderByWithAggregationInput>? orderBy,
    required Iterable<VendaanimalScalarFieldEnum> by,
    VendaanimalScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByvendaanimal',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByvendaanimal',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByvendaanimal) =>
        groupByvendaanimal.map((Map groupByvendaanimal) =>
            VendaanimalGroupByOutputType.fromJson(groupByvendaanimal.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension VendaleiteModelDelegateExtension on _i1.ModelDelegate<Vendaleite> {
  VendaleiteFluent<Vendaleite?> findUnique(
      {required VendaleiteWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquevendaleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquevendaleite',
    );
    final future = query(VendaleiteScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Vendaleite.fromJson(json.cast<String, dynamic>())
            : null);
    return VendaleiteFluent<Vendaleite?>(
      future,
      query,
    );
  }

  VendaleiteFluent<Vendaleite> findUniqueOrThrow(
      {required VendaleiteWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquevendaleiteOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquevendaleiteOrThrow',
    );
    final future = query(VendaleiteScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Vendaleite.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: vendaleite)'));
    return VendaleiteFluent<Vendaleite>(
      future,
      query,
    );
  }

  VendaleiteFluent<Vendaleite?> findFirst({
    VendaleiteWhereInput? where,
    Iterable<VendaleiteOrderByWithRelationInput>? orderBy,
    VendaleiteWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<VendaleiteScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstvendaleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstvendaleite',
    );
    final future = query(VendaleiteScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Vendaleite.fromJson(json.cast<String, dynamic>())
            : null);
    return VendaleiteFluent<Vendaleite?>(
      future,
      query,
    );
  }

  VendaleiteFluent<Vendaleite> findFirstOrThrow({
    VendaleiteWhereInput? where,
    Iterable<VendaleiteOrderByWithRelationInput>? orderBy,
    VendaleiteWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<VendaleiteScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstvendaleiteOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstvendaleiteOrThrow',
    );
    final future = query(VendaleiteScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Vendaleite.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: vendaleite)'));
    return VendaleiteFluent<Vendaleite>(
      future,
      query,
    );
  }

  Future<Iterable<Vendaleite>> findMany({
    VendaleiteWhereInput? where,
    Iterable<VendaleiteOrderByWithRelationInput>? orderBy,
    VendaleiteWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<VendaleiteScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyvendaleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyvendaleite',
    );
    final fields = VendaleiteScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyvendaleite) =>
        findManyvendaleite.map((Map findManyvendaleite) =>
            Vendaleite.fromJson(findManyvendaleite.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  VendaleiteFluent<Vendaleite> create({required VendaleiteCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOnevendaleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOnevendaleite',
    );
    final future = query(VendaleiteScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Vendaleite.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: vendaleite)'));
    return VendaleiteFluent<Vendaleite>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<VendaleiteCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyvendaleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyvendaleite',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyvendaleite) =>
        AffectedRowsOutput.fromJson(createManyvendaleite.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  VendaleiteFluent<Vendaleite?> update({
    required VendaleiteUpdateInput data,
    required VendaleiteWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOnevendaleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOnevendaleite',
    );
    final future = query(VendaleiteScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Vendaleite.fromJson(json.cast<String, dynamic>())
            : null);
    return VendaleiteFluent<Vendaleite?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required VendaleiteUpdateManyMutationInput data,
    VendaleiteWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyvendaleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyvendaleite',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyvendaleite) =>
        AffectedRowsOutput.fromJson(updateManyvendaleite.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  VendaleiteFluent<Vendaleite> upsert({
    required VendaleiteWhereUniqueInput where,
    required VendaleiteCreateInput create,
    required VendaleiteUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOnevendaleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOnevendaleite',
    );
    final future = query(VendaleiteScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Vendaleite.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: vendaleite)'));
    return VendaleiteFluent<Vendaleite>(
      future,
      query,
    );
  }

  VendaleiteFluent<Vendaleite?> delete(
      {required VendaleiteWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOnevendaleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOnevendaleite',
    );
    final future = query(VendaleiteScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Vendaleite.fromJson(json.cast<String, dynamic>())
            : null);
    return VendaleiteFluent<Vendaleite?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({VendaleiteWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyvendaleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyvendaleite',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyvendaleite) =>
        AffectedRowsOutput.fromJson(deleteManyvendaleite.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateVendaleite aggregate({
    VendaleiteWhereInput? where,
    Iterable<VendaleiteOrderByWithRelationInput>? orderBy,
    VendaleiteWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregatevendaleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregatevendaleite',
    );
    return AggregateVendaleite(query);
  }

  Future<Iterable<VendaleiteGroupByOutputType>> groupBy({
    VendaleiteWhereInput? where,
    Iterable<VendaleiteOrderByWithAggregationInput>? orderBy,
    required Iterable<VendaleiteScalarFieldEnum> by,
    VendaleiteScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByvendaleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByvendaleite',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByvendaleite) =>
        groupByvendaleite.map((Map groupByvendaleite) =>
            VendaleiteGroupByOutputType.fromJson(groupByvendaleite.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension VendaprodleiteModelDelegateExtension
    on _i1.ModelDelegate<Vendaprodleite> {
  VendaprodleiteFluent<Vendaprodleite?> findUnique(
      {required VendaprodleiteWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquevendaprodleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquevendaprodleite',
    );
    final future = query(VendaprodleiteScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Vendaprodleite.fromJson(json.cast<String, dynamic>())
            : null);
    return VendaprodleiteFluent<Vendaprodleite?>(
      future,
      query,
    );
  }

  VendaprodleiteFluent<Vendaprodleite> findUniqueOrThrow(
      {required VendaprodleiteWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquevendaprodleiteOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquevendaprodleiteOrThrow',
    );
    final future = query(VendaprodleiteScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Vendaprodleite.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: vendaprodleite)'));
    return VendaprodleiteFluent<Vendaprodleite>(
      future,
      query,
    );
  }

  VendaprodleiteFluent<Vendaprodleite?> findFirst({
    VendaprodleiteWhereInput? where,
    Iterable<VendaprodleiteOrderByWithRelationInput>? orderBy,
    VendaprodleiteWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<VendaprodleiteScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstvendaprodleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstvendaprodleite',
    );
    final future = query(VendaprodleiteScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Vendaprodleite.fromJson(json.cast<String, dynamic>())
            : null);
    return VendaprodleiteFluent<Vendaprodleite?>(
      future,
      query,
    );
  }

  VendaprodleiteFluent<Vendaprodleite> findFirstOrThrow({
    VendaprodleiteWhereInput? where,
    Iterable<VendaprodleiteOrderByWithRelationInput>? orderBy,
    VendaprodleiteWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<VendaprodleiteScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstvendaprodleiteOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstvendaprodleiteOrThrow',
    );
    final future = query(VendaprodleiteScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Vendaprodleite.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: vendaprodleite)'));
    return VendaprodleiteFluent<Vendaprodleite>(
      future,
      query,
    );
  }

  Future<Iterable<Vendaprodleite>> findMany({
    VendaprodleiteWhereInput? where,
    Iterable<VendaprodleiteOrderByWithRelationInput>? orderBy,
    VendaprodleiteWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<VendaprodleiteScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyvendaprodleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyvendaprodleite',
    );
    final fields = VendaprodleiteScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyvendaprodleite) =>
        findManyvendaprodleite.map((Map findManyvendaprodleite) =>
            Vendaprodleite.fromJson(findManyvendaprodleite.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  VendaprodleiteFluent<Vendaprodleite> create(
      {required VendaprodleiteCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOnevendaprodleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOnevendaprodleite',
    );
    final future = query(VendaprodleiteScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Vendaprodleite.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: vendaprodleite)'));
    return VendaprodleiteFluent<Vendaprodleite>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<VendaprodleiteCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyvendaprodleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyvendaprodleite',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyvendaprodleite) =>
        AffectedRowsOutput.fromJson(createManyvendaprodleite.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  VendaprodleiteFluent<Vendaprodleite?> update({
    required VendaprodleiteUpdateInput data,
    required VendaprodleiteWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOnevendaprodleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOnevendaprodleite',
    );
    final future = query(VendaprodleiteScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Vendaprodleite.fromJson(json.cast<String, dynamic>())
            : null);
    return VendaprodleiteFluent<Vendaprodleite?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required VendaprodleiteUpdateManyMutationInput data,
    VendaprodleiteWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyvendaprodleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyvendaprodleite',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyvendaprodleite) =>
        AffectedRowsOutput.fromJson(updateManyvendaprodleite.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  VendaprodleiteFluent<Vendaprodleite> upsert({
    required VendaprodleiteWhereUniqueInput where,
    required VendaprodleiteCreateInput create,
    required VendaprodleiteUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOnevendaprodleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOnevendaprodleite',
    );
    final future = query(VendaprodleiteScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Vendaprodleite.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: vendaprodleite)'));
    return VendaprodleiteFluent<Vendaprodleite>(
      future,
      query,
    );
  }

  VendaprodleiteFluent<Vendaprodleite?> delete(
      {required VendaprodleiteWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOnevendaprodleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOnevendaprodleite',
    );
    final future = query(VendaprodleiteScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Vendaprodleite.fromJson(json.cast<String, dynamic>())
            : null);
    return VendaprodleiteFluent<Vendaprodleite?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({VendaprodleiteWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyvendaprodleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyvendaprodleite',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyvendaprodleite) =>
        AffectedRowsOutput.fromJson(deleteManyvendaprodleite.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateVendaprodleite aggregate({
    VendaprodleiteWhereInput? where,
    Iterable<VendaprodleiteOrderByWithRelationInput>? orderBy,
    VendaprodleiteWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregatevendaprodleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregatevendaprodleite',
    );
    return AggregateVendaprodleite(query);
  }

  Future<Iterable<VendaprodleiteGroupByOutputType>> groupBy({
    VendaprodleiteWhereInput? where,
    Iterable<VendaprodleiteOrderByWithAggregationInput>? orderBy,
    required Iterable<VendaprodleiteScalarFieldEnum> by,
    VendaprodleiteScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByvendaprodleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByvendaprodleite',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByvendaprodleite) => groupByvendaprodleite.map(
        (Map groupByvendaprodleite) => VendaprodleiteGroupByOutputType.fromJson(
            groupByvendaprodleite.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

@_i1.jsonSerializable
class AnimalGroupByOutputType implements _i1.JsonSerializable {
  const AnimalGroupByOutputType({
    this.codAnimal,
    this.codProdLeite,
    this.codCategoria,
    this.nome,
    this.dataNascimento,
    this.sexo,
    this.raca,
    this.idade,
    this.formaManejo,
    this.mediaLeite,
  });

  factory AnimalGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$AnimalGroupByOutputTypeFromJson(json);

  final int? codAnimal;

  final int? codProdLeite;

  final int? codCategoria;

  final String? nome;

  final DateTime? dataNascimento;

  final String? sexo;

  final String? raca;

  final int? idade;

  final String? formaManejo;

  final double? mediaLeite;

  @override
  Map<String, dynamic> toJson() => _$AnimalGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class CategoriaGroupByOutputType implements _i1.JsonSerializable {
  const CategoriaGroupByOutputType({
    this.codCategoria,
    this.tipo,
  });

  factory CategoriaGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$CategoriaGroupByOutputTypeFromJson(json);

  final int? codCategoria;

  final String? tipo;

  @override
  Map<String, dynamic> toJson() => _$CategoriaGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class CompradorGroupByOutputType implements _i1.JsonSerializable {
  const CompradorGroupByOutputType({
    this.codComprador,
    this.nome,
    this.telefone,
    this.endereco,
  });

  factory CompradorGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$CompradorGroupByOutputTypeFromJson(json);

  final int? codComprador;

  final String? nome;

  final String? telefone;

  final String? endereco;

  @override
  Map<String, dynamic> toJson() => _$CompradorGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class ItensvendaGroupByOutputType implements _i1.JsonSerializable {
  const ItensvendaGroupByOutputType({
    this.codItensVenda,
    this.codVendaAnimal,
    this.codAnimal,
    this.quantidade,
    this.valorUnitario,
    this.valorTotalItemAnimal,
  });

  factory ItensvendaGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$ItensvendaGroupByOutputTypeFromJson(json);

  final int? codItensVenda;

  final int? codVendaAnimal;

  final int? codAnimal;

  final int? quantidade;

  final double? valorUnitario;

  final double? valorTotalItemAnimal;

  @override
  Map<String, dynamic> toJson() => _$ItensvendaGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class ProdleiteGroupByOutputType implements _i1.JsonSerializable {
  const ProdleiteGroupByOutputType({
    this.codProdLeite,
    this.dataProdLeite,
    this.qtdProdLeite,
  });

  factory ProdleiteGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$ProdleiteGroupByOutputTypeFromJson(json);

  final int? codProdLeite;

  final DateTime? dataProdLeite;

  final double? qtdProdLeite;

  @override
  Map<String, dynamic> toJson() => _$ProdleiteGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class VendaanimalGroupByOutputType implements _i1.JsonSerializable {
  const VendaanimalGroupByOutputType({
    this.codVendaAnimal,
    this.codComprador,
    this.dataVendaAnimal,
    this.valorTotalAnimal,
  });

  factory VendaanimalGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$VendaanimalGroupByOutputTypeFromJson(json);

  final int? codVendaAnimal;

  final int? codComprador;

  final DateTime? dataVendaAnimal;

  final double? valorTotalAnimal;

  @override
  Map<String, dynamic> toJson() => _$VendaanimalGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class VendaleiteGroupByOutputType implements _i1.JsonSerializable {
  const VendaleiteGroupByOutputType({
    this.codVendaLeite,
    this.codComprador,
    this.dataVendaLeite,
    this.valorTotalLeite,
  });

  factory VendaleiteGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$VendaleiteGroupByOutputTypeFromJson(json);

  final int? codVendaLeite;

  final int? codComprador;

  final DateTime? dataVendaLeite;

  final double? valorTotalLeite;

  @override
  Map<String, dynamic> toJson() => _$VendaleiteGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class VendaprodleiteGroupByOutputType implements _i1.JsonSerializable {
  const VendaprodleiteGroupByOutputType({
    this.codVendaProdLeite,
    this.codVendaLeite,
    this.codProdLeite,
    this.qtdLeite,
    this.valorLitro,
    this.valorTotalItemLeite,
  });

  factory VendaprodleiteGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$VendaprodleiteGroupByOutputTypeFromJson(json);

  final int? codVendaProdLeite;

  final int? codVendaLeite;

  final int? codProdLeite;

  final double? qtdLeite;

  final double? valorLitro;

  final double? valorTotalItemLeite;

  @override
  Map<String, dynamic> toJson() =>
      _$VendaprodleiteGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class AffectedRowsOutput implements _i1.JsonSerializable {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map<String, dynamic> json) =>
      _$AffectedRowsOutputFromJson(json);

  final int? count;

  @override
  Map<String, dynamic> toJson() => _$AffectedRowsOutputToJson(this);
}

class AggregateAnimal {
  const AggregateAnimal(this.$query);

  final _i1.PrismaFluentQuery $query;

  AnimalCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return AnimalCountAggregateOutputType(query);
  }

  AnimalAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return AnimalAvgAggregateOutputType(query);
  }

  AnimalSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return AnimalSumAggregateOutputType(query);
  }

  AnimalMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return AnimalMinAggregateOutputType(query);
  }

  AnimalMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return AnimalMaxAggregateOutputType(query);
  }
}

class AggregateCategoria {
  const AggregateCategoria(this.$query);

  final _i1.PrismaFluentQuery $query;

  CategoriaCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return CategoriaCountAggregateOutputType(query);
  }

  CategoriaAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return CategoriaAvgAggregateOutputType(query);
  }

  CategoriaSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return CategoriaSumAggregateOutputType(query);
  }

  CategoriaMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return CategoriaMinAggregateOutputType(query);
  }

  CategoriaMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return CategoriaMaxAggregateOutputType(query);
  }
}

class AggregateComprador {
  const AggregateComprador(this.$query);

  final _i1.PrismaFluentQuery $query;

  CompradorCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return CompradorCountAggregateOutputType(query);
  }

  CompradorAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return CompradorAvgAggregateOutputType(query);
  }

  CompradorSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return CompradorSumAggregateOutputType(query);
  }

  CompradorMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return CompradorMinAggregateOutputType(query);
  }

  CompradorMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return CompradorMaxAggregateOutputType(query);
  }
}

class AggregateItensvenda {
  const AggregateItensvenda(this.$query);

  final _i1.PrismaFluentQuery $query;

  ItensvendaCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return ItensvendaCountAggregateOutputType(query);
  }

  ItensvendaAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return ItensvendaAvgAggregateOutputType(query);
  }

  ItensvendaSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return ItensvendaSumAggregateOutputType(query);
  }

  ItensvendaMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return ItensvendaMinAggregateOutputType(query);
  }

  ItensvendaMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return ItensvendaMaxAggregateOutputType(query);
  }
}

class AggregateProdleite {
  const AggregateProdleite(this.$query);

  final _i1.PrismaFluentQuery $query;

  ProdleiteCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return ProdleiteCountAggregateOutputType(query);
  }

  ProdleiteAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return ProdleiteAvgAggregateOutputType(query);
  }

  ProdleiteSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return ProdleiteSumAggregateOutputType(query);
  }

  ProdleiteMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return ProdleiteMinAggregateOutputType(query);
  }

  ProdleiteMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return ProdleiteMaxAggregateOutputType(query);
  }
}

class AggregateVendaanimal {
  const AggregateVendaanimal(this.$query);

  final _i1.PrismaFluentQuery $query;

  VendaanimalCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return VendaanimalCountAggregateOutputType(query);
  }

  VendaanimalAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return VendaanimalAvgAggregateOutputType(query);
  }

  VendaanimalSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return VendaanimalSumAggregateOutputType(query);
  }

  VendaanimalMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return VendaanimalMinAggregateOutputType(query);
  }

  VendaanimalMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return VendaanimalMaxAggregateOutputType(query);
  }
}

class AggregateVendaleite {
  const AggregateVendaleite(this.$query);

  final _i1.PrismaFluentQuery $query;

  VendaleiteCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return VendaleiteCountAggregateOutputType(query);
  }

  VendaleiteAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return VendaleiteAvgAggregateOutputType(query);
  }

  VendaleiteSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return VendaleiteSumAggregateOutputType(query);
  }

  VendaleiteMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return VendaleiteMinAggregateOutputType(query);
  }

  VendaleiteMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return VendaleiteMaxAggregateOutputType(query);
  }
}

class AggregateVendaprodleite {
  const AggregateVendaprodleite(this.$query);

  final _i1.PrismaFluentQuery $query;

  VendaprodleiteCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return VendaprodleiteCountAggregateOutputType(query);
  }

  VendaprodleiteAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return VendaprodleiteAvgAggregateOutputType(query);
  }

  VendaprodleiteSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return VendaprodleiteSumAggregateOutputType(query);
  }

  VendaprodleiteMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return VendaprodleiteMinAggregateOutputType(query);
  }

  VendaprodleiteMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return VendaprodleiteMaxAggregateOutputType(query);
  }
}

class AnimalCountOutputType {
  const AnimalCountOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> itensvenda({ItensvendaWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'itensvenda',
          fields: fields,
          args: args,
        )
      ]),
      key: r'itensvenda',
    );
    return query(const []).then((value) => (value as int));
  }
}

class AnimalCountAggregateOutputType {
  const AnimalCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> codAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codAnimal',
          fields: fields,
        )
      ]),
      key: r'codAnimal',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> codProdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codProdLeite',
          fields: fields,
        )
      ]),
      key: r'codProdLeite',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> codCategoria() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codCategoria',
          fields: fields,
        )
      ]),
      key: r'codCategoria',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> nome() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'nome',
          fields: fields,
        )
      ]),
      key: r'nome',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> dataNascimento() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'dataNascimento',
          fields: fields,
        )
      ]),
      key: r'dataNascimento',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> sexo() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'sexo',
          fields: fields,
        )
      ]),
      key: r'sexo',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> raca() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'raca',
          fields: fields,
        )
      ]),
      key: r'raca',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> idade() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idade',
          fields: fields,
        )
      ]),
      key: r'idade',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> formaManejo() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'formaManejo',
          fields: fields,
        )
      ]),
      key: r'formaManejo',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> mediaLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'mediaLeite',
          fields: fields,
        )
      ]),
      key: r'mediaLeite',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class AnimalAvgAggregateOutputType {
  const AnimalAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> codAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codAnimal',
          fields: fields,
        )
      ]),
      key: r'codAnimal',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> codProdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codProdLeite',
          fields: fields,
        )
      ]),
      key: r'codProdLeite',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> codCategoria() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codCategoria',
          fields: fields,
        )
      ]),
      key: r'codCategoria',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> idade() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idade',
          fields: fields,
        )
      ]),
      key: r'idade',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> mediaLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'mediaLeite',
          fields: fields,
        )
      ]),
      key: r'mediaLeite',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class AnimalSumAggregateOutputType {
  const AnimalSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> codAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codAnimal',
          fields: fields,
        )
      ]),
      key: r'codAnimal',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> codProdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codProdLeite',
          fields: fields,
        )
      ]),
      key: r'codProdLeite',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> codCategoria() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codCategoria',
          fields: fields,
        )
      ]),
      key: r'codCategoria',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> idade() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idade',
          fields: fields,
        )
      ]),
      key: r'idade',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<double?> mediaLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'mediaLeite',
          fields: fields,
        )
      ]),
      key: r'mediaLeite',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class AnimalMinAggregateOutputType {
  const AnimalMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> codAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codAnimal',
          fields: fields,
        )
      ]),
      key: r'codAnimal',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> codProdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codProdLeite',
          fields: fields,
        )
      ]),
      key: r'codProdLeite',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> codCategoria() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codCategoria',
          fields: fields,
        )
      ]),
      key: r'codCategoria',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> nome() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'nome',
          fields: fields,
        )
      ]),
      key: r'nome',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<DateTime?> dataNascimento() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'dataNascimento',
          fields: fields,
        )
      ]),
      key: r'dataNascimento',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<String?> sexo() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'sexo',
          fields: fields,
        )
      ]),
      key: r'sexo',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> raca() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'raca',
          fields: fields,
        )
      ]),
      key: r'raca',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<int?> idade() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idade',
          fields: fields,
        )
      ]),
      key: r'idade',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> formaManejo() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'formaManejo',
          fields: fields,
        )
      ]),
      key: r'formaManejo',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<double?> mediaLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'mediaLeite',
          fields: fields,
        )
      ]),
      key: r'mediaLeite',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class AnimalMaxAggregateOutputType {
  const AnimalMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> codAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codAnimal',
          fields: fields,
        )
      ]),
      key: r'codAnimal',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> codProdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codProdLeite',
          fields: fields,
        )
      ]),
      key: r'codProdLeite',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> codCategoria() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codCategoria',
          fields: fields,
        )
      ]),
      key: r'codCategoria',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> nome() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'nome',
          fields: fields,
        )
      ]),
      key: r'nome',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<DateTime?> dataNascimento() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'dataNascimento',
          fields: fields,
        )
      ]),
      key: r'dataNascimento',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<String?> sexo() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'sexo',
          fields: fields,
        )
      ]),
      key: r'sexo',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> raca() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'raca',
          fields: fields,
        )
      ]),
      key: r'raca',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<int?> idade() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'idade',
          fields: fields,
        )
      ]),
      key: r'idade',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> formaManejo() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'formaManejo',
          fields: fields,
        )
      ]),
      key: r'formaManejo',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<double?> mediaLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'mediaLeite',
          fields: fields,
        )
      ]),
      key: r'mediaLeite',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class CategoriaCountOutputType {
  const CategoriaCountOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> animal({AnimalWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'animal',
          fields: fields,
          args: args,
        )
      ]),
      key: r'animal',
    );
    return query(const []).then((value) => (value as int));
  }
}

class CategoriaCountAggregateOutputType {
  const CategoriaCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> codCategoria() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codCategoria',
          fields: fields,
        )
      ]),
      key: r'codCategoria',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> tipo() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'tipo',
          fields: fields,
        )
      ]),
      key: r'tipo',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class CategoriaAvgAggregateOutputType {
  const CategoriaAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> codCategoria() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codCategoria',
          fields: fields,
        )
      ]),
      key: r'codCategoria',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class CategoriaSumAggregateOutputType {
  const CategoriaSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> codCategoria() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codCategoria',
          fields: fields,
        )
      ]),
      key: r'codCategoria',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class CategoriaMinAggregateOutputType {
  const CategoriaMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> codCategoria() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codCategoria',
          fields: fields,
        )
      ]),
      key: r'codCategoria',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> tipo() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'tipo',
          fields: fields,
        )
      ]),
      key: r'tipo',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class CategoriaMaxAggregateOutputType {
  const CategoriaMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> codCategoria() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codCategoria',
          fields: fields,
        )
      ]),
      key: r'codCategoria',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> tipo() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'tipo',
          fields: fields,
        )
      ]),
      key: r'tipo',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class CompradorCountOutputType {
  const CompradorCountOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> vendaanimal({VendaanimalWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'vendaanimal',
          fields: fields,
          args: args,
        )
      ]),
      key: r'vendaanimal',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> vendaleite({VendaleiteWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'vendaleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'vendaleite',
    );
    return query(const []).then((value) => (value as int));
  }
}

class CompradorCountAggregateOutputType {
  const CompradorCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> codComprador() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codComprador',
          fields: fields,
        )
      ]),
      key: r'codComprador',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> nome() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'nome',
          fields: fields,
        )
      ]),
      key: r'nome',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> telefone() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'telefone',
          fields: fields,
        )
      ]),
      key: r'telefone',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> endereco() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'endereco',
          fields: fields,
        )
      ]),
      key: r'endereco',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class CompradorAvgAggregateOutputType {
  const CompradorAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> codComprador() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codComprador',
          fields: fields,
        )
      ]),
      key: r'codComprador',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class CompradorSumAggregateOutputType {
  const CompradorSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> codComprador() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codComprador',
          fields: fields,
        )
      ]),
      key: r'codComprador',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class CompradorMinAggregateOutputType {
  const CompradorMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> codComprador() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codComprador',
          fields: fields,
        )
      ]),
      key: r'codComprador',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> nome() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'nome',
          fields: fields,
        )
      ]),
      key: r'nome',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> telefone() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'telefone',
          fields: fields,
        )
      ]),
      key: r'telefone',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> endereco() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'endereco',
          fields: fields,
        )
      ]),
      key: r'endereco',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class CompradorMaxAggregateOutputType {
  const CompradorMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> codComprador() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codComprador',
          fields: fields,
        )
      ]),
      key: r'codComprador',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> nome() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'nome',
          fields: fields,
        )
      ]),
      key: r'nome',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> telefone() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'telefone',
          fields: fields,
        )
      ]),
      key: r'telefone',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> endereco() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'endereco',
          fields: fields,
        )
      ]),
      key: r'endereco',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class ItensvendaCountAggregateOutputType {
  const ItensvendaCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> codItensVenda() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codItensVenda',
          fields: fields,
        )
      ]),
      key: r'codItensVenda',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> codVendaAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codVendaAnimal',
          fields: fields,
        )
      ]),
      key: r'codVendaAnimal',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> codAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codAnimal',
          fields: fields,
        )
      ]),
      key: r'codAnimal',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> quantidade() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'quantidade',
          fields: fields,
        )
      ]),
      key: r'quantidade',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> valorUnitario() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'valorUnitario',
          fields: fields,
        )
      ]),
      key: r'valorUnitario',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> valorTotalItemAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'valorTotalItemAnimal',
          fields: fields,
        )
      ]),
      key: r'valorTotalItemAnimal',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class ItensvendaAvgAggregateOutputType {
  const ItensvendaAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> codItensVenda() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codItensVenda',
          fields: fields,
        )
      ]),
      key: r'codItensVenda',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> codVendaAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codVendaAnimal',
          fields: fields,
        )
      ]),
      key: r'codVendaAnimal',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> codAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codAnimal',
          fields: fields,
        )
      ]),
      key: r'codAnimal',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> quantidade() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'quantidade',
          fields: fields,
        )
      ]),
      key: r'quantidade',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> valorUnitario() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'valorUnitario',
          fields: fields,
        )
      ]),
      key: r'valorUnitario',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> valorTotalItemAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'valorTotalItemAnimal',
          fields: fields,
        )
      ]),
      key: r'valorTotalItemAnimal',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class ItensvendaSumAggregateOutputType {
  const ItensvendaSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> codItensVenda() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codItensVenda',
          fields: fields,
        )
      ]),
      key: r'codItensVenda',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> codVendaAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codVendaAnimal',
          fields: fields,
        )
      ]),
      key: r'codVendaAnimal',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> codAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codAnimal',
          fields: fields,
        )
      ]),
      key: r'codAnimal',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> quantidade() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'quantidade',
          fields: fields,
        )
      ]),
      key: r'quantidade',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<double?> valorUnitario() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'valorUnitario',
          fields: fields,
        )
      ]),
      key: r'valorUnitario',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> valorTotalItemAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'valorTotalItemAnimal',
          fields: fields,
        )
      ]),
      key: r'valorTotalItemAnimal',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class ItensvendaMinAggregateOutputType {
  const ItensvendaMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> codItensVenda() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codItensVenda',
          fields: fields,
        )
      ]),
      key: r'codItensVenda',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> codVendaAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codVendaAnimal',
          fields: fields,
        )
      ]),
      key: r'codVendaAnimal',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> codAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codAnimal',
          fields: fields,
        )
      ]),
      key: r'codAnimal',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> quantidade() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'quantidade',
          fields: fields,
        )
      ]),
      key: r'quantidade',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<double?> valorUnitario() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'valorUnitario',
          fields: fields,
        )
      ]),
      key: r'valorUnitario',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> valorTotalItemAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'valorTotalItemAnimal',
          fields: fields,
        )
      ]),
      key: r'valorTotalItemAnimal',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class ItensvendaMaxAggregateOutputType {
  const ItensvendaMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> codItensVenda() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codItensVenda',
          fields: fields,
        )
      ]),
      key: r'codItensVenda',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> codVendaAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codVendaAnimal',
          fields: fields,
        )
      ]),
      key: r'codVendaAnimal',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> codAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codAnimal',
          fields: fields,
        )
      ]),
      key: r'codAnimal',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> quantidade() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'quantidade',
          fields: fields,
        )
      ]),
      key: r'quantidade',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<double?> valorUnitario() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'valorUnitario',
          fields: fields,
        )
      ]),
      key: r'valorUnitario',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> valorTotalItemAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'valorTotalItemAnimal',
          fields: fields,
        )
      ]),
      key: r'valorTotalItemAnimal',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class ProdleiteCountOutputType {
  const ProdleiteCountOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> animal({AnimalWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'animal',
          fields: fields,
          args: args,
        )
      ]),
      key: r'animal',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> vendaprodleite({VendaprodleiteWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'vendaprodleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'vendaprodleite',
    );
    return query(const []).then((value) => (value as int));
  }
}

class ProdleiteCountAggregateOutputType {
  const ProdleiteCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> codProdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codProdLeite',
          fields: fields,
        )
      ]),
      key: r'codProdLeite',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> dataProdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'dataProdLeite',
          fields: fields,
        )
      ]),
      key: r'dataProdLeite',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> qtdProdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'qtdProdLeite',
          fields: fields,
        )
      ]),
      key: r'qtdProdLeite',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class ProdleiteAvgAggregateOutputType {
  const ProdleiteAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> codProdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codProdLeite',
          fields: fields,
        )
      ]),
      key: r'codProdLeite',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> qtdProdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'qtdProdLeite',
          fields: fields,
        )
      ]),
      key: r'qtdProdLeite',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class ProdleiteSumAggregateOutputType {
  const ProdleiteSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> codProdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codProdLeite',
          fields: fields,
        )
      ]),
      key: r'codProdLeite',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<double?> qtdProdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'qtdProdLeite',
          fields: fields,
        )
      ]),
      key: r'qtdProdLeite',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class ProdleiteMinAggregateOutputType {
  const ProdleiteMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> codProdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codProdLeite',
          fields: fields,
        )
      ]),
      key: r'codProdLeite',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<DateTime?> dataProdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'dataProdLeite',
          fields: fields,
        )
      ]),
      key: r'dataProdLeite',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<double?> qtdProdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'qtdProdLeite',
          fields: fields,
        )
      ]),
      key: r'qtdProdLeite',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class ProdleiteMaxAggregateOutputType {
  const ProdleiteMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> codProdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codProdLeite',
          fields: fields,
        )
      ]),
      key: r'codProdLeite',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<DateTime?> dataProdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'dataProdLeite',
          fields: fields,
        )
      ]),
      key: r'dataProdLeite',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<double?> qtdProdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'qtdProdLeite',
          fields: fields,
        )
      ]),
      key: r'qtdProdLeite',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class VendaanimalCountOutputType {
  const VendaanimalCountOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> itensvenda({ItensvendaWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'itensvenda',
          fields: fields,
          args: args,
        )
      ]),
      key: r'itensvenda',
    );
    return query(const []).then((value) => (value as int));
  }
}

class VendaanimalCountAggregateOutputType {
  const VendaanimalCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> codVendaAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codVendaAnimal',
          fields: fields,
        )
      ]),
      key: r'codVendaAnimal',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> codComprador() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codComprador',
          fields: fields,
        )
      ]),
      key: r'codComprador',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> dataVendaAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'dataVendaAnimal',
          fields: fields,
        )
      ]),
      key: r'dataVendaAnimal',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> valorTotalAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'valorTotalAnimal',
          fields: fields,
        )
      ]),
      key: r'valorTotalAnimal',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class VendaanimalAvgAggregateOutputType {
  const VendaanimalAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> codVendaAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codVendaAnimal',
          fields: fields,
        )
      ]),
      key: r'codVendaAnimal',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> codComprador() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codComprador',
          fields: fields,
        )
      ]),
      key: r'codComprador',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> valorTotalAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'valorTotalAnimal',
          fields: fields,
        )
      ]),
      key: r'valorTotalAnimal',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class VendaanimalSumAggregateOutputType {
  const VendaanimalSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> codVendaAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codVendaAnimal',
          fields: fields,
        )
      ]),
      key: r'codVendaAnimal',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> codComprador() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codComprador',
          fields: fields,
        )
      ]),
      key: r'codComprador',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<double?> valorTotalAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'valorTotalAnimal',
          fields: fields,
        )
      ]),
      key: r'valorTotalAnimal',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class VendaanimalMinAggregateOutputType {
  const VendaanimalMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> codVendaAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codVendaAnimal',
          fields: fields,
        )
      ]),
      key: r'codVendaAnimal',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> codComprador() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codComprador',
          fields: fields,
        )
      ]),
      key: r'codComprador',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<DateTime?> dataVendaAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'dataVendaAnimal',
          fields: fields,
        )
      ]),
      key: r'dataVendaAnimal',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<double?> valorTotalAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'valorTotalAnimal',
          fields: fields,
        )
      ]),
      key: r'valorTotalAnimal',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class VendaanimalMaxAggregateOutputType {
  const VendaanimalMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> codVendaAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codVendaAnimal',
          fields: fields,
        )
      ]),
      key: r'codVendaAnimal',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> codComprador() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codComprador',
          fields: fields,
        )
      ]),
      key: r'codComprador',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<DateTime?> dataVendaAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'dataVendaAnimal',
          fields: fields,
        )
      ]),
      key: r'dataVendaAnimal',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<double?> valorTotalAnimal() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'valorTotalAnimal',
          fields: fields,
        )
      ]),
      key: r'valorTotalAnimal',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class VendaleiteCountOutputType {
  const VendaleiteCountOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> vendaprodleite({VendaprodleiteWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'vendaprodleite',
          fields: fields,
          args: args,
        )
      ]),
      key: r'vendaprodleite',
    );
    return query(const []).then((value) => (value as int));
  }
}

class VendaleiteCountAggregateOutputType {
  const VendaleiteCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> codVendaLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codVendaLeite',
          fields: fields,
        )
      ]),
      key: r'codVendaLeite',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> codComprador() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codComprador',
          fields: fields,
        )
      ]),
      key: r'codComprador',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> dataVendaLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'dataVendaLeite',
          fields: fields,
        )
      ]),
      key: r'dataVendaLeite',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> valorTotalLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'valorTotalLeite',
          fields: fields,
        )
      ]),
      key: r'valorTotalLeite',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class VendaleiteAvgAggregateOutputType {
  const VendaleiteAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> codVendaLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codVendaLeite',
          fields: fields,
        )
      ]),
      key: r'codVendaLeite',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> codComprador() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codComprador',
          fields: fields,
        )
      ]),
      key: r'codComprador',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> valorTotalLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'valorTotalLeite',
          fields: fields,
        )
      ]),
      key: r'valorTotalLeite',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class VendaleiteSumAggregateOutputType {
  const VendaleiteSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> codVendaLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codVendaLeite',
          fields: fields,
        )
      ]),
      key: r'codVendaLeite',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> codComprador() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codComprador',
          fields: fields,
        )
      ]),
      key: r'codComprador',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<double?> valorTotalLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'valorTotalLeite',
          fields: fields,
        )
      ]),
      key: r'valorTotalLeite',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class VendaleiteMinAggregateOutputType {
  const VendaleiteMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> codVendaLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codVendaLeite',
          fields: fields,
        )
      ]),
      key: r'codVendaLeite',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> codComprador() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codComprador',
          fields: fields,
        )
      ]),
      key: r'codComprador',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<DateTime?> dataVendaLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'dataVendaLeite',
          fields: fields,
        )
      ]),
      key: r'dataVendaLeite',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<double?> valorTotalLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'valorTotalLeite',
          fields: fields,
        )
      ]),
      key: r'valorTotalLeite',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class VendaleiteMaxAggregateOutputType {
  const VendaleiteMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> codVendaLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codVendaLeite',
          fields: fields,
        )
      ]),
      key: r'codVendaLeite',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> codComprador() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codComprador',
          fields: fields,
        )
      ]),
      key: r'codComprador',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<DateTime?> dataVendaLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'dataVendaLeite',
          fields: fields,
        )
      ]),
      key: r'dataVendaLeite',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<double?> valorTotalLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'valorTotalLeite',
          fields: fields,
        )
      ]),
      key: r'valorTotalLeite',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class VendaprodleiteCountAggregateOutputType {
  const VendaprodleiteCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> codVendaProdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codVendaProdLeite',
          fields: fields,
        )
      ]),
      key: r'codVendaProdLeite',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> codVendaLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codVendaLeite',
          fields: fields,
        )
      ]),
      key: r'codVendaLeite',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> codProdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codProdLeite',
          fields: fields,
        )
      ]),
      key: r'codProdLeite',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> qtdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'qtdLeite',
          fields: fields,
        )
      ]),
      key: r'qtdLeite',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> valorLitro() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'valorLitro',
          fields: fields,
        )
      ]),
      key: r'valorLitro',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> valorTotalItemLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'valorTotalItemLeite',
          fields: fields,
        )
      ]),
      key: r'valorTotalItemLeite',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class VendaprodleiteAvgAggregateOutputType {
  const VendaprodleiteAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> codVendaProdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codVendaProdLeite',
          fields: fields,
        )
      ]),
      key: r'codVendaProdLeite',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> codVendaLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codVendaLeite',
          fields: fields,
        )
      ]),
      key: r'codVendaLeite',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> codProdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codProdLeite',
          fields: fields,
        )
      ]),
      key: r'codProdLeite',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> qtdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'qtdLeite',
          fields: fields,
        )
      ]),
      key: r'qtdLeite',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> valorLitro() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'valorLitro',
          fields: fields,
        )
      ]),
      key: r'valorLitro',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> valorTotalItemLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'valorTotalItemLeite',
          fields: fields,
        )
      ]),
      key: r'valorTotalItemLeite',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class VendaprodleiteSumAggregateOutputType {
  const VendaprodleiteSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> codVendaProdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codVendaProdLeite',
          fields: fields,
        )
      ]),
      key: r'codVendaProdLeite',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> codVendaLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codVendaLeite',
          fields: fields,
        )
      ]),
      key: r'codVendaLeite',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> codProdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codProdLeite',
          fields: fields,
        )
      ]),
      key: r'codProdLeite',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<double?> qtdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'qtdLeite',
          fields: fields,
        )
      ]),
      key: r'qtdLeite',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> valorLitro() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'valorLitro',
          fields: fields,
        )
      ]),
      key: r'valorLitro',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> valorTotalItemLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'valorTotalItemLeite',
          fields: fields,
        )
      ]),
      key: r'valorTotalItemLeite',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class VendaprodleiteMinAggregateOutputType {
  const VendaprodleiteMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> codVendaProdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codVendaProdLeite',
          fields: fields,
        )
      ]),
      key: r'codVendaProdLeite',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> codVendaLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codVendaLeite',
          fields: fields,
        )
      ]),
      key: r'codVendaLeite',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> codProdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codProdLeite',
          fields: fields,
        )
      ]),
      key: r'codProdLeite',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<double?> qtdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'qtdLeite',
          fields: fields,
        )
      ]),
      key: r'qtdLeite',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> valorLitro() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'valorLitro',
          fields: fields,
        )
      ]),
      key: r'valorLitro',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> valorTotalItemLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'valorTotalItemLeite',
          fields: fields,
        )
      ]),
      key: r'valorTotalItemLeite',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class VendaprodleiteMaxAggregateOutputType {
  const VendaprodleiteMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> codVendaProdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codVendaProdLeite',
          fields: fields,
        )
      ]),
      key: r'codVendaProdLeite',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> codVendaLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codVendaLeite',
          fields: fields,
        )
      ]),
      key: r'codVendaLeite',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> codProdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'codProdLeite',
          fields: fields,
        )
      ]),
      key: r'codProdLeite',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<double?> qtdLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'qtdLeite',
          fields: fields,
        )
      ]),
      key: r'qtdLeite',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> valorLitro() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'valorLitro',
          fields: fields,
        )
      ]),
      key: r'valorLitro',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> valorTotalItemLeite() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'valorTotalItemLeite',
          fields: fields,
        )
      ]),
      key: r'valorTotalItemLeite',
    );
    return query(const []).then((value) => (value as double?));
  }
}

@JsonSerializable(
  createFactory: false,
  createToJson: true,
  includeIfNull: false,
)
class Datasources implements _i1.JsonSerializable {
  const Datasources(
      {this.db = r'mysql://root:root@localhost:3306/controle_bovino_leiteiro'});

  final String? db;

  @override
  Map<String, dynamic> toJson() => _$DatasourcesToJson(this);
}

class PrismaClient extends _i1.BasePrismaClient<PrismaClient> {
  PrismaClient._internal(
    _i3.Engine engine, {
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  })  : _engine = engine,
        _headers = headers,
        _transaction = transaction,
        super(
          engine,
          headers: headers,
          transaction: transaction,
        );

  factory PrismaClient({
    Datasources? datasources,
    Iterable<_i4.Event>? stdout,
    Iterable<_i4.Event>? event,
  }) {
    final logger = _i4.Logger(
      stdout: stdout,
      event: event,
    );
    final engine = _i5.BinaryEngine(
      logger: logger,
      schema:
          r'Z2VuZXJhdG9yIGNsaWVudCB7CiAgcHJvdmlkZXIgPSAiZGFydCBydW4gb3JtIgp9CgpkYXRhc291cmNlIGRiIHsKICBwcm92aWRlciA9ICJteXNxbCIKICB1cmwgICAgICA9ICJteXNxbDovL3Jvb3Q6cm9vdEBsb2NhbGhvc3Q6MzMwNi9jb250cm9sZV9ib3Zpbm9fbGVpdGVpcm8iCn0KCm1vZGVsIGFuaW1hbCB7CiAgY29kQW5pbWFsICAgICAgSW50ICAgICAgICAgIEBpZAogIGNvZFByb2RMZWl0ZSAgIEludAogIGNvZENhdGVnb3JpYSAgIEludAogIG5vbWUgICAgICAgICAgIFN0cmluZyAgICAgICBAZGIuVmFyQ2hhcig0NSkKICBkYXRhTmFzY2ltZW50byBEYXRlVGltZSAgICAgQGRiLkRhdGUKICBzZXhvICAgICAgICAgICBTdHJpbmcgICAgICAgQGRiLlZhckNoYXIoNDUpCiAgcmFjYSAgICAgICAgICAgU3RyaW5nICAgICAgIEBkYi5WYXJDaGFyKDQ1KQogIGlkYWRlICAgICAgICAgIEludAogIGZvcm1hTWFuZWpvICAgIFN0cmluZyAgICAgICBAZGIuVmFyQ2hhcig0NSkKICBtZWRpYUxlaXRlICAgICBGbG9hdD8KICBjYXRlZ29yaWEgICAgICBjYXRlZ29yaWEgICAgQHJlbGF0aW9uKGZpZWxkczogW2NvZENhdGVnb3JpYV0sIHJlZmVyZW5jZXM6IFtjb2RDYXRlZ29yaWFdLCBvbkRlbGV0ZTogTm9BY3Rpb24sIG9uVXBkYXRlOiBOb0FjdGlvbiwgbWFwOiAiZmtfQW5pbWFsX0NhdGVnb3JpYTEiKQogIHByb2RsZWl0ZSAgICAgIHByb2RsZWl0ZSAgICBAcmVsYXRpb24oZmllbGRzOiBbY29kUHJvZExlaXRlXSwgcmVmZXJlbmNlczogW2NvZFByb2RMZWl0ZV0sIG9uRGVsZXRlOiBOb0FjdGlvbiwgb25VcGRhdGU6IE5vQWN0aW9uLCBtYXA6ICJma19BbmltYWxfUHJvZExlaXRlMSIpCiAgaXRlbnN2ZW5kYSAgICAgaXRlbnN2ZW5kYVtdCgogIEBAaW5kZXgoW2NvZENhdGVnb3JpYV0sIG1hcDogImZrX0FuaW1hbF9DYXRlZ29yaWExX2lkeCIpCiAgQEBpbmRleChbY29kUHJvZExlaXRlXSwgbWFwOiAiZmtfQW5pbWFsX1Byb2RMZWl0ZTFfaWR4IikKfQoKbW9kZWwgY2F0ZWdvcmlhIHsKICBjb2RDYXRlZ29yaWEgSW50ICAgICAgQGlkCiAgdGlwbyAgICAgICAgIFN0cmluZyAgIEBkYi5WYXJDaGFyKDQ1KQogIGFuaW1hbCAgICAgICBhbmltYWxbXQp9Cgptb2RlbCBjb21wcmFkb3IgewogIGNvZENvbXByYWRvciBJbnQgICAgICAgICAgIEBpZAogIG5vbWUgICAgICAgICBTdHJpbmcgICAgICAgIEBkYi5WYXJDaGFyKDQ1KQogIHRlbGVmb25lICAgICBTdHJpbmcgICAgICAgIEBkYi5WYXJDaGFyKDQ1KQogIGVuZGVyZWNvICAgICBTdHJpbmcgICAgICAgIEBkYi5WYXJDaGFyKDIwMCkKICB2ZW5kYWFuaW1hbCAgdmVuZGFhbmltYWxbXQogIHZlbmRhbGVpdGUgICB2ZW5kYWxlaXRlW10KfQoKbW9kZWwgaXRlbnN2ZW5kYSB7CiAgY29kSXRlbnNWZW5kYSAgICAgICAgSW50CiAgY29kVmVuZGFBbmltYWwgICAgICAgSW50CiAgY29kQW5pbWFsICAgICAgICAgICAgSW50CiAgcXVhbnRpZGFkZSAgICAgICAgICAgSW50CiAgdmFsb3JVbml0YXJpbyAgICAgICAgRmxvYXQKICB2YWxvclRvdGFsSXRlbUFuaW1hbCBGbG9hdAogIGFuaW1hbCAgICAgICAgICAgICAgIGFuaW1hbCAgICAgIEByZWxhdGlvbihmaWVsZHM6IFtjb2RBbmltYWxdLCByZWZlcmVuY2VzOiBbY29kQW5pbWFsXSwgb25EZWxldGU6IE5vQWN0aW9uLCBvblVwZGF0ZTogTm9BY3Rpb24sIG1hcDogImZrX1ZlbmRhQW5pbWFsX2hhc19BbmltYWxfQW5pbWFsMSIpCiAgdmVuZGFhbmltYWwgICAgICAgICAgdmVuZGFhbmltYWwgQHJlbGF0aW9uKGZpZWxkczogW2NvZFZlbmRhQW5pbWFsXSwgcmVmZXJlbmNlczogW2NvZFZlbmRhQW5pbWFsXSwgb25EZWxldGU6IE5vQWN0aW9uLCBvblVwZGF0ZTogTm9BY3Rpb24sIG1hcDogImZrX1ZlbmRhQW5pbWFsX2hhc19BbmltYWxfVmVuZGFBbmltYWwxIikKCiAgQEBpZChbY29kSXRlbnNWZW5kYSwgY29kVmVuZGFBbmltYWwsIGNvZEFuaW1hbF0pCiAgQEBpbmRleChbY29kQW5pbWFsXSwgbWFwOiAiZmtfVmVuZGFBbmltYWxfaGFzX0FuaW1hbF9BbmltYWwxX2lkeCIpCiAgQEBpbmRleChbY29kVmVuZGFBbmltYWxdLCBtYXA6ICJma19WZW5kYUFuaW1hbF9oYXNfQW5pbWFsX1ZlbmRhQW5pbWFsMV9pZHgiKQp9Cgptb2RlbCBwcm9kbGVpdGUgewogIGNvZFByb2RMZWl0ZSAgIEludCAgICAgICAgICAgICAgQGlkCiAgZGF0YVByb2RMZWl0ZSAgRGF0ZVRpbWUgICAgICAgICBAZGIuRGF0ZQogIHF0ZFByb2RMZWl0ZSAgIEZsb2F0CiAgYW5pbWFsICAgICAgICAgYW5pbWFsW10KICB2ZW5kYXByb2RsZWl0ZSB2ZW5kYXByb2RsZWl0ZVtdCn0KCm1vZGVsIHZlbmRhYW5pbWFsIHsKICBjb2RWZW5kYUFuaW1hbCAgIEludCAgICAgICAgICBAaWQKICBjb2RDb21wcmFkb3IgICAgIEludAogIGRhdGFWZW5kYUFuaW1hbCAgRGF0ZVRpbWUgICAgIEBkYi5EYXRlCiAgdmFsb3JUb3RhbEFuaW1hbCBGbG9hdAogIGl0ZW5zdmVuZGEgICAgICAgaXRlbnN2ZW5kYVtdCiAgY29tcHJhZG9yICAgICAgICBjb21wcmFkb3IgICAgQHJlbGF0aW9uKGZpZWxkczogW2NvZENvbXByYWRvcl0sIHJlZmVyZW5jZXM6IFtjb2RDb21wcmFkb3JdLCBvbkRlbGV0ZTogTm9BY3Rpb24sIG9uVXBkYXRlOiBOb0FjdGlvbiwgbWFwOiAiZmtfVmVuZGFBbmltYWxfQ29tcHJhZG9yIikKCiAgQEBpbmRleChbY29kQ29tcHJhZG9yXSwgbWFwOiAiZmtfVmVuZGFBbmltYWxfQ29tcHJhZG9yX2lkeCIpCn0KCm1vZGVsIHZlbmRhbGVpdGUgewogIGNvZFZlbmRhTGVpdGUgICBJbnQgICAgICAgICAgICAgIEBpZAogIGNvZENvbXByYWRvciAgICBJbnQKICBkYXRhVmVuZGFMZWl0ZSAgRGF0ZVRpbWUgICAgICAgICBAZGIuRGF0ZQogIHZhbG9yVG90YWxMZWl0ZSBGbG9hdAogIGNvbXByYWRvciAgICAgICBjb21wcmFkb3IgICAgICAgIEByZWxhdGlvbihmaWVsZHM6IFtjb2RDb21wcmFkb3JdLCByZWZlcmVuY2VzOiBbY29kQ29tcHJhZG9yXSwgb25EZWxldGU6IE5vQWN0aW9uLCBvblVwZGF0ZTogTm9BY3Rpb24sIG1hcDogImZrX1ZlbmRhTGVpdGVfQ29tcHJhZG9yMSIpCiAgdmVuZGFwcm9kbGVpdGUgIHZlbmRhcHJvZGxlaXRlW10KCiAgQEBpbmRleChbY29kQ29tcHJhZG9yXSwgbWFwOiAiZmtfVmVuZGFMZWl0ZV9Db21wcmFkb3IxX2lkeCIpCn0KCm1vZGVsIHZlbmRhcHJvZGxlaXRlIHsKICBjb2RWZW5kYVByb2RMZWl0ZSAgIEludAogIGNvZFZlbmRhTGVpdGUgICAgICAgSW50CiAgY29kUHJvZExlaXRlICAgICAgICBJbnQKICBxdGRMZWl0ZSAgICAgICAgICAgIEZsb2F0CiAgdmFsb3JMaXRybyAgICAgICAgICBGbG9hdAogIHZhbG9yVG90YWxJdGVtTGVpdGUgRmxvYXQKICBwcm9kbGVpdGUgICAgICAgICAgIHByb2RsZWl0ZSAgQHJlbGF0aW9uKGZpZWxkczogW2NvZFByb2RMZWl0ZV0sIHJlZmVyZW5jZXM6IFtjb2RQcm9kTGVpdGVdLCBvbkRlbGV0ZTogTm9BY3Rpb24sIG9uVXBkYXRlOiBOb0FjdGlvbiwgbWFwOiAiZmtfVmVuZGFMZWl0ZV9oYXNfUHJvZExlaXRlX1Byb2RMZWl0ZTEiKQogIHZlbmRhbGVpdGUgICAgICAgICAgdmVuZGFsZWl0ZSBAcmVsYXRpb24oZmllbGRzOiBbY29kVmVuZGFMZWl0ZV0sIHJlZmVyZW5jZXM6IFtjb2RWZW5kYUxlaXRlXSwgb25EZWxldGU6IE5vQWN0aW9uLCBvblVwZGF0ZTogTm9BY3Rpb24sIG1hcDogImZrX1ZlbmRhTGVpdGVfaGFzX1Byb2RMZWl0ZV9WZW5kYUxlaXRlMSIpCgogIEBAaWQoW2NvZFZlbmRhUHJvZExlaXRlLCBjb2RWZW5kYUxlaXRlLCBjb2RQcm9kTGVpdGVdKQogIEBAaW5kZXgoW2NvZFByb2RMZWl0ZV0sIG1hcDogImZrX1ZlbmRhTGVpdGVfaGFzX1Byb2RMZWl0ZV9Qcm9kTGVpdGUxX2lkeCIpCiAgQEBpbmRleChbY29kVmVuZGFMZWl0ZV0sIG1hcDogImZrX1ZlbmRhTGVpdGVfaGFzX1Byb2RMZWl0ZV9WZW5kYUxlaXRlMV9pZHgiKQp9Cg==',
      datasources: datasources?.toJson().cast() ?? const {},
      executable:
          r'C:\Users\Micro\OneDrive\Imagens\ProjetoControleBovinoLeiteiro\controle_bovino_leiteiro\node_modules\prisma\query-engine-windows.exe',
    );
    return PrismaClient._internal(engine);
  }

  final _i3.Engine _engine;

  final _i3.QueryEngineRequestHeaders? _headers;

  final _i3.TransactionInfo? _transaction;

  @override
  PrismaClient copyWith({
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  }) =>
      PrismaClient._internal(
        _engine,
        headers: headers ?? _headers,
        transaction: transaction ?? _transaction,
      );

  _i1.ModelDelegate<Animal> get animal => _i1.ModelDelegate<Animal>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );

  _i1.ModelDelegate<Categoria> get categoria => _i1.ModelDelegate<Categoria>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );

  _i1.ModelDelegate<Comprador> get comprador => _i1.ModelDelegate<Comprador>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );

  _i1.ModelDelegate<Itensvenda> get itensvenda => _i1.ModelDelegate<Itensvenda>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );

  _i1.ModelDelegate<Prodleite> get prodleite => _i1.ModelDelegate<Prodleite>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );

  _i1.ModelDelegate<Vendaanimal> get vendaanimal =>
      _i1.ModelDelegate<Vendaanimal>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );

  _i1.ModelDelegate<Vendaleite> get vendaleite => _i1.ModelDelegate<Vendaleite>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );

  _i1.ModelDelegate<Vendaprodleite> get vendaprodleite =>
      _i1.ModelDelegate<Vendaprodleite>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
}
