// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prisma_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimalWhereInput _$AnimalWhereInputFromJson(Map<String, dynamic> json) =>
    AnimalWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => AnimalWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => AnimalWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => AnimalWhereInput.fromJson(e as Map<String, dynamic>)),
      codAnimal: json['codAnimal'] == null
          ? null
          : IntFilter.fromJson(json['codAnimal'] as Map<String, dynamic>),
      codProdLeite: json['codProdLeite'] == null
          ? null
          : IntFilter.fromJson(json['codProdLeite'] as Map<String, dynamic>),
      codCategoria: json['codCategoria'] == null
          ? null
          : IntFilter.fromJson(json['codCategoria'] as Map<String, dynamic>),
      nome: json['nome'] == null
          ? null
          : StringFilter.fromJson(json['nome'] as Map<String, dynamic>),
      dataNascimento: json['dataNascimento'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['dataNascimento'] as Map<String, dynamic>),
      sexo: json['sexo'] == null
          ? null
          : StringFilter.fromJson(json['sexo'] as Map<String, dynamic>),
      raca: json['raca'] == null
          ? null
          : StringFilter.fromJson(json['raca'] as Map<String, dynamic>),
      idade: json['idade'] == null
          ? null
          : IntFilter.fromJson(json['idade'] as Map<String, dynamic>),
      formaManejo: json['formaManejo'] == null
          ? null
          : StringFilter.fromJson(json['formaManejo'] as Map<String, dynamic>),
      mediaLeite: json['mediaLeite'] == null
          ? null
          : FloatNullableFilter.fromJson(
              json['mediaLeite'] as Map<String, dynamic>),
      categoria: json['categoria'] == null
          ? null
          : CategoriaRelationFilter.fromJson(
              json['categoria'] as Map<String, dynamic>),
      prodleite: json['prodleite'] == null
          ? null
          : ProdleiteRelationFilter.fromJson(
              json['prodleite'] as Map<String, dynamic>),
      itensvenda: json['itensvenda'] == null
          ? null
          : ItensvendaListRelationFilter.fromJson(
              json['itensvenda'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimalWhereInputToJson(AnimalWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('codAnimal', instance.codAnimal?.toJson());
  writeNotNull('codProdLeite', instance.codProdLeite?.toJson());
  writeNotNull('codCategoria', instance.codCategoria?.toJson());
  writeNotNull('nome', instance.nome?.toJson());
  writeNotNull('dataNascimento', instance.dataNascimento?.toJson());
  writeNotNull('sexo', instance.sexo?.toJson());
  writeNotNull('raca', instance.raca?.toJson());
  writeNotNull('idade', instance.idade?.toJson());
  writeNotNull('formaManejo', instance.formaManejo?.toJson());
  writeNotNull('mediaLeite', instance.mediaLeite?.toJson());
  writeNotNull('categoria', instance.categoria?.toJson());
  writeNotNull('prodleite', instance.prodleite?.toJson());
  writeNotNull('itensvenda', instance.itensvenda?.toJson());
  return val;
}

AnimalOrderByWithRelationInput _$AnimalOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    AnimalOrderByWithRelationInput(
      codAnimal: $enumDecodeNullable(_$SortOrderEnumMap, json['codAnimal']),
      codProdLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codProdLeite']),
      codCategoria:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codCategoria']),
      nome: $enumDecodeNullable(_$SortOrderEnumMap, json['nome']),
      dataNascimento:
          $enumDecodeNullable(_$SortOrderEnumMap, json['dataNascimento']),
      sexo: $enumDecodeNullable(_$SortOrderEnumMap, json['sexo']),
      raca: $enumDecodeNullable(_$SortOrderEnumMap, json['raca']),
      idade: $enumDecodeNullable(_$SortOrderEnumMap, json['idade']),
      formaManejo: $enumDecodeNullable(_$SortOrderEnumMap, json['formaManejo']),
      mediaLeite: $enumDecodeNullable(_$SortOrderEnumMap, json['mediaLeite']),
      categoria: json['categoria'] == null
          ? null
          : CategoriaOrderByWithRelationInput.fromJson(
              json['categoria'] as Map<String, dynamic>),
      prodleite: json['prodleite'] == null
          ? null
          : ProdleiteOrderByWithRelationInput.fromJson(
              json['prodleite'] as Map<String, dynamic>),
      itensvenda: json['itensvenda'] == null
          ? null
          : ItensvendaOrderByRelationAggregateInput.fromJson(
              json['itensvenda'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimalOrderByWithRelationInputToJson(
    AnimalOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codAnimal', _$SortOrderEnumMap[instance.codAnimal]);
  writeNotNull('codProdLeite', _$SortOrderEnumMap[instance.codProdLeite]);
  writeNotNull('codCategoria', _$SortOrderEnumMap[instance.codCategoria]);
  writeNotNull('nome', _$SortOrderEnumMap[instance.nome]);
  writeNotNull('dataNascimento', _$SortOrderEnumMap[instance.dataNascimento]);
  writeNotNull('sexo', _$SortOrderEnumMap[instance.sexo]);
  writeNotNull('raca', _$SortOrderEnumMap[instance.raca]);
  writeNotNull('idade', _$SortOrderEnumMap[instance.idade]);
  writeNotNull('formaManejo', _$SortOrderEnumMap[instance.formaManejo]);
  writeNotNull('mediaLeite', _$SortOrderEnumMap[instance.mediaLeite]);
  writeNotNull('categoria', instance.categoria?.toJson());
  writeNotNull('prodleite', instance.prodleite?.toJson());
  writeNotNull('itensvenda', instance.itensvenda?.toJson());
  return val;
}

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};

AnimalWhereUniqueInput _$AnimalWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    AnimalWhereUniqueInput(
      codAnimal: json['codAnimal'] as int?,
    );

Map<String, dynamic> _$AnimalWhereUniqueInputToJson(
    AnimalWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codAnimal', instance.codAnimal);
  return val;
}

AnimalOrderByWithAggregationInput _$AnimalOrderByWithAggregationInputFromJson(
        Map<String, dynamic> json) =>
    AnimalOrderByWithAggregationInput(
      codAnimal: $enumDecodeNullable(_$SortOrderEnumMap, json['codAnimal']),
      codProdLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codProdLeite']),
      codCategoria:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codCategoria']),
      nome: $enumDecodeNullable(_$SortOrderEnumMap, json['nome']),
      dataNascimento:
          $enumDecodeNullable(_$SortOrderEnumMap, json['dataNascimento']),
      sexo: $enumDecodeNullable(_$SortOrderEnumMap, json['sexo']),
      raca: $enumDecodeNullable(_$SortOrderEnumMap, json['raca']),
      idade: $enumDecodeNullable(_$SortOrderEnumMap, json['idade']),
      formaManejo: $enumDecodeNullable(_$SortOrderEnumMap, json['formaManejo']),
      mediaLeite: $enumDecodeNullable(_$SortOrderEnumMap, json['mediaLeite']),
      $count: json['_count'] == null
          ? null
          : AnimalCountOrderByAggregateInput.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : AnimalAvgOrderByAggregateInput.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : AnimalMaxOrderByAggregateInput.fromJson(
              json['_max'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : AnimalMinOrderByAggregateInput.fromJson(
              json['_min'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : AnimalSumOrderByAggregateInput.fromJson(
              json['_sum'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimalOrderByWithAggregationInputToJson(
    AnimalOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codAnimal', _$SortOrderEnumMap[instance.codAnimal]);
  writeNotNull('codProdLeite', _$SortOrderEnumMap[instance.codProdLeite]);
  writeNotNull('codCategoria', _$SortOrderEnumMap[instance.codCategoria]);
  writeNotNull('nome', _$SortOrderEnumMap[instance.nome]);
  writeNotNull('dataNascimento', _$SortOrderEnumMap[instance.dataNascimento]);
  writeNotNull('sexo', _$SortOrderEnumMap[instance.sexo]);
  writeNotNull('raca', _$SortOrderEnumMap[instance.raca]);
  writeNotNull('idade', _$SortOrderEnumMap[instance.idade]);
  writeNotNull('formaManejo', _$SortOrderEnumMap[instance.formaManejo]);
  writeNotNull('mediaLeite', _$SortOrderEnumMap[instance.mediaLeite]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

AnimalScalarWhereWithAggregatesInput
    _$AnimalScalarWhereWithAggregatesInputFromJson(Map<String, dynamic> json) =>
        AnimalScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              AnimalScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              AnimalScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              AnimalScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          codAnimal: json['codAnimal'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['codAnimal'] as Map<String, dynamic>),
          codProdLeite: json['codProdLeite'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['codProdLeite'] as Map<String, dynamic>),
          codCategoria: json['codCategoria'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['codCategoria'] as Map<String, dynamic>),
          nome: json['nome'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['nome'] as Map<String, dynamic>),
          dataNascimento: json['dataNascimento'] == null
              ? null
              : DateTimeWithAggregatesFilter.fromJson(
                  json['dataNascimento'] as Map<String, dynamic>),
          sexo: json['sexo'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['sexo'] as Map<String, dynamic>),
          raca: json['raca'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['raca'] as Map<String, dynamic>),
          idade: json['idade'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['idade'] as Map<String, dynamic>),
          formaManejo: json['formaManejo'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['formaManejo'] as Map<String, dynamic>),
          mediaLeite: json['mediaLeite'] == null
              ? null
              : FloatNullableWithAggregatesFilter.fromJson(
                  json['mediaLeite'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AnimalScalarWhereWithAggregatesInputToJson(
    AnimalScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('codAnimal', instance.codAnimal?.toJson());
  writeNotNull('codProdLeite', instance.codProdLeite?.toJson());
  writeNotNull('codCategoria', instance.codCategoria?.toJson());
  writeNotNull('nome', instance.nome?.toJson());
  writeNotNull('dataNascimento', instance.dataNascimento?.toJson());
  writeNotNull('sexo', instance.sexo?.toJson());
  writeNotNull('raca', instance.raca?.toJson());
  writeNotNull('idade', instance.idade?.toJson());
  writeNotNull('formaManejo', instance.formaManejo?.toJson());
  writeNotNull('mediaLeite', instance.mediaLeite?.toJson());
  return val;
}

CategoriaWhereInput _$CategoriaWhereInputFromJson(Map<String, dynamic> json) =>
    CategoriaWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => CategoriaWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => CategoriaWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => CategoriaWhereInput.fromJson(e as Map<String, dynamic>)),
      codCategoria: json['codCategoria'] == null
          ? null
          : IntFilter.fromJson(json['codCategoria'] as Map<String, dynamic>),
      tipo: json['tipo'] == null
          ? null
          : StringFilter.fromJson(json['tipo'] as Map<String, dynamic>),
      animal: json['animal'] == null
          ? null
          : AnimalListRelationFilter.fromJson(
              json['animal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoriaWhereInputToJson(CategoriaWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('codCategoria', instance.codCategoria?.toJson());
  writeNotNull('tipo', instance.tipo?.toJson());
  writeNotNull('animal', instance.animal?.toJson());
  return val;
}

CategoriaOrderByWithRelationInput _$CategoriaOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    CategoriaOrderByWithRelationInput(
      codCategoria:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codCategoria']),
      tipo: $enumDecodeNullable(_$SortOrderEnumMap, json['tipo']),
      animal: json['animal'] == null
          ? null
          : AnimalOrderByRelationAggregateInput.fromJson(
              json['animal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoriaOrderByWithRelationInputToJson(
    CategoriaOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codCategoria', _$SortOrderEnumMap[instance.codCategoria]);
  writeNotNull('tipo', _$SortOrderEnumMap[instance.tipo]);
  writeNotNull('animal', instance.animal?.toJson());
  return val;
}

CategoriaWhereUniqueInput _$CategoriaWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    CategoriaWhereUniqueInput(
      codCategoria: json['codCategoria'] as int?,
    );

Map<String, dynamic> _$CategoriaWhereUniqueInputToJson(
    CategoriaWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codCategoria', instance.codCategoria);
  return val;
}

CategoriaOrderByWithAggregationInput
    _$CategoriaOrderByWithAggregationInputFromJson(Map<String, dynamic> json) =>
        CategoriaOrderByWithAggregationInput(
          codCategoria:
              $enumDecodeNullable(_$SortOrderEnumMap, json['codCategoria']),
          tipo: $enumDecodeNullable(_$SortOrderEnumMap, json['tipo']),
          $count: json['_count'] == null
              ? null
              : CategoriaCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : CategoriaAvgOrderByAggregateInput.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : CategoriaMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : CategoriaMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : CategoriaSumOrderByAggregateInput.fromJson(
                  json['_sum'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CategoriaOrderByWithAggregationInputToJson(
    CategoriaOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codCategoria', _$SortOrderEnumMap[instance.codCategoria]);
  writeNotNull('tipo', _$SortOrderEnumMap[instance.tipo]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

CategoriaScalarWhereWithAggregatesInput
    _$CategoriaScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        CategoriaScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              CategoriaScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              CategoriaScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              CategoriaScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          codCategoria: json['codCategoria'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['codCategoria'] as Map<String, dynamic>),
          tipo: json['tipo'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['tipo'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CategoriaScalarWhereWithAggregatesInputToJson(
    CategoriaScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('codCategoria', instance.codCategoria?.toJson());
  writeNotNull('tipo', instance.tipo?.toJson());
  return val;
}

CompradorWhereInput _$CompradorWhereInputFromJson(Map<String, dynamic> json) =>
    CompradorWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => CompradorWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => CompradorWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => CompradorWhereInput.fromJson(e as Map<String, dynamic>)),
      codComprador: json['codComprador'] == null
          ? null
          : IntFilter.fromJson(json['codComprador'] as Map<String, dynamic>),
      nome: json['nome'] == null
          ? null
          : StringFilter.fromJson(json['nome'] as Map<String, dynamic>),
      telefone: json['telefone'] == null
          ? null
          : StringFilter.fromJson(json['telefone'] as Map<String, dynamic>),
      endereco: json['endereco'] == null
          ? null
          : StringFilter.fromJson(json['endereco'] as Map<String, dynamic>),
      vendaanimal: json['vendaanimal'] == null
          ? null
          : VendaanimalListRelationFilter.fromJson(
              json['vendaanimal'] as Map<String, dynamic>),
      vendaleite: json['vendaleite'] == null
          ? null
          : VendaleiteListRelationFilter.fromJson(
              json['vendaleite'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompradorWhereInputToJson(CompradorWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('codComprador', instance.codComprador?.toJson());
  writeNotNull('nome', instance.nome?.toJson());
  writeNotNull('telefone', instance.telefone?.toJson());
  writeNotNull('endereco', instance.endereco?.toJson());
  writeNotNull('vendaanimal', instance.vendaanimal?.toJson());
  writeNotNull('vendaleite', instance.vendaleite?.toJson());
  return val;
}

CompradorOrderByWithRelationInput _$CompradorOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    CompradorOrderByWithRelationInput(
      codComprador:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codComprador']),
      nome: $enumDecodeNullable(_$SortOrderEnumMap, json['nome']),
      telefone: $enumDecodeNullable(_$SortOrderEnumMap, json['telefone']),
      endereco: $enumDecodeNullable(_$SortOrderEnumMap, json['endereco']),
      vendaanimal: json['vendaanimal'] == null
          ? null
          : VendaanimalOrderByRelationAggregateInput.fromJson(
              json['vendaanimal'] as Map<String, dynamic>),
      vendaleite: json['vendaleite'] == null
          ? null
          : VendaleiteOrderByRelationAggregateInput.fromJson(
              json['vendaleite'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompradorOrderByWithRelationInputToJson(
    CompradorOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codComprador', _$SortOrderEnumMap[instance.codComprador]);
  writeNotNull('nome', _$SortOrderEnumMap[instance.nome]);
  writeNotNull('telefone', _$SortOrderEnumMap[instance.telefone]);
  writeNotNull('endereco', _$SortOrderEnumMap[instance.endereco]);
  writeNotNull('vendaanimal', instance.vendaanimal?.toJson());
  writeNotNull('vendaleite', instance.vendaleite?.toJson());
  return val;
}

CompradorWhereUniqueInput _$CompradorWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    CompradorWhereUniqueInput(
      codComprador: json['codComprador'] as int?,
    );

Map<String, dynamic> _$CompradorWhereUniqueInputToJson(
    CompradorWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codComprador', instance.codComprador);
  return val;
}

CompradorOrderByWithAggregationInput
    _$CompradorOrderByWithAggregationInputFromJson(Map<String, dynamic> json) =>
        CompradorOrderByWithAggregationInput(
          codComprador:
              $enumDecodeNullable(_$SortOrderEnumMap, json['codComprador']),
          nome: $enumDecodeNullable(_$SortOrderEnumMap, json['nome']),
          telefone: $enumDecodeNullable(_$SortOrderEnumMap, json['telefone']),
          endereco: $enumDecodeNullable(_$SortOrderEnumMap, json['endereco']),
          $count: json['_count'] == null
              ? null
              : CompradorCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : CompradorAvgOrderByAggregateInput.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : CompradorMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : CompradorMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : CompradorSumOrderByAggregateInput.fromJson(
                  json['_sum'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CompradorOrderByWithAggregationInputToJson(
    CompradorOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codComprador', _$SortOrderEnumMap[instance.codComprador]);
  writeNotNull('nome', _$SortOrderEnumMap[instance.nome]);
  writeNotNull('telefone', _$SortOrderEnumMap[instance.telefone]);
  writeNotNull('endereco', _$SortOrderEnumMap[instance.endereco]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

CompradorScalarWhereWithAggregatesInput
    _$CompradorScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        CompradorScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              CompradorScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              CompradorScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              CompradorScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          codComprador: json['codComprador'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['codComprador'] as Map<String, dynamic>),
          nome: json['nome'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['nome'] as Map<String, dynamic>),
          telefone: json['telefone'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['telefone'] as Map<String, dynamic>),
          endereco: json['endereco'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['endereco'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CompradorScalarWhereWithAggregatesInputToJson(
    CompradorScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('codComprador', instance.codComprador?.toJson());
  writeNotNull('nome', instance.nome?.toJson());
  writeNotNull('telefone', instance.telefone?.toJson());
  writeNotNull('endereco', instance.endereco?.toJson());
  return val;
}

ItensvendaWhereInput _$ItensvendaWhereInputFromJson(
        Map<String, dynamic> json) =>
    ItensvendaWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => ItensvendaWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => ItensvendaWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => ItensvendaWhereInput.fromJson(e as Map<String, dynamic>)),
      codItensVenda: json['codItensVenda'] == null
          ? null
          : IntFilter.fromJson(json['codItensVenda'] as Map<String, dynamic>),
      codVendaAnimal: json['codVendaAnimal'] == null
          ? null
          : IntFilter.fromJson(json['codVendaAnimal'] as Map<String, dynamic>),
      codAnimal: json['codAnimal'] == null
          ? null
          : IntFilter.fromJson(json['codAnimal'] as Map<String, dynamic>),
      quantidade: json['quantidade'] == null
          ? null
          : IntFilter.fromJson(json['quantidade'] as Map<String, dynamic>),
      valorUnitario: json['valorUnitario'] == null
          ? null
          : FloatFilter.fromJson(json['valorUnitario'] as Map<String, dynamic>),
      animal: json['animal'] == null
          ? null
          : AnimalRelationFilter.fromJson(
              json['animal'] as Map<String, dynamic>),
      vendaanimal: json['vendaanimal'] == null
          ? null
          : VendaanimalRelationFilter.fromJson(
              json['vendaanimal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItensvendaWhereInputToJson(
    ItensvendaWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('codItensVenda', instance.codItensVenda?.toJson());
  writeNotNull('codVendaAnimal', instance.codVendaAnimal?.toJson());
  writeNotNull('codAnimal', instance.codAnimal?.toJson());
  writeNotNull('quantidade', instance.quantidade?.toJson());
  writeNotNull('valorUnitario', instance.valorUnitario?.toJson());
  writeNotNull('animal', instance.animal?.toJson());
  writeNotNull('vendaanimal', instance.vendaanimal?.toJson());
  return val;
}

ItensvendaOrderByWithRelationInput _$ItensvendaOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    ItensvendaOrderByWithRelationInput(
      codItensVenda:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codItensVenda']),
      codVendaAnimal:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codVendaAnimal']),
      codAnimal: $enumDecodeNullable(_$SortOrderEnumMap, json['codAnimal']),
      quantidade: $enumDecodeNullable(_$SortOrderEnumMap, json['quantidade']),
      valorUnitario:
          $enumDecodeNullable(_$SortOrderEnumMap, json['valorUnitario']),
      animal: json['animal'] == null
          ? null
          : AnimalOrderByWithRelationInput.fromJson(
              json['animal'] as Map<String, dynamic>),
      vendaanimal: json['vendaanimal'] == null
          ? null
          : VendaanimalOrderByWithRelationInput.fromJson(
              json['vendaanimal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItensvendaOrderByWithRelationInputToJson(
    ItensvendaOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codItensVenda', _$SortOrderEnumMap[instance.codItensVenda]);
  writeNotNull('codVendaAnimal', _$SortOrderEnumMap[instance.codVendaAnimal]);
  writeNotNull('codAnimal', _$SortOrderEnumMap[instance.codAnimal]);
  writeNotNull('quantidade', _$SortOrderEnumMap[instance.quantidade]);
  writeNotNull('valorUnitario', _$SortOrderEnumMap[instance.valorUnitario]);
  writeNotNull('animal', instance.animal?.toJson());
  writeNotNull('vendaanimal', instance.vendaanimal?.toJson());
  return val;
}

ItensvendaWhereUniqueInput _$ItensvendaWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    ItensvendaWhereUniqueInput(
      codItensVendaCodVendaAnimalCodAnimal: json[
                  'codItensVenda_codVendaAnimal_codAnimal'] ==
              null
          ? null
          : ItensvendaCodItensVendaCodVendaAnimalCodAnimalCompoundUniqueInput
              .fromJson(json['codItensVenda_codVendaAnimal_codAnimal']
                  as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItensvendaWhereUniqueInputToJson(
    ItensvendaWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codItensVenda_codVendaAnimal_codAnimal',
      instance.codItensVendaCodVendaAnimalCodAnimal?.toJson());
  return val;
}

ItensvendaOrderByWithAggregationInput
    _$ItensvendaOrderByWithAggregationInputFromJson(
            Map<String, dynamic> json) =>
        ItensvendaOrderByWithAggregationInput(
          codItensVenda:
              $enumDecodeNullable(_$SortOrderEnumMap, json['codItensVenda']),
          codVendaAnimal:
              $enumDecodeNullable(_$SortOrderEnumMap, json['codVendaAnimal']),
          codAnimal: $enumDecodeNullable(_$SortOrderEnumMap, json['codAnimal']),
          quantidade:
              $enumDecodeNullable(_$SortOrderEnumMap, json['quantidade']),
          valorUnitario:
              $enumDecodeNullable(_$SortOrderEnumMap, json['valorUnitario']),
          $count: json['_count'] == null
              ? null
              : ItensvendaCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : ItensvendaAvgOrderByAggregateInput.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : ItensvendaMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : ItensvendaMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : ItensvendaSumOrderByAggregateInput.fromJson(
                  json['_sum'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ItensvendaOrderByWithAggregationInputToJson(
    ItensvendaOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codItensVenda', _$SortOrderEnumMap[instance.codItensVenda]);
  writeNotNull('codVendaAnimal', _$SortOrderEnumMap[instance.codVendaAnimal]);
  writeNotNull('codAnimal', _$SortOrderEnumMap[instance.codAnimal]);
  writeNotNull('quantidade', _$SortOrderEnumMap[instance.quantidade]);
  writeNotNull('valorUnitario', _$SortOrderEnumMap[instance.valorUnitario]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

ItensvendaScalarWhereWithAggregatesInput
    _$ItensvendaScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        ItensvendaScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              ItensvendaScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              ItensvendaScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              ItensvendaScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          codItensVenda: json['codItensVenda'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['codItensVenda'] as Map<String, dynamic>),
          codVendaAnimal: json['codVendaAnimal'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['codVendaAnimal'] as Map<String, dynamic>),
          codAnimal: json['codAnimal'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['codAnimal'] as Map<String, dynamic>),
          quantidade: json['quantidade'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['quantidade'] as Map<String, dynamic>),
          valorUnitario: json['valorUnitario'] == null
              ? null
              : FloatWithAggregatesFilter.fromJson(
                  json['valorUnitario'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ItensvendaScalarWhereWithAggregatesInputToJson(
    ItensvendaScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('codItensVenda', instance.codItensVenda?.toJson());
  writeNotNull('codVendaAnimal', instance.codVendaAnimal?.toJson());
  writeNotNull('codAnimal', instance.codAnimal?.toJson());
  writeNotNull('quantidade', instance.quantidade?.toJson());
  writeNotNull('valorUnitario', instance.valorUnitario?.toJson());
  return val;
}

ProdleiteWhereInput _$ProdleiteWhereInputFromJson(Map<String, dynamic> json) =>
    ProdleiteWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => ProdleiteWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => ProdleiteWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => ProdleiteWhereInput.fromJson(e as Map<String, dynamic>)),
      codProdLeite: json['codProdLeite'] == null
          ? null
          : IntFilter.fromJson(json['codProdLeite'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : DateTimeFilter.fromJson(json['data'] as Map<String, dynamic>),
      quantidadeLeite: json['quantidadeLeite'] == null
          ? null
          : FloatFilter.fromJson(
              json['quantidadeLeite'] as Map<String, dynamic>),
      animal: json['animal'] == null
          ? null
          : AnimalListRelationFilter.fromJson(
              json['animal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProdleiteWhereInputToJson(ProdleiteWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('codProdLeite', instance.codProdLeite?.toJson());
  writeNotNull('data', instance.data?.toJson());
  writeNotNull('quantidadeLeite', instance.quantidadeLeite?.toJson());
  writeNotNull('animal', instance.animal?.toJson());
  return val;
}

ProdleiteOrderByWithRelationInput _$ProdleiteOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    ProdleiteOrderByWithRelationInput(
      codProdLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codProdLeite']),
      data: $enumDecodeNullable(_$SortOrderEnumMap, json['data']),
      quantidadeLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['quantidadeLeite']),
      animal: json['animal'] == null
          ? null
          : AnimalOrderByRelationAggregateInput.fromJson(
              json['animal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProdleiteOrderByWithRelationInputToJson(
    ProdleiteOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codProdLeite', _$SortOrderEnumMap[instance.codProdLeite]);
  writeNotNull('data', _$SortOrderEnumMap[instance.data]);
  writeNotNull('quantidadeLeite', _$SortOrderEnumMap[instance.quantidadeLeite]);
  writeNotNull('animal', instance.animal?.toJson());
  return val;
}

ProdleiteWhereUniqueInput _$ProdleiteWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    ProdleiteWhereUniqueInput(
      codProdLeite: json['codProdLeite'] as int?,
    );

Map<String, dynamic> _$ProdleiteWhereUniqueInputToJson(
    ProdleiteWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codProdLeite', instance.codProdLeite);
  return val;
}

ProdleiteOrderByWithAggregationInput
    _$ProdleiteOrderByWithAggregationInputFromJson(Map<String, dynamic> json) =>
        ProdleiteOrderByWithAggregationInput(
          codProdLeite:
              $enumDecodeNullable(_$SortOrderEnumMap, json['codProdLeite']),
          data: $enumDecodeNullable(_$SortOrderEnumMap, json['data']),
          quantidadeLeite:
              $enumDecodeNullable(_$SortOrderEnumMap, json['quantidadeLeite']),
          $count: json['_count'] == null
              ? null
              : ProdleiteCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : ProdleiteAvgOrderByAggregateInput.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : ProdleiteMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : ProdleiteMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : ProdleiteSumOrderByAggregateInput.fromJson(
                  json['_sum'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ProdleiteOrderByWithAggregationInputToJson(
    ProdleiteOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codProdLeite', _$SortOrderEnumMap[instance.codProdLeite]);
  writeNotNull('data', _$SortOrderEnumMap[instance.data]);
  writeNotNull('quantidadeLeite', _$SortOrderEnumMap[instance.quantidadeLeite]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

ProdleiteScalarWhereWithAggregatesInput
    _$ProdleiteScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        ProdleiteScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              ProdleiteScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              ProdleiteScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              ProdleiteScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          codProdLeite: json['codProdLeite'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['codProdLeite'] as Map<String, dynamic>),
          data: json['data'] == null
              ? null
              : DateTimeWithAggregatesFilter.fromJson(
                  json['data'] as Map<String, dynamic>),
          quantidadeLeite: json['quantidadeLeite'] == null
              ? null
              : FloatWithAggregatesFilter.fromJson(
                  json['quantidadeLeite'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ProdleiteScalarWhereWithAggregatesInputToJson(
    ProdleiteScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('codProdLeite', instance.codProdLeite?.toJson());
  writeNotNull('data', instance.data?.toJson());
  writeNotNull('quantidadeLeite', instance.quantidadeLeite?.toJson());
  return val;
}

VendaanimalWhereInput _$VendaanimalWhereInputFromJson(
        Map<String, dynamic> json) =>
    VendaanimalWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => VendaanimalWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => VendaanimalWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => VendaanimalWhereInput.fromJson(e as Map<String, dynamic>)),
      codVendaAnimal: json['codVendaAnimal'] == null
          ? null
          : IntFilter.fromJson(json['codVendaAnimal'] as Map<String, dynamic>),
      codComprador: json['codComprador'] == null
          ? null
          : IntFilter.fromJson(json['codComprador'] as Map<String, dynamic>),
      dataVendaAnimal: json['dataVendaAnimal'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['dataVendaAnimal'] as Map<String, dynamic>),
      valorTotalAnimal: json['valorTotalAnimal'] == null
          ? null
          : FloatFilter.fromJson(
              json['valorTotalAnimal'] as Map<String, dynamic>),
      itensvenda: json['itensvenda'] == null
          ? null
          : ItensvendaListRelationFilter.fromJson(
              json['itensvenda'] as Map<String, dynamic>),
      comprador: json['comprador'] == null
          ? null
          : CompradorRelationFilter.fromJson(
              json['comprador'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VendaanimalWhereInputToJson(
    VendaanimalWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('codVendaAnimal', instance.codVendaAnimal?.toJson());
  writeNotNull('codComprador', instance.codComprador?.toJson());
  writeNotNull('dataVendaAnimal', instance.dataVendaAnimal?.toJson());
  writeNotNull('valorTotalAnimal', instance.valorTotalAnimal?.toJson());
  writeNotNull('itensvenda', instance.itensvenda?.toJson());
  writeNotNull('comprador', instance.comprador?.toJson());
  return val;
}

VendaanimalOrderByWithRelationInput
    _$VendaanimalOrderByWithRelationInputFromJson(Map<String, dynamic> json) =>
        VendaanimalOrderByWithRelationInput(
          codVendaAnimal:
              $enumDecodeNullable(_$SortOrderEnumMap, json['codVendaAnimal']),
          codComprador:
              $enumDecodeNullable(_$SortOrderEnumMap, json['codComprador']),
          dataVendaAnimal:
              $enumDecodeNullable(_$SortOrderEnumMap, json['dataVendaAnimal']),
          valorTotalAnimal:
              $enumDecodeNullable(_$SortOrderEnumMap, json['valorTotalAnimal']),
          itensvenda: json['itensvenda'] == null
              ? null
              : ItensvendaOrderByRelationAggregateInput.fromJson(
                  json['itensvenda'] as Map<String, dynamic>),
          comprador: json['comprador'] == null
              ? null
              : CompradorOrderByWithRelationInput.fromJson(
                  json['comprador'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$VendaanimalOrderByWithRelationInputToJson(
    VendaanimalOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaAnimal', _$SortOrderEnumMap[instance.codVendaAnimal]);
  writeNotNull('codComprador', _$SortOrderEnumMap[instance.codComprador]);
  writeNotNull('dataVendaAnimal', _$SortOrderEnumMap[instance.dataVendaAnimal]);
  writeNotNull(
      'valorTotalAnimal', _$SortOrderEnumMap[instance.valorTotalAnimal]);
  writeNotNull('itensvenda', instance.itensvenda?.toJson());
  writeNotNull('comprador', instance.comprador?.toJson());
  return val;
}

VendaanimalWhereUniqueInput _$VendaanimalWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    VendaanimalWhereUniqueInput(
      codVendaAnimal: json['codVendaAnimal'] as int?,
    );

Map<String, dynamic> _$VendaanimalWhereUniqueInputToJson(
    VendaanimalWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaAnimal', instance.codVendaAnimal);
  return val;
}

VendaanimalOrderByWithAggregationInput
    _$VendaanimalOrderByWithAggregationInputFromJson(
            Map<String, dynamic> json) =>
        VendaanimalOrderByWithAggregationInput(
          codVendaAnimal:
              $enumDecodeNullable(_$SortOrderEnumMap, json['codVendaAnimal']),
          codComprador:
              $enumDecodeNullable(_$SortOrderEnumMap, json['codComprador']),
          dataVendaAnimal:
              $enumDecodeNullable(_$SortOrderEnumMap, json['dataVendaAnimal']),
          valorTotalAnimal:
              $enumDecodeNullable(_$SortOrderEnumMap, json['valorTotalAnimal']),
          $count: json['_count'] == null
              ? null
              : VendaanimalCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : VendaanimalAvgOrderByAggregateInput.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : VendaanimalMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : VendaanimalMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : VendaanimalSumOrderByAggregateInput.fromJson(
                  json['_sum'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$VendaanimalOrderByWithAggregationInputToJson(
    VendaanimalOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaAnimal', _$SortOrderEnumMap[instance.codVendaAnimal]);
  writeNotNull('codComprador', _$SortOrderEnumMap[instance.codComprador]);
  writeNotNull('dataVendaAnimal', _$SortOrderEnumMap[instance.dataVendaAnimal]);
  writeNotNull(
      'valorTotalAnimal', _$SortOrderEnumMap[instance.valorTotalAnimal]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

VendaanimalScalarWhereWithAggregatesInput
    _$VendaanimalScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        VendaanimalScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              VendaanimalScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              VendaanimalScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              VendaanimalScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          codVendaAnimal: json['codVendaAnimal'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['codVendaAnimal'] as Map<String, dynamic>),
          codComprador: json['codComprador'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['codComprador'] as Map<String, dynamic>),
          dataVendaAnimal: json['dataVendaAnimal'] == null
              ? null
              : DateTimeWithAggregatesFilter.fromJson(
                  json['dataVendaAnimal'] as Map<String, dynamic>),
          valorTotalAnimal: json['valorTotalAnimal'] == null
              ? null
              : FloatWithAggregatesFilter.fromJson(
                  json['valorTotalAnimal'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$VendaanimalScalarWhereWithAggregatesInputToJson(
    VendaanimalScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('codVendaAnimal', instance.codVendaAnimal?.toJson());
  writeNotNull('codComprador', instance.codComprador?.toJson());
  writeNotNull('dataVendaAnimal', instance.dataVendaAnimal?.toJson());
  writeNotNull('valorTotalAnimal', instance.valorTotalAnimal?.toJson());
  return val;
}

VendaleiteWhereInput _$VendaleiteWhereInputFromJson(
        Map<String, dynamic> json) =>
    VendaleiteWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => VendaleiteWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => VendaleiteWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => VendaleiteWhereInput.fromJson(e as Map<String, dynamic>)),
      codVendaLeite: json['codVendaLeite'] == null
          ? null
          : IntFilter.fromJson(json['codVendaLeite'] as Map<String, dynamic>),
      codComprador: json['codComprador'] == null
          ? null
          : IntFilter.fromJson(json['codComprador'] as Map<String, dynamic>),
      dataVendaLeite: json['dataVendaLeite'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['dataVendaLeite'] as Map<String, dynamic>),
      quantidadeLeite: json['quantidadeLeite'] == null
          ? null
          : FloatFilter.fromJson(
              json['quantidadeLeite'] as Map<String, dynamic>),
      valorTotalLeite: json['valorTotalLeite'] == null
          ? null
          : FloatFilter.fromJson(
              json['valorTotalLeite'] as Map<String, dynamic>),
      comprador: json['comprador'] == null
          ? null
          : CompradorRelationFilter.fromJson(
              json['comprador'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VendaleiteWhereInputToJson(
    VendaleiteWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('codVendaLeite', instance.codVendaLeite?.toJson());
  writeNotNull('codComprador', instance.codComprador?.toJson());
  writeNotNull('dataVendaLeite', instance.dataVendaLeite?.toJson());
  writeNotNull('quantidadeLeite', instance.quantidadeLeite?.toJson());
  writeNotNull('valorTotalLeite', instance.valorTotalLeite?.toJson());
  writeNotNull('comprador', instance.comprador?.toJson());
  return val;
}

VendaleiteOrderByWithRelationInput _$VendaleiteOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    VendaleiteOrderByWithRelationInput(
      codVendaLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codVendaLeite']),
      codComprador:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codComprador']),
      dataVendaLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['dataVendaLeite']),
      quantidadeLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['quantidadeLeite']),
      valorTotalLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['valorTotalLeite']),
      comprador: json['comprador'] == null
          ? null
          : CompradorOrderByWithRelationInput.fromJson(
              json['comprador'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VendaleiteOrderByWithRelationInputToJson(
    VendaleiteOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaLeite', _$SortOrderEnumMap[instance.codVendaLeite]);
  writeNotNull('codComprador', _$SortOrderEnumMap[instance.codComprador]);
  writeNotNull('dataVendaLeite', _$SortOrderEnumMap[instance.dataVendaLeite]);
  writeNotNull('quantidadeLeite', _$SortOrderEnumMap[instance.quantidadeLeite]);
  writeNotNull('valorTotalLeite', _$SortOrderEnumMap[instance.valorTotalLeite]);
  writeNotNull('comprador', instance.comprador?.toJson());
  return val;
}

VendaleiteWhereUniqueInput _$VendaleiteWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    VendaleiteWhereUniqueInput(
      codVendaLeite: json['codVendaLeite'] as int?,
    );

Map<String, dynamic> _$VendaleiteWhereUniqueInputToJson(
    VendaleiteWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaLeite', instance.codVendaLeite);
  return val;
}

VendaleiteOrderByWithAggregationInput
    _$VendaleiteOrderByWithAggregationInputFromJson(
            Map<String, dynamic> json) =>
        VendaleiteOrderByWithAggregationInput(
          codVendaLeite:
              $enumDecodeNullable(_$SortOrderEnumMap, json['codVendaLeite']),
          codComprador:
              $enumDecodeNullable(_$SortOrderEnumMap, json['codComprador']),
          dataVendaLeite:
              $enumDecodeNullable(_$SortOrderEnumMap, json['dataVendaLeite']),
          quantidadeLeite:
              $enumDecodeNullable(_$SortOrderEnumMap, json['quantidadeLeite']),
          valorTotalLeite:
              $enumDecodeNullable(_$SortOrderEnumMap, json['valorTotalLeite']),
          $count: json['_count'] == null
              ? null
              : VendaleiteCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : VendaleiteAvgOrderByAggregateInput.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : VendaleiteMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : VendaleiteMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : VendaleiteSumOrderByAggregateInput.fromJson(
                  json['_sum'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$VendaleiteOrderByWithAggregationInputToJson(
    VendaleiteOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaLeite', _$SortOrderEnumMap[instance.codVendaLeite]);
  writeNotNull('codComprador', _$SortOrderEnumMap[instance.codComprador]);
  writeNotNull('dataVendaLeite', _$SortOrderEnumMap[instance.dataVendaLeite]);
  writeNotNull('quantidadeLeite', _$SortOrderEnumMap[instance.quantidadeLeite]);
  writeNotNull('valorTotalLeite', _$SortOrderEnumMap[instance.valorTotalLeite]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

VendaleiteScalarWhereWithAggregatesInput
    _$VendaleiteScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        VendaleiteScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              VendaleiteScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              VendaleiteScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              VendaleiteScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          codVendaLeite: json['codVendaLeite'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['codVendaLeite'] as Map<String, dynamic>),
          codComprador: json['codComprador'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['codComprador'] as Map<String, dynamic>),
          dataVendaLeite: json['dataVendaLeite'] == null
              ? null
              : DateTimeWithAggregatesFilter.fromJson(
                  json['dataVendaLeite'] as Map<String, dynamic>),
          quantidadeLeite: json['quantidadeLeite'] == null
              ? null
              : FloatWithAggregatesFilter.fromJson(
                  json['quantidadeLeite'] as Map<String, dynamic>),
          valorTotalLeite: json['valorTotalLeite'] == null
              ? null
              : FloatWithAggregatesFilter.fromJson(
                  json['valorTotalLeite'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$VendaleiteScalarWhereWithAggregatesInputToJson(
    VendaleiteScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('codVendaLeite', instance.codVendaLeite?.toJson());
  writeNotNull('codComprador', instance.codComprador?.toJson());
  writeNotNull('dataVendaLeite', instance.dataVendaLeite?.toJson());
  writeNotNull('quantidadeLeite', instance.quantidadeLeite?.toJson());
  writeNotNull('valorTotalLeite', instance.valorTotalLeite?.toJson());
  return val;
}

AnimalCreateInput _$AnimalCreateInputFromJson(Map<String, dynamic> json) =>
    AnimalCreateInput(
      codAnimal: json['codAnimal'] as int,
      nome: json['nome'] as String,
      dataNascimento: const DateTimeJsonConverter()
          .fromJson(json['dataNascimento'] as String),
      sexo: json['sexo'] as String,
      raca: json['raca'] as String,
      idade: json['idade'] as int,
      formaManejo: json['formaManejo'] as String,
      mediaLeite: (json['mediaLeite'] as num?)?.toDouble(),
      categoria: CategoriaCreateNestedOneWithoutAnimalInput.fromJson(
          json['categoria'] as Map<String, dynamic>),
      prodleite: ProdleiteCreateNestedOneWithoutAnimalInput.fromJson(
          json['prodleite'] as Map<String, dynamic>),
      itensvenda: json['itensvenda'] == null
          ? null
          : ItensvendaCreateNestedManyWithoutAnimalInput.fromJson(
              json['itensvenda'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimalCreateInputToJson(AnimalCreateInput instance) {
  final val = <String, dynamic>{
    'codAnimal': instance.codAnimal,
    'nome': instance.nome,
    'dataNascimento':
        const DateTimeJsonConverter().toJson(instance.dataNascimento),
    'sexo': instance.sexo,
    'raca': instance.raca,
    'idade': instance.idade,
    'formaManejo': instance.formaManejo,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('mediaLeite', instance.mediaLeite);
  val['categoria'] = instance.categoria.toJson();
  val['prodleite'] = instance.prodleite.toJson();
  writeNotNull('itensvenda', instance.itensvenda?.toJson());
  return val;
}

AnimalUncheckedCreateInput _$AnimalUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    AnimalUncheckedCreateInput(
      codAnimal: json['codAnimal'] as int,
      codProdLeite: json['codProdLeite'] as int,
      codCategoria: json['codCategoria'] as int,
      nome: json['nome'] as String,
      dataNascimento: const DateTimeJsonConverter()
          .fromJson(json['dataNascimento'] as String),
      sexo: json['sexo'] as String,
      raca: json['raca'] as String,
      idade: json['idade'] as int,
      formaManejo: json['formaManejo'] as String,
      mediaLeite: (json['mediaLeite'] as num?)?.toDouble(),
      itensvenda: json['itensvenda'] == null
          ? null
          : ItensvendaUncheckedCreateNestedManyWithoutAnimalInput.fromJson(
              json['itensvenda'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimalUncheckedCreateInputToJson(
    AnimalUncheckedCreateInput instance) {
  final val = <String, dynamic>{
    'codAnimal': instance.codAnimal,
    'codProdLeite': instance.codProdLeite,
    'codCategoria': instance.codCategoria,
    'nome': instance.nome,
    'dataNascimento':
        const DateTimeJsonConverter().toJson(instance.dataNascimento),
    'sexo': instance.sexo,
    'raca': instance.raca,
    'idade': instance.idade,
    'formaManejo': instance.formaManejo,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('mediaLeite', instance.mediaLeite);
  writeNotNull('itensvenda', instance.itensvenda?.toJson());
  return val;
}

AnimalUpdateInput _$AnimalUpdateInputFromJson(Map<String, dynamic> json) =>
    AnimalUpdateInput(
      codAnimal: json['codAnimal'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codAnimal'] as Map<String, dynamic>),
      nome: json['nome'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['nome'] as Map<String, dynamic>),
      dataNascimento: json['dataNascimento'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['dataNascimento'] as Map<String, dynamic>),
      sexo: json['sexo'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['sexo'] as Map<String, dynamic>),
      raca: json['raca'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['raca'] as Map<String, dynamic>),
      idade: json['idade'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['idade'] as Map<String, dynamic>),
      formaManejo: json['formaManejo'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['formaManejo'] as Map<String, dynamic>),
      mediaLeite: json['mediaLeite'] == null
          ? null
          : NullableFloatFieldUpdateOperationsInput.fromJson(
              json['mediaLeite'] as Map<String, dynamic>),
      categoria: json['categoria'] == null
          ? null
          : CategoriaUpdateOneRequiredWithoutAnimalNestedInput.fromJson(
              json['categoria'] as Map<String, dynamic>),
      prodleite: json['prodleite'] == null
          ? null
          : ProdleiteUpdateOneRequiredWithoutAnimalNestedInput.fromJson(
              json['prodleite'] as Map<String, dynamic>),
      itensvenda: json['itensvenda'] == null
          ? null
          : ItensvendaUpdateManyWithoutAnimalNestedInput.fromJson(
              json['itensvenda'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimalUpdateInputToJson(AnimalUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codAnimal', instance.codAnimal?.toJson());
  writeNotNull('nome', instance.nome?.toJson());
  writeNotNull('dataNascimento', instance.dataNascimento?.toJson());
  writeNotNull('sexo', instance.sexo?.toJson());
  writeNotNull('raca', instance.raca?.toJson());
  writeNotNull('idade', instance.idade?.toJson());
  writeNotNull('formaManejo', instance.formaManejo?.toJson());
  writeNotNull('mediaLeite', instance.mediaLeite?.toJson());
  writeNotNull('categoria', instance.categoria?.toJson());
  writeNotNull('prodleite', instance.prodleite?.toJson());
  writeNotNull('itensvenda', instance.itensvenda?.toJson());
  return val;
}

AnimalUncheckedUpdateInput _$AnimalUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    AnimalUncheckedUpdateInput(
      codAnimal: json['codAnimal'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codAnimal'] as Map<String, dynamic>),
      codProdLeite: json['codProdLeite'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codProdLeite'] as Map<String, dynamic>),
      codCategoria: json['codCategoria'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codCategoria'] as Map<String, dynamic>),
      nome: json['nome'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['nome'] as Map<String, dynamic>),
      dataNascimento: json['dataNascimento'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['dataNascimento'] as Map<String, dynamic>),
      sexo: json['sexo'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['sexo'] as Map<String, dynamic>),
      raca: json['raca'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['raca'] as Map<String, dynamic>),
      idade: json['idade'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['idade'] as Map<String, dynamic>),
      formaManejo: json['formaManejo'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['formaManejo'] as Map<String, dynamic>),
      mediaLeite: json['mediaLeite'] == null
          ? null
          : NullableFloatFieldUpdateOperationsInput.fromJson(
              json['mediaLeite'] as Map<String, dynamic>),
      itensvenda: json['itensvenda'] == null
          ? null
          : ItensvendaUncheckedUpdateManyWithoutAnimalNestedInput.fromJson(
              json['itensvenda'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimalUncheckedUpdateInputToJson(
    AnimalUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codAnimal', instance.codAnimal?.toJson());
  writeNotNull('codProdLeite', instance.codProdLeite?.toJson());
  writeNotNull('codCategoria', instance.codCategoria?.toJson());
  writeNotNull('nome', instance.nome?.toJson());
  writeNotNull('dataNascimento', instance.dataNascimento?.toJson());
  writeNotNull('sexo', instance.sexo?.toJson());
  writeNotNull('raca', instance.raca?.toJson());
  writeNotNull('idade', instance.idade?.toJson());
  writeNotNull('formaManejo', instance.formaManejo?.toJson());
  writeNotNull('mediaLeite', instance.mediaLeite?.toJson());
  writeNotNull('itensvenda', instance.itensvenda?.toJson());
  return val;
}

AnimalCreateManyInput _$AnimalCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    AnimalCreateManyInput(
      codAnimal: json['codAnimal'] as int,
      codProdLeite: json['codProdLeite'] as int,
      codCategoria: json['codCategoria'] as int,
      nome: json['nome'] as String,
      dataNascimento: const DateTimeJsonConverter()
          .fromJson(json['dataNascimento'] as String),
      sexo: json['sexo'] as String,
      raca: json['raca'] as String,
      idade: json['idade'] as int,
      formaManejo: json['formaManejo'] as String,
      mediaLeite: (json['mediaLeite'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AnimalCreateManyInputToJson(
    AnimalCreateManyInput instance) {
  final val = <String, dynamic>{
    'codAnimal': instance.codAnimal,
    'codProdLeite': instance.codProdLeite,
    'codCategoria': instance.codCategoria,
    'nome': instance.nome,
    'dataNascimento':
        const DateTimeJsonConverter().toJson(instance.dataNascimento),
    'sexo': instance.sexo,
    'raca': instance.raca,
    'idade': instance.idade,
    'formaManejo': instance.formaManejo,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('mediaLeite', instance.mediaLeite);
  return val;
}

AnimalUpdateManyMutationInput _$AnimalUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    AnimalUpdateManyMutationInput(
      codAnimal: json['codAnimal'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codAnimal'] as Map<String, dynamic>),
      nome: json['nome'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['nome'] as Map<String, dynamic>),
      dataNascimento: json['dataNascimento'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['dataNascimento'] as Map<String, dynamic>),
      sexo: json['sexo'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['sexo'] as Map<String, dynamic>),
      raca: json['raca'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['raca'] as Map<String, dynamic>),
      idade: json['idade'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['idade'] as Map<String, dynamic>),
      formaManejo: json['formaManejo'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['formaManejo'] as Map<String, dynamic>),
      mediaLeite: json['mediaLeite'] == null
          ? null
          : NullableFloatFieldUpdateOperationsInput.fromJson(
              json['mediaLeite'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimalUpdateManyMutationInputToJson(
    AnimalUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codAnimal', instance.codAnimal?.toJson());
  writeNotNull('nome', instance.nome?.toJson());
  writeNotNull('dataNascimento', instance.dataNascimento?.toJson());
  writeNotNull('sexo', instance.sexo?.toJson());
  writeNotNull('raca', instance.raca?.toJson());
  writeNotNull('idade', instance.idade?.toJson());
  writeNotNull('formaManejo', instance.formaManejo?.toJson());
  writeNotNull('mediaLeite', instance.mediaLeite?.toJson());
  return val;
}

AnimalUncheckedUpdateManyInput _$AnimalUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    AnimalUncheckedUpdateManyInput(
      codAnimal: json['codAnimal'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codAnimal'] as Map<String, dynamic>),
      codProdLeite: json['codProdLeite'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codProdLeite'] as Map<String, dynamic>),
      codCategoria: json['codCategoria'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codCategoria'] as Map<String, dynamic>),
      nome: json['nome'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['nome'] as Map<String, dynamic>),
      dataNascimento: json['dataNascimento'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['dataNascimento'] as Map<String, dynamic>),
      sexo: json['sexo'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['sexo'] as Map<String, dynamic>),
      raca: json['raca'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['raca'] as Map<String, dynamic>),
      idade: json['idade'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['idade'] as Map<String, dynamic>),
      formaManejo: json['formaManejo'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['formaManejo'] as Map<String, dynamic>),
      mediaLeite: json['mediaLeite'] == null
          ? null
          : NullableFloatFieldUpdateOperationsInput.fromJson(
              json['mediaLeite'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimalUncheckedUpdateManyInputToJson(
    AnimalUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codAnimal', instance.codAnimal?.toJson());
  writeNotNull('codProdLeite', instance.codProdLeite?.toJson());
  writeNotNull('codCategoria', instance.codCategoria?.toJson());
  writeNotNull('nome', instance.nome?.toJson());
  writeNotNull('dataNascimento', instance.dataNascimento?.toJson());
  writeNotNull('sexo', instance.sexo?.toJson());
  writeNotNull('raca', instance.raca?.toJson());
  writeNotNull('idade', instance.idade?.toJson());
  writeNotNull('formaManejo', instance.formaManejo?.toJson());
  writeNotNull('mediaLeite', instance.mediaLeite?.toJson());
  return val;
}

CategoriaCreateInput _$CategoriaCreateInputFromJson(
        Map<String, dynamic> json) =>
    CategoriaCreateInput(
      codCategoria: json['codCategoria'] as int,
      tipo: json['tipo'] as String,
      animal: json['animal'] == null
          ? null
          : AnimalCreateNestedManyWithoutCategoriaInput.fromJson(
              json['animal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoriaCreateInputToJson(
    CategoriaCreateInput instance) {
  final val = <String, dynamic>{
    'codCategoria': instance.codCategoria,
    'tipo': instance.tipo,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('animal', instance.animal?.toJson());
  return val;
}

CategoriaUncheckedCreateInput _$CategoriaUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    CategoriaUncheckedCreateInput(
      codCategoria: json['codCategoria'] as int,
      tipo: json['tipo'] as String,
      animal: json['animal'] == null
          ? null
          : AnimalUncheckedCreateNestedManyWithoutCategoriaInput.fromJson(
              json['animal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoriaUncheckedCreateInputToJson(
    CategoriaUncheckedCreateInput instance) {
  final val = <String, dynamic>{
    'codCategoria': instance.codCategoria,
    'tipo': instance.tipo,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('animal', instance.animal?.toJson());
  return val;
}

CategoriaUpdateInput _$CategoriaUpdateInputFromJson(
        Map<String, dynamic> json) =>
    CategoriaUpdateInput(
      codCategoria: json['codCategoria'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codCategoria'] as Map<String, dynamic>),
      tipo: json['tipo'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['tipo'] as Map<String, dynamic>),
      animal: json['animal'] == null
          ? null
          : AnimalUpdateManyWithoutCategoriaNestedInput.fromJson(
              json['animal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoriaUpdateInputToJson(
    CategoriaUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codCategoria', instance.codCategoria?.toJson());
  writeNotNull('tipo', instance.tipo?.toJson());
  writeNotNull('animal', instance.animal?.toJson());
  return val;
}

CategoriaUncheckedUpdateInput _$CategoriaUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    CategoriaUncheckedUpdateInput(
      codCategoria: json['codCategoria'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codCategoria'] as Map<String, dynamic>),
      tipo: json['tipo'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['tipo'] as Map<String, dynamic>),
      animal: json['animal'] == null
          ? null
          : AnimalUncheckedUpdateManyWithoutCategoriaNestedInput.fromJson(
              json['animal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoriaUncheckedUpdateInputToJson(
    CategoriaUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codCategoria', instance.codCategoria?.toJson());
  writeNotNull('tipo', instance.tipo?.toJson());
  writeNotNull('animal', instance.animal?.toJson());
  return val;
}

CategoriaCreateManyInput _$CategoriaCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    CategoriaCreateManyInput(
      codCategoria: json['codCategoria'] as int,
      tipo: json['tipo'] as String,
    );

Map<String, dynamic> _$CategoriaCreateManyInputToJson(
        CategoriaCreateManyInput instance) =>
    <String, dynamic>{
      'codCategoria': instance.codCategoria,
      'tipo': instance.tipo,
    };

CategoriaUpdateManyMutationInput _$CategoriaUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    CategoriaUpdateManyMutationInput(
      codCategoria: json['codCategoria'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codCategoria'] as Map<String, dynamic>),
      tipo: json['tipo'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['tipo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoriaUpdateManyMutationInputToJson(
    CategoriaUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codCategoria', instance.codCategoria?.toJson());
  writeNotNull('tipo', instance.tipo?.toJson());
  return val;
}

CategoriaUncheckedUpdateManyInput _$CategoriaUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    CategoriaUncheckedUpdateManyInput(
      codCategoria: json['codCategoria'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codCategoria'] as Map<String, dynamic>),
      tipo: json['tipo'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['tipo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoriaUncheckedUpdateManyInputToJson(
    CategoriaUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codCategoria', instance.codCategoria?.toJson());
  writeNotNull('tipo', instance.tipo?.toJson());
  return val;
}

CompradorCreateInput _$CompradorCreateInputFromJson(
        Map<String, dynamic> json) =>
    CompradorCreateInput(
      codComprador: json['codComprador'] as int,
      nome: json['nome'] as String,
      telefone: json['telefone'] as String,
      endereco: json['endereco'] as String,
      vendaanimal: json['vendaanimal'] == null
          ? null
          : VendaanimalCreateNestedManyWithoutCompradorInput.fromJson(
              json['vendaanimal'] as Map<String, dynamic>),
      vendaleite: json['vendaleite'] == null
          ? null
          : VendaleiteCreateNestedManyWithoutCompradorInput.fromJson(
              json['vendaleite'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompradorCreateInputToJson(
    CompradorCreateInput instance) {
  final val = <String, dynamic>{
    'codComprador': instance.codComprador,
    'nome': instance.nome,
    'telefone': instance.telefone,
    'endereco': instance.endereco,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('vendaanimal', instance.vendaanimal?.toJson());
  writeNotNull('vendaleite', instance.vendaleite?.toJson());
  return val;
}

CompradorUncheckedCreateInput _$CompradorUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    CompradorUncheckedCreateInput(
      codComprador: json['codComprador'] as int,
      nome: json['nome'] as String,
      telefone: json['telefone'] as String,
      endereco: json['endereco'] as String,
      vendaanimal: json['vendaanimal'] == null
          ? null
          : VendaanimalUncheckedCreateNestedManyWithoutCompradorInput.fromJson(
              json['vendaanimal'] as Map<String, dynamic>),
      vendaleite: json['vendaleite'] == null
          ? null
          : VendaleiteUncheckedCreateNestedManyWithoutCompradorInput.fromJson(
              json['vendaleite'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompradorUncheckedCreateInputToJson(
    CompradorUncheckedCreateInput instance) {
  final val = <String, dynamic>{
    'codComprador': instance.codComprador,
    'nome': instance.nome,
    'telefone': instance.telefone,
    'endereco': instance.endereco,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('vendaanimal', instance.vendaanimal?.toJson());
  writeNotNull('vendaleite', instance.vendaleite?.toJson());
  return val;
}

CompradorUpdateInput _$CompradorUpdateInputFromJson(
        Map<String, dynamic> json) =>
    CompradorUpdateInput(
      codComprador: json['codComprador'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codComprador'] as Map<String, dynamic>),
      nome: json['nome'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['nome'] as Map<String, dynamic>),
      telefone: json['telefone'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['telefone'] as Map<String, dynamic>),
      endereco: json['endereco'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['endereco'] as Map<String, dynamic>),
      vendaanimal: json['vendaanimal'] == null
          ? null
          : VendaanimalUpdateManyWithoutCompradorNestedInput.fromJson(
              json['vendaanimal'] as Map<String, dynamic>),
      vendaleite: json['vendaleite'] == null
          ? null
          : VendaleiteUpdateManyWithoutCompradorNestedInput.fromJson(
              json['vendaleite'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompradorUpdateInputToJson(
    CompradorUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codComprador', instance.codComprador?.toJson());
  writeNotNull('nome', instance.nome?.toJson());
  writeNotNull('telefone', instance.telefone?.toJson());
  writeNotNull('endereco', instance.endereco?.toJson());
  writeNotNull('vendaanimal', instance.vendaanimal?.toJson());
  writeNotNull('vendaleite', instance.vendaleite?.toJson());
  return val;
}

CompradorUncheckedUpdateInput _$CompradorUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    CompradorUncheckedUpdateInput(
      codComprador: json['codComprador'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codComprador'] as Map<String, dynamic>),
      nome: json['nome'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['nome'] as Map<String, dynamic>),
      telefone: json['telefone'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['telefone'] as Map<String, dynamic>),
      endereco: json['endereco'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['endereco'] as Map<String, dynamic>),
      vendaanimal: json['vendaanimal'] == null
          ? null
          : VendaanimalUncheckedUpdateManyWithoutCompradorNestedInput.fromJson(
              json['vendaanimal'] as Map<String, dynamic>),
      vendaleite: json['vendaleite'] == null
          ? null
          : VendaleiteUncheckedUpdateManyWithoutCompradorNestedInput.fromJson(
              json['vendaleite'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompradorUncheckedUpdateInputToJson(
    CompradorUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codComprador', instance.codComprador?.toJson());
  writeNotNull('nome', instance.nome?.toJson());
  writeNotNull('telefone', instance.telefone?.toJson());
  writeNotNull('endereco', instance.endereco?.toJson());
  writeNotNull('vendaanimal', instance.vendaanimal?.toJson());
  writeNotNull('vendaleite', instance.vendaleite?.toJson());
  return val;
}

CompradorCreateManyInput _$CompradorCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    CompradorCreateManyInput(
      codComprador: json['codComprador'] as int,
      nome: json['nome'] as String,
      telefone: json['telefone'] as String,
      endereco: json['endereco'] as String,
    );

Map<String, dynamic> _$CompradorCreateManyInputToJson(
        CompradorCreateManyInput instance) =>
    <String, dynamic>{
      'codComprador': instance.codComprador,
      'nome': instance.nome,
      'telefone': instance.telefone,
      'endereco': instance.endereco,
    };

CompradorUpdateManyMutationInput _$CompradorUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    CompradorUpdateManyMutationInput(
      codComprador: json['codComprador'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codComprador'] as Map<String, dynamic>),
      nome: json['nome'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['nome'] as Map<String, dynamic>),
      telefone: json['telefone'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['telefone'] as Map<String, dynamic>),
      endereco: json['endereco'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['endereco'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompradorUpdateManyMutationInputToJson(
    CompradorUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codComprador', instance.codComprador?.toJson());
  writeNotNull('nome', instance.nome?.toJson());
  writeNotNull('telefone', instance.telefone?.toJson());
  writeNotNull('endereco', instance.endereco?.toJson());
  return val;
}

CompradorUncheckedUpdateManyInput _$CompradorUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    CompradorUncheckedUpdateManyInput(
      codComprador: json['codComprador'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codComprador'] as Map<String, dynamic>),
      nome: json['nome'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['nome'] as Map<String, dynamic>),
      telefone: json['telefone'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['telefone'] as Map<String, dynamic>),
      endereco: json['endereco'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['endereco'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompradorUncheckedUpdateManyInputToJson(
    CompradorUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codComprador', instance.codComprador?.toJson());
  writeNotNull('nome', instance.nome?.toJson());
  writeNotNull('telefone', instance.telefone?.toJson());
  writeNotNull('endereco', instance.endereco?.toJson());
  return val;
}

ItensvendaCreateInput _$ItensvendaCreateInputFromJson(
        Map<String, dynamic> json) =>
    ItensvendaCreateInput(
      codItensVenda: json['codItensVenda'] as int,
      quantidade: json['quantidade'] as int,
      valorUnitario: (json['valorUnitario'] as num).toDouble(),
      animal: AnimalCreateNestedOneWithoutItensvendaInput.fromJson(
          json['animal'] as Map<String, dynamic>),
      vendaanimal: VendaanimalCreateNestedOneWithoutItensvendaInput.fromJson(
          json['vendaanimal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItensvendaCreateInputToJson(
        ItensvendaCreateInput instance) =>
    <String, dynamic>{
      'codItensVenda': instance.codItensVenda,
      'quantidade': instance.quantidade,
      'valorUnitario': instance.valorUnitario,
      'animal': instance.animal.toJson(),
      'vendaanimal': instance.vendaanimal.toJson(),
    };

ItensvendaUncheckedCreateInput _$ItensvendaUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    ItensvendaUncheckedCreateInput(
      codItensVenda: json['codItensVenda'] as int,
      codVendaAnimal: json['codVendaAnimal'] as int,
      codAnimal: json['codAnimal'] as int,
      quantidade: json['quantidade'] as int,
      valorUnitario: (json['valorUnitario'] as num).toDouble(),
    );

Map<String, dynamic> _$ItensvendaUncheckedCreateInputToJson(
        ItensvendaUncheckedCreateInput instance) =>
    <String, dynamic>{
      'codItensVenda': instance.codItensVenda,
      'codVendaAnimal': instance.codVendaAnimal,
      'codAnimal': instance.codAnimal,
      'quantidade': instance.quantidade,
      'valorUnitario': instance.valorUnitario,
    };

ItensvendaUpdateInput _$ItensvendaUpdateInputFromJson(
        Map<String, dynamic> json) =>
    ItensvendaUpdateInput(
      codItensVenda: json['codItensVenda'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codItensVenda'] as Map<String, dynamic>),
      quantidade: json['quantidade'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['quantidade'] as Map<String, dynamic>),
      valorUnitario: json['valorUnitario'] == null
          ? null
          : FloatFieldUpdateOperationsInput.fromJson(
              json['valorUnitario'] as Map<String, dynamic>),
      animal: json['animal'] == null
          ? null
          : AnimalUpdateOneRequiredWithoutItensvendaNestedInput.fromJson(
              json['animal'] as Map<String, dynamic>),
      vendaanimal: json['vendaanimal'] == null
          ? null
          : VendaanimalUpdateOneRequiredWithoutItensvendaNestedInput.fromJson(
              json['vendaanimal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItensvendaUpdateInputToJson(
    ItensvendaUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codItensVenda', instance.codItensVenda?.toJson());
  writeNotNull('quantidade', instance.quantidade?.toJson());
  writeNotNull('valorUnitario', instance.valorUnitario?.toJson());
  writeNotNull('animal', instance.animal?.toJson());
  writeNotNull('vendaanimal', instance.vendaanimal?.toJson());
  return val;
}

ItensvendaUncheckedUpdateInput _$ItensvendaUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    ItensvendaUncheckedUpdateInput(
      codItensVenda: json['codItensVenda'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codItensVenda'] as Map<String, dynamic>),
      codVendaAnimal: json['codVendaAnimal'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codVendaAnimal'] as Map<String, dynamic>),
      codAnimal: json['codAnimal'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codAnimal'] as Map<String, dynamic>),
      quantidade: json['quantidade'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['quantidade'] as Map<String, dynamic>),
      valorUnitario: json['valorUnitario'] == null
          ? null
          : FloatFieldUpdateOperationsInput.fromJson(
              json['valorUnitario'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItensvendaUncheckedUpdateInputToJson(
    ItensvendaUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codItensVenda', instance.codItensVenda?.toJson());
  writeNotNull('codVendaAnimal', instance.codVendaAnimal?.toJson());
  writeNotNull('codAnimal', instance.codAnimal?.toJson());
  writeNotNull('quantidade', instance.quantidade?.toJson());
  writeNotNull('valorUnitario', instance.valorUnitario?.toJson());
  return val;
}

ItensvendaCreateManyInput _$ItensvendaCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    ItensvendaCreateManyInput(
      codItensVenda: json['codItensVenda'] as int,
      codVendaAnimal: json['codVendaAnimal'] as int,
      codAnimal: json['codAnimal'] as int,
      quantidade: json['quantidade'] as int,
      valorUnitario: (json['valorUnitario'] as num).toDouble(),
    );

Map<String, dynamic> _$ItensvendaCreateManyInputToJson(
        ItensvendaCreateManyInput instance) =>
    <String, dynamic>{
      'codItensVenda': instance.codItensVenda,
      'codVendaAnimal': instance.codVendaAnimal,
      'codAnimal': instance.codAnimal,
      'quantidade': instance.quantidade,
      'valorUnitario': instance.valorUnitario,
    };

ItensvendaUpdateManyMutationInput _$ItensvendaUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    ItensvendaUpdateManyMutationInput(
      codItensVenda: json['codItensVenda'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codItensVenda'] as Map<String, dynamic>),
      quantidade: json['quantidade'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['quantidade'] as Map<String, dynamic>),
      valorUnitario: json['valorUnitario'] == null
          ? null
          : FloatFieldUpdateOperationsInput.fromJson(
              json['valorUnitario'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItensvendaUpdateManyMutationInputToJson(
    ItensvendaUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codItensVenda', instance.codItensVenda?.toJson());
  writeNotNull('quantidade', instance.quantidade?.toJson());
  writeNotNull('valorUnitario', instance.valorUnitario?.toJson());
  return val;
}

ItensvendaUncheckedUpdateManyInput _$ItensvendaUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    ItensvendaUncheckedUpdateManyInput(
      codItensVenda: json['codItensVenda'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codItensVenda'] as Map<String, dynamic>),
      codVendaAnimal: json['codVendaAnimal'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codVendaAnimal'] as Map<String, dynamic>),
      codAnimal: json['codAnimal'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codAnimal'] as Map<String, dynamic>),
      quantidade: json['quantidade'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['quantidade'] as Map<String, dynamic>),
      valorUnitario: json['valorUnitario'] == null
          ? null
          : FloatFieldUpdateOperationsInput.fromJson(
              json['valorUnitario'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItensvendaUncheckedUpdateManyInputToJson(
    ItensvendaUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codItensVenda', instance.codItensVenda?.toJson());
  writeNotNull('codVendaAnimal', instance.codVendaAnimal?.toJson());
  writeNotNull('codAnimal', instance.codAnimal?.toJson());
  writeNotNull('quantidade', instance.quantidade?.toJson());
  writeNotNull('valorUnitario', instance.valorUnitario?.toJson());
  return val;
}

ProdleiteCreateInput _$ProdleiteCreateInputFromJson(
        Map<String, dynamic> json) =>
    ProdleiteCreateInput(
      codProdLeite: json['codProdLeite'] as int,
      data: const DateTimeJsonConverter().fromJson(json['data'] as String),
      quantidadeLeite: (json['quantidadeLeite'] as num).toDouble(),
      animal: json['animal'] == null
          ? null
          : AnimalCreateNestedManyWithoutProdleiteInput.fromJson(
              json['animal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProdleiteCreateInputToJson(
    ProdleiteCreateInput instance) {
  final val = <String, dynamic>{
    'codProdLeite': instance.codProdLeite,
    'data': const DateTimeJsonConverter().toJson(instance.data),
    'quantidadeLeite': instance.quantidadeLeite,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('animal', instance.animal?.toJson());
  return val;
}

ProdleiteUncheckedCreateInput _$ProdleiteUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    ProdleiteUncheckedCreateInput(
      codProdLeite: json['codProdLeite'] as int,
      data: const DateTimeJsonConverter().fromJson(json['data'] as String),
      quantidadeLeite: (json['quantidadeLeite'] as num).toDouble(),
      animal: json['animal'] == null
          ? null
          : AnimalUncheckedCreateNestedManyWithoutProdleiteInput.fromJson(
              json['animal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProdleiteUncheckedCreateInputToJson(
    ProdleiteUncheckedCreateInput instance) {
  final val = <String, dynamic>{
    'codProdLeite': instance.codProdLeite,
    'data': const DateTimeJsonConverter().toJson(instance.data),
    'quantidadeLeite': instance.quantidadeLeite,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('animal', instance.animal?.toJson());
  return val;
}

ProdleiteUpdateInput _$ProdleiteUpdateInputFromJson(
        Map<String, dynamic> json) =>
    ProdleiteUpdateInput(
      codProdLeite: json['codProdLeite'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codProdLeite'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['data'] as Map<String, dynamic>),
      quantidadeLeite: json['quantidadeLeite'] == null
          ? null
          : FloatFieldUpdateOperationsInput.fromJson(
              json['quantidadeLeite'] as Map<String, dynamic>),
      animal: json['animal'] == null
          ? null
          : AnimalUpdateManyWithoutProdleiteNestedInput.fromJson(
              json['animal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProdleiteUpdateInputToJson(
    ProdleiteUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codProdLeite', instance.codProdLeite?.toJson());
  writeNotNull('data', instance.data?.toJson());
  writeNotNull('quantidadeLeite', instance.quantidadeLeite?.toJson());
  writeNotNull('animal', instance.animal?.toJson());
  return val;
}

ProdleiteUncheckedUpdateInput _$ProdleiteUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    ProdleiteUncheckedUpdateInput(
      codProdLeite: json['codProdLeite'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codProdLeite'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['data'] as Map<String, dynamic>),
      quantidadeLeite: json['quantidadeLeite'] == null
          ? null
          : FloatFieldUpdateOperationsInput.fromJson(
              json['quantidadeLeite'] as Map<String, dynamic>),
      animal: json['animal'] == null
          ? null
          : AnimalUncheckedUpdateManyWithoutProdleiteNestedInput.fromJson(
              json['animal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProdleiteUncheckedUpdateInputToJson(
    ProdleiteUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codProdLeite', instance.codProdLeite?.toJson());
  writeNotNull('data', instance.data?.toJson());
  writeNotNull('quantidadeLeite', instance.quantidadeLeite?.toJson());
  writeNotNull('animal', instance.animal?.toJson());
  return val;
}

ProdleiteCreateManyInput _$ProdleiteCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    ProdleiteCreateManyInput(
      codProdLeite: json['codProdLeite'] as int,
      data: const DateTimeJsonConverter().fromJson(json['data'] as String),
      quantidadeLeite: (json['quantidadeLeite'] as num).toDouble(),
    );

Map<String, dynamic> _$ProdleiteCreateManyInputToJson(
        ProdleiteCreateManyInput instance) =>
    <String, dynamic>{
      'codProdLeite': instance.codProdLeite,
      'data': const DateTimeJsonConverter().toJson(instance.data),
      'quantidadeLeite': instance.quantidadeLeite,
    };

ProdleiteUpdateManyMutationInput _$ProdleiteUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    ProdleiteUpdateManyMutationInput(
      codProdLeite: json['codProdLeite'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codProdLeite'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['data'] as Map<String, dynamic>),
      quantidadeLeite: json['quantidadeLeite'] == null
          ? null
          : FloatFieldUpdateOperationsInput.fromJson(
              json['quantidadeLeite'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProdleiteUpdateManyMutationInputToJson(
    ProdleiteUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codProdLeite', instance.codProdLeite?.toJson());
  writeNotNull('data', instance.data?.toJson());
  writeNotNull('quantidadeLeite', instance.quantidadeLeite?.toJson());
  return val;
}

ProdleiteUncheckedUpdateManyInput _$ProdleiteUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    ProdleiteUncheckedUpdateManyInput(
      codProdLeite: json['codProdLeite'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codProdLeite'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['data'] as Map<String, dynamic>),
      quantidadeLeite: json['quantidadeLeite'] == null
          ? null
          : FloatFieldUpdateOperationsInput.fromJson(
              json['quantidadeLeite'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProdleiteUncheckedUpdateManyInputToJson(
    ProdleiteUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codProdLeite', instance.codProdLeite?.toJson());
  writeNotNull('data', instance.data?.toJson());
  writeNotNull('quantidadeLeite', instance.quantidadeLeite?.toJson());
  return val;
}

VendaanimalCreateInput _$VendaanimalCreateInputFromJson(
        Map<String, dynamic> json) =>
    VendaanimalCreateInput(
      codVendaAnimal: json['codVendaAnimal'] as int,
      dataVendaAnimal: const DateTimeJsonConverter()
          .fromJson(json['dataVendaAnimal'] as String),
      valorTotalAnimal: (json['valorTotalAnimal'] as num).toDouble(),
      itensvenda: json['itensvenda'] == null
          ? null
          : ItensvendaCreateNestedManyWithoutVendaanimalInput.fromJson(
              json['itensvenda'] as Map<String, dynamic>),
      comprador: CompradorCreateNestedOneWithoutVendaanimalInput.fromJson(
          json['comprador'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VendaanimalCreateInputToJson(
    VendaanimalCreateInput instance) {
  final val = <String, dynamic>{
    'codVendaAnimal': instance.codVendaAnimal,
    'dataVendaAnimal':
        const DateTimeJsonConverter().toJson(instance.dataVendaAnimal),
    'valorTotalAnimal': instance.valorTotalAnimal,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('itensvenda', instance.itensvenda?.toJson());
  val['comprador'] = instance.comprador.toJson();
  return val;
}

VendaanimalUncheckedCreateInput _$VendaanimalUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    VendaanimalUncheckedCreateInput(
      codVendaAnimal: json['codVendaAnimal'] as int,
      codComprador: json['codComprador'] as int,
      dataVendaAnimal: const DateTimeJsonConverter()
          .fromJson(json['dataVendaAnimal'] as String),
      valorTotalAnimal: (json['valorTotalAnimal'] as num).toDouble(),
      itensvenda: json['itensvenda'] == null
          ? null
          : ItensvendaUncheckedCreateNestedManyWithoutVendaanimalInput.fromJson(
              json['itensvenda'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VendaanimalUncheckedCreateInputToJson(
    VendaanimalUncheckedCreateInput instance) {
  final val = <String, dynamic>{
    'codVendaAnimal': instance.codVendaAnimal,
    'codComprador': instance.codComprador,
    'dataVendaAnimal':
        const DateTimeJsonConverter().toJson(instance.dataVendaAnimal),
    'valorTotalAnimal': instance.valorTotalAnimal,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('itensvenda', instance.itensvenda?.toJson());
  return val;
}

VendaanimalUpdateInput _$VendaanimalUpdateInputFromJson(
        Map<String, dynamic> json) =>
    VendaanimalUpdateInput(
      codVendaAnimal: json['codVendaAnimal'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codVendaAnimal'] as Map<String, dynamic>),
      dataVendaAnimal: json['dataVendaAnimal'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['dataVendaAnimal'] as Map<String, dynamic>),
      valorTotalAnimal: json['valorTotalAnimal'] == null
          ? null
          : FloatFieldUpdateOperationsInput.fromJson(
              json['valorTotalAnimal'] as Map<String, dynamic>),
      itensvenda: json['itensvenda'] == null
          ? null
          : ItensvendaUpdateManyWithoutVendaanimalNestedInput.fromJson(
              json['itensvenda'] as Map<String, dynamic>),
      comprador: json['comprador'] == null
          ? null
          : CompradorUpdateOneRequiredWithoutVendaanimalNestedInput.fromJson(
              json['comprador'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VendaanimalUpdateInputToJson(
    VendaanimalUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaAnimal', instance.codVendaAnimal?.toJson());
  writeNotNull('dataVendaAnimal', instance.dataVendaAnimal?.toJson());
  writeNotNull('valorTotalAnimal', instance.valorTotalAnimal?.toJson());
  writeNotNull('itensvenda', instance.itensvenda?.toJson());
  writeNotNull('comprador', instance.comprador?.toJson());
  return val;
}

VendaanimalUncheckedUpdateInput _$VendaanimalUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    VendaanimalUncheckedUpdateInput(
      codVendaAnimal: json['codVendaAnimal'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codVendaAnimal'] as Map<String, dynamic>),
      codComprador: json['codComprador'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codComprador'] as Map<String, dynamic>),
      dataVendaAnimal: json['dataVendaAnimal'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['dataVendaAnimal'] as Map<String, dynamic>),
      valorTotalAnimal: json['valorTotalAnimal'] == null
          ? null
          : FloatFieldUpdateOperationsInput.fromJson(
              json['valorTotalAnimal'] as Map<String, dynamic>),
      itensvenda: json['itensvenda'] == null
          ? null
          : ItensvendaUncheckedUpdateManyWithoutVendaanimalNestedInput.fromJson(
              json['itensvenda'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VendaanimalUncheckedUpdateInputToJson(
    VendaanimalUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaAnimal', instance.codVendaAnimal?.toJson());
  writeNotNull('codComprador', instance.codComprador?.toJson());
  writeNotNull('dataVendaAnimal', instance.dataVendaAnimal?.toJson());
  writeNotNull('valorTotalAnimal', instance.valorTotalAnimal?.toJson());
  writeNotNull('itensvenda', instance.itensvenda?.toJson());
  return val;
}

VendaanimalCreateManyInput _$VendaanimalCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    VendaanimalCreateManyInput(
      codVendaAnimal: json['codVendaAnimal'] as int,
      codComprador: json['codComprador'] as int,
      dataVendaAnimal: const DateTimeJsonConverter()
          .fromJson(json['dataVendaAnimal'] as String),
      valorTotalAnimal: (json['valorTotalAnimal'] as num).toDouble(),
    );

Map<String, dynamic> _$VendaanimalCreateManyInputToJson(
        VendaanimalCreateManyInput instance) =>
    <String, dynamic>{
      'codVendaAnimal': instance.codVendaAnimal,
      'codComprador': instance.codComprador,
      'dataVendaAnimal':
          const DateTimeJsonConverter().toJson(instance.dataVendaAnimal),
      'valorTotalAnimal': instance.valorTotalAnimal,
    };

VendaanimalUpdateManyMutationInput _$VendaanimalUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    VendaanimalUpdateManyMutationInput(
      codVendaAnimal: json['codVendaAnimal'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codVendaAnimal'] as Map<String, dynamic>),
      dataVendaAnimal: json['dataVendaAnimal'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['dataVendaAnimal'] as Map<String, dynamic>),
      valorTotalAnimal: json['valorTotalAnimal'] == null
          ? null
          : FloatFieldUpdateOperationsInput.fromJson(
              json['valorTotalAnimal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VendaanimalUpdateManyMutationInputToJson(
    VendaanimalUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaAnimal', instance.codVendaAnimal?.toJson());
  writeNotNull('dataVendaAnimal', instance.dataVendaAnimal?.toJson());
  writeNotNull('valorTotalAnimal', instance.valorTotalAnimal?.toJson());
  return val;
}

VendaanimalUncheckedUpdateManyInput
    _$VendaanimalUncheckedUpdateManyInputFromJson(Map<String, dynamic> json) =>
        VendaanimalUncheckedUpdateManyInput(
          codVendaAnimal: json['codVendaAnimal'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codVendaAnimal'] as Map<String, dynamic>),
          codComprador: json['codComprador'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codComprador'] as Map<String, dynamic>),
          dataVendaAnimal: json['dataVendaAnimal'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['dataVendaAnimal'] as Map<String, dynamic>),
          valorTotalAnimal: json['valorTotalAnimal'] == null
              ? null
              : FloatFieldUpdateOperationsInput.fromJson(
                  json['valorTotalAnimal'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$VendaanimalUncheckedUpdateManyInputToJson(
    VendaanimalUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaAnimal', instance.codVendaAnimal?.toJson());
  writeNotNull('codComprador', instance.codComprador?.toJson());
  writeNotNull('dataVendaAnimal', instance.dataVendaAnimal?.toJson());
  writeNotNull('valorTotalAnimal', instance.valorTotalAnimal?.toJson());
  return val;
}

VendaleiteCreateInput _$VendaleiteCreateInputFromJson(
        Map<String, dynamic> json) =>
    VendaleiteCreateInput(
      codVendaLeite: json['codVendaLeite'] as int,
      dataVendaLeite: const DateTimeJsonConverter()
          .fromJson(json['dataVendaLeite'] as String),
      quantidadeLeite: (json['quantidadeLeite'] as num).toDouble(),
      valorTotalLeite: (json['valorTotalLeite'] as num).toDouble(),
      comprador: CompradorCreateNestedOneWithoutVendaleiteInput.fromJson(
          json['comprador'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VendaleiteCreateInputToJson(
        VendaleiteCreateInput instance) =>
    <String, dynamic>{
      'codVendaLeite': instance.codVendaLeite,
      'dataVendaLeite':
          const DateTimeJsonConverter().toJson(instance.dataVendaLeite),
      'quantidadeLeite': instance.quantidadeLeite,
      'valorTotalLeite': instance.valorTotalLeite,
      'comprador': instance.comprador.toJson(),
    };

VendaleiteUncheckedCreateInput _$VendaleiteUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    VendaleiteUncheckedCreateInput(
      codVendaLeite: json['codVendaLeite'] as int,
      codComprador: json['codComprador'] as int,
      dataVendaLeite: const DateTimeJsonConverter()
          .fromJson(json['dataVendaLeite'] as String),
      quantidadeLeite: (json['quantidadeLeite'] as num).toDouble(),
      valorTotalLeite: (json['valorTotalLeite'] as num).toDouble(),
    );

Map<String, dynamic> _$VendaleiteUncheckedCreateInputToJson(
        VendaleiteUncheckedCreateInput instance) =>
    <String, dynamic>{
      'codVendaLeite': instance.codVendaLeite,
      'codComprador': instance.codComprador,
      'dataVendaLeite':
          const DateTimeJsonConverter().toJson(instance.dataVendaLeite),
      'quantidadeLeite': instance.quantidadeLeite,
      'valorTotalLeite': instance.valorTotalLeite,
    };

VendaleiteUpdateInput _$VendaleiteUpdateInputFromJson(
        Map<String, dynamic> json) =>
    VendaleiteUpdateInput(
      codVendaLeite: json['codVendaLeite'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codVendaLeite'] as Map<String, dynamic>),
      dataVendaLeite: json['dataVendaLeite'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['dataVendaLeite'] as Map<String, dynamic>),
      quantidadeLeite: json['quantidadeLeite'] == null
          ? null
          : FloatFieldUpdateOperationsInput.fromJson(
              json['quantidadeLeite'] as Map<String, dynamic>),
      valorTotalLeite: json['valorTotalLeite'] == null
          ? null
          : FloatFieldUpdateOperationsInput.fromJson(
              json['valorTotalLeite'] as Map<String, dynamic>),
      comprador: json['comprador'] == null
          ? null
          : CompradorUpdateOneRequiredWithoutVendaleiteNestedInput.fromJson(
              json['comprador'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VendaleiteUpdateInputToJson(
    VendaleiteUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaLeite', instance.codVendaLeite?.toJson());
  writeNotNull('dataVendaLeite', instance.dataVendaLeite?.toJson());
  writeNotNull('quantidadeLeite', instance.quantidadeLeite?.toJson());
  writeNotNull('valorTotalLeite', instance.valorTotalLeite?.toJson());
  writeNotNull('comprador', instance.comprador?.toJson());
  return val;
}

VendaleiteUncheckedUpdateInput _$VendaleiteUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    VendaleiteUncheckedUpdateInput(
      codVendaLeite: json['codVendaLeite'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codVendaLeite'] as Map<String, dynamic>),
      codComprador: json['codComprador'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codComprador'] as Map<String, dynamic>),
      dataVendaLeite: json['dataVendaLeite'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['dataVendaLeite'] as Map<String, dynamic>),
      quantidadeLeite: json['quantidadeLeite'] == null
          ? null
          : FloatFieldUpdateOperationsInput.fromJson(
              json['quantidadeLeite'] as Map<String, dynamic>),
      valorTotalLeite: json['valorTotalLeite'] == null
          ? null
          : FloatFieldUpdateOperationsInput.fromJson(
              json['valorTotalLeite'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VendaleiteUncheckedUpdateInputToJson(
    VendaleiteUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaLeite', instance.codVendaLeite?.toJson());
  writeNotNull('codComprador', instance.codComprador?.toJson());
  writeNotNull('dataVendaLeite', instance.dataVendaLeite?.toJson());
  writeNotNull('quantidadeLeite', instance.quantidadeLeite?.toJson());
  writeNotNull('valorTotalLeite', instance.valorTotalLeite?.toJson());
  return val;
}

VendaleiteCreateManyInput _$VendaleiteCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    VendaleiteCreateManyInput(
      codVendaLeite: json['codVendaLeite'] as int,
      codComprador: json['codComprador'] as int,
      dataVendaLeite: const DateTimeJsonConverter()
          .fromJson(json['dataVendaLeite'] as String),
      quantidadeLeite: (json['quantidadeLeite'] as num).toDouble(),
      valorTotalLeite: (json['valorTotalLeite'] as num).toDouble(),
    );

Map<String, dynamic> _$VendaleiteCreateManyInputToJson(
        VendaleiteCreateManyInput instance) =>
    <String, dynamic>{
      'codVendaLeite': instance.codVendaLeite,
      'codComprador': instance.codComprador,
      'dataVendaLeite':
          const DateTimeJsonConverter().toJson(instance.dataVendaLeite),
      'quantidadeLeite': instance.quantidadeLeite,
      'valorTotalLeite': instance.valorTotalLeite,
    };

VendaleiteUpdateManyMutationInput _$VendaleiteUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    VendaleiteUpdateManyMutationInput(
      codVendaLeite: json['codVendaLeite'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codVendaLeite'] as Map<String, dynamic>),
      dataVendaLeite: json['dataVendaLeite'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['dataVendaLeite'] as Map<String, dynamic>),
      quantidadeLeite: json['quantidadeLeite'] == null
          ? null
          : FloatFieldUpdateOperationsInput.fromJson(
              json['quantidadeLeite'] as Map<String, dynamic>),
      valorTotalLeite: json['valorTotalLeite'] == null
          ? null
          : FloatFieldUpdateOperationsInput.fromJson(
              json['valorTotalLeite'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VendaleiteUpdateManyMutationInputToJson(
    VendaleiteUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaLeite', instance.codVendaLeite?.toJson());
  writeNotNull('dataVendaLeite', instance.dataVendaLeite?.toJson());
  writeNotNull('quantidadeLeite', instance.quantidadeLeite?.toJson());
  writeNotNull('valorTotalLeite', instance.valorTotalLeite?.toJson());
  return val;
}

VendaleiteUncheckedUpdateManyInput _$VendaleiteUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    VendaleiteUncheckedUpdateManyInput(
      codVendaLeite: json['codVendaLeite'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codVendaLeite'] as Map<String, dynamic>),
      codComprador: json['codComprador'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codComprador'] as Map<String, dynamic>),
      dataVendaLeite: json['dataVendaLeite'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['dataVendaLeite'] as Map<String, dynamic>),
      quantidadeLeite: json['quantidadeLeite'] == null
          ? null
          : FloatFieldUpdateOperationsInput.fromJson(
              json['quantidadeLeite'] as Map<String, dynamic>),
      valorTotalLeite: json['valorTotalLeite'] == null
          ? null
          : FloatFieldUpdateOperationsInput.fromJson(
              json['valorTotalLeite'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VendaleiteUncheckedUpdateManyInputToJson(
    VendaleiteUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaLeite', instance.codVendaLeite?.toJson());
  writeNotNull('codComprador', instance.codComprador?.toJson());
  writeNotNull('dataVendaLeite', instance.dataVendaLeite?.toJson());
  writeNotNull('quantidadeLeite', instance.quantidadeLeite?.toJson());
  writeNotNull('valorTotalLeite', instance.valorTotalLeite?.toJson());
  return val;
}

IntFilter _$IntFilterFromJson(Map<String, dynamic> json) => IntFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntFilterToJson(IntFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

StringFilter _$StringFilterFromJson(Map<String, dynamic> json) => StringFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringFilterToJson(StringFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

DateTimeFilter _$DateTimeFilterFromJson(Map<String, dynamic> json) =>
    DateTimeFilter(
      equals: _$JsonConverterFromJson<String, DateTime>(
          json['equals'], const DateTimeJsonConverter().fromJson),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      lt: _$JsonConverterFromJson<String, DateTime>(
          json['lt'], const DateTimeJsonConverter().fromJson),
      lte: _$JsonConverterFromJson<String, DateTime>(
          json['lte'], const DateTimeJsonConverter().fromJson),
      gt: _$JsonConverterFromJson<String, DateTime>(
          json['gt'], const DateTimeJsonConverter().fromJson),
      gte: _$JsonConverterFromJson<String, DateTime>(
          json['gte'], const DateTimeJsonConverter().fromJson),
      not: json['not'] == null
          ? null
          : NestedDateTimeFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DateTimeFilterToJson(DateTimeFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'equals',
      _$JsonConverterToJson<String, DateTime>(
          instance.equals, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'in', instance.$in?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull('notIn',
      instance.notIn?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull(
      'lt',
      _$JsonConverterToJson<String, DateTime>(
          instance.lt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'lte',
      _$JsonConverterToJson<String, DateTime>(
          instance.lte, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gt',
      _$JsonConverterToJson<String, DateTime>(
          instance.gt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gte',
      _$JsonConverterToJson<String, DateTime>(
          instance.gte, const DateTimeJsonConverter().toJson));
  writeNotNull('not', instance.not?.toJson());
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

FloatNullableFilter _$FloatNullableFilterFromJson(Map<String, dynamic> json) =>
    FloatNullableFilter(
      equals: (json['equals'] as num?)?.toDouble(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      lt: (json['lt'] as num?)?.toDouble(),
      lte: (json['lte'] as num?)?.toDouble(),
      gt: (json['gt'] as num?)?.toDouble(),
      gte: (json['gte'] as num?)?.toDouble(),
      not: json['not'] == null
          ? null
          : NestedFloatNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FloatNullableFilterToJson(FloatNullableFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

CategoriaRelationFilter _$CategoriaRelationFilterFromJson(
        Map<String, dynamic> json) =>
    CategoriaRelationFilter(
      $is: json['is'] == null
          ? null
          : CategoriaWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : CategoriaWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoriaRelationFilterToJson(
    CategoriaRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is', instance.$is?.toJson());
  writeNotNull('isNot', instance.isNot?.toJson());
  return val;
}

ProdleiteRelationFilter _$ProdleiteRelationFilterFromJson(
        Map<String, dynamic> json) =>
    ProdleiteRelationFilter(
      $is: json['is'] == null
          ? null
          : ProdleiteWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : ProdleiteWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProdleiteRelationFilterToJson(
    ProdleiteRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is', instance.$is?.toJson());
  writeNotNull('isNot', instance.isNot?.toJson());
  return val;
}

ItensvendaListRelationFilter _$ItensvendaListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    ItensvendaListRelationFilter(
      every: json['every'] == null
          ? null
          : ItensvendaWhereInput.fromJson(
              json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : ItensvendaWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : ItensvendaWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItensvendaListRelationFilterToJson(
    ItensvendaListRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('every', instance.every?.toJson());
  writeNotNull('some', instance.some?.toJson());
  writeNotNull('none', instance.none?.toJson());
  return val;
}

ItensvendaOrderByRelationAggregateInput
    _$ItensvendaOrderByRelationAggregateInputFromJson(
            Map<String, dynamic> json) =>
        ItensvendaOrderByRelationAggregateInput(
          $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count']),
        );

Map<String, dynamic> _$ItensvendaOrderByRelationAggregateInputToJson(
    ItensvendaOrderByRelationAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_count', _$SortOrderEnumMap[instance.$count]);
  return val;
}

AnimalCountOrderByAggregateInput _$AnimalCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    AnimalCountOrderByAggregateInput(
      codAnimal: $enumDecodeNullable(_$SortOrderEnumMap, json['codAnimal']),
      codProdLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codProdLeite']),
      codCategoria:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codCategoria']),
      nome: $enumDecodeNullable(_$SortOrderEnumMap, json['nome']),
      dataNascimento:
          $enumDecodeNullable(_$SortOrderEnumMap, json['dataNascimento']),
      sexo: $enumDecodeNullable(_$SortOrderEnumMap, json['sexo']),
      raca: $enumDecodeNullable(_$SortOrderEnumMap, json['raca']),
      idade: $enumDecodeNullable(_$SortOrderEnumMap, json['idade']),
      formaManejo: $enumDecodeNullable(_$SortOrderEnumMap, json['formaManejo']),
      mediaLeite: $enumDecodeNullable(_$SortOrderEnumMap, json['mediaLeite']),
    );

Map<String, dynamic> _$AnimalCountOrderByAggregateInputToJson(
    AnimalCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codAnimal', _$SortOrderEnumMap[instance.codAnimal]);
  writeNotNull('codProdLeite', _$SortOrderEnumMap[instance.codProdLeite]);
  writeNotNull('codCategoria', _$SortOrderEnumMap[instance.codCategoria]);
  writeNotNull('nome', _$SortOrderEnumMap[instance.nome]);
  writeNotNull('dataNascimento', _$SortOrderEnumMap[instance.dataNascimento]);
  writeNotNull('sexo', _$SortOrderEnumMap[instance.sexo]);
  writeNotNull('raca', _$SortOrderEnumMap[instance.raca]);
  writeNotNull('idade', _$SortOrderEnumMap[instance.idade]);
  writeNotNull('formaManejo', _$SortOrderEnumMap[instance.formaManejo]);
  writeNotNull('mediaLeite', _$SortOrderEnumMap[instance.mediaLeite]);
  return val;
}

AnimalAvgOrderByAggregateInput _$AnimalAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    AnimalAvgOrderByAggregateInput(
      codAnimal: $enumDecodeNullable(_$SortOrderEnumMap, json['codAnimal']),
      codProdLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codProdLeite']),
      codCategoria:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codCategoria']),
      idade: $enumDecodeNullable(_$SortOrderEnumMap, json['idade']),
      mediaLeite: $enumDecodeNullable(_$SortOrderEnumMap, json['mediaLeite']),
    );

Map<String, dynamic> _$AnimalAvgOrderByAggregateInputToJson(
    AnimalAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codAnimal', _$SortOrderEnumMap[instance.codAnimal]);
  writeNotNull('codProdLeite', _$SortOrderEnumMap[instance.codProdLeite]);
  writeNotNull('codCategoria', _$SortOrderEnumMap[instance.codCategoria]);
  writeNotNull('idade', _$SortOrderEnumMap[instance.idade]);
  writeNotNull('mediaLeite', _$SortOrderEnumMap[instance.mediaLeite]);
  return val;
}

AnimalMaxOrderByAggregateInput _$AnimalMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    AnimalMaxOrderByAggregateInput(
      codAnimal: $enumDecodeNullable(_$SortOrderEnumMap, json['codAnimal']),
      codProdLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codProdLeite']),
      codCategoria:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codCategoria']),
      nome: $enumDecodeNullable(_$SortOrderEnumMap, json['nome']),
      dataNascimento:
          $enumDecodeNullable(_$SortOrderEnumMap, json['dataNascimento']),
      sexo: $enumDecodeNullable(_$SortOrderEnumMap, json['sexo']),
      raca: $enumDecodeNullable(_$SortOrderEnumMap, json['raca']),
      idade: $enumDecodeNullable(_$SortOrderEnumMap, json['idade']),
      formaManejo: $enumDecodeNullable(_$SortOrderEnumMap, json['formaManejo']),
      mediaLeite: $enumDecodeNullable(_$SortOrderEnumMap, json['mediaLeite']),
    );

Map<String, dynamic> _$AnimalMaxOrderByAggregateInputToJson(
    AnimalMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codAnimal', _$SortOrderEnumMap[instance.codAnimal]);
  writeNotNull('codProdLeite', _$SortOrderEnumMap[instance.codProdLeite]);
  writeNotNull('codCategoria', _$SortOrderEnumMap[instance.codCategoria]);
  writeNotNull('nome', _$SortOrderEnumMap[instance.nome]);
  writeNotNull('dataNascimento', _$SortOrderEnumMap[instance.dataNascimento]);
  writeNotNull('sexo', _$SortOrderEnumMap[instance.sexo]);
  writeNotNull('raca', _$SortOrderEnumMap[instance.raca]);
  writeNotNull('idade', _$SortOrderEnumMap[instance.idade]);
  writeNotNull('formaManejo', _$SortOrderEnumMap[instance.formaManejo]);
  writeNotNull('mediaLeite', _$SortOrderEnumMap[instance.mediaLeite]);
  return val;
}

AnimalMinOrderByAggregateInput _$AnimalMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    AnimalMinOrderByAggregateInput(
      codAnimal: $enumDecodeNullable(_$SortOrderEnumMap, json['codAnimal']),
      codProdLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codProdLeite']),
      codCategoria:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codCategoria']),
      nome: $enumDecodeNullable(_$SortOrderEnumMap, json['nome']),
      dataNascimento:
          $enumDecodeNullable(_$SortOrderEnumMap, json['dataNascimento']),
      sexo: $enumDecodeNullable(_$SortOrderEnumMap, json['sexo']),
      raca: $enumDecodeNullable(_$SortOrderEnumMap, json['raca']),
      idade: $enumDecodeNullable(_$SortOrderEnumMap, json['idade']),
      formaManejo: $enumDecodeNullable(_$SortOrderEnumMap, json['formaManejo']),
      mediaLeite: $enumDecodeNullable(_$SortOrderEnumMap, json['mediaLeite']),
    );

Map<String, dynamic> _$AnimalMinOrderByAggregateInputToJson(
    AnimalMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codAnimal', _$SortOrderEnumMap[instance.codAnimal]);
  writeNotNull('codProdLeite', _$SortOrderEnumMap[instance.codProdLeite]);
  writeNotNull('codCategoria', _$SortOrderEnumMap[instance.codCategoria]);
  writeNotNull('nome', _$SortOrderEnumMap[instance.nome]);
  writeNotNull('dataNascimento', _$SortOrderEnumMap[instance.dataNascimento]);
  writeNotNull('sexo', _$SortOrderEnumMap[instance.sexo]);
  writeNotNull('raca', _$SortOrderEnumMap[instance.raca]);
  writeNotNull('idade', _$SortOrderEnumMap[instance.idade]);
  writeNotNull('formaManejo', _$SortOrderEnumMap[instance.formaManejo]);
  writeNotNull('mediaLeite', _$SortOrderEnumMap[instance.mediaLeite]);
  return val;
}

AnimalSumOrderByAggregateInput _$AnimalSumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    AnimalSumOrderByAggregateInput(
      codAnimal: $enumDecodeNullable(_$SortOrderEnumMap, json['codAnimal']),
      codProdLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codProdLeite']),
      codCategoria:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codCategoria']),
      idade: $enumDecodeNullable(_$SortOrderEnumMap, json['idade']),
      mediaLeite: $enumDecodeNullable(_$SortOrderEnumMap, json['mediaLeite']),
    );

Map<String, dynamic> _$AnimalSumOrderByAggregateInputToJson(
    AnimalSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codAnimal', _$SortOrderEnumMap[instance.codAnimal]);
  writeNotNull('codProdLeite', _$SortOrderEnumMap[instance.codProdLeite]);
  writeNotNull('codCategoria', _$SortOrderEnumMap[instance.codCategoria]);
  writeNotNull('idade', _$SortOrderEnumMap[instance.idade]);
  writeNotNull('mediaLeite', _$SortOrderEnumMap[instance.mediaLeite]);
  return val;
}

IntWithAggregatesFilter _$IntWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    IntWithAggregatesFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedIntFilter.fromJson(json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedIntFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedIntFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntWithAggregatesFilterToJson(
    IntWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

StringWithAggregatesFilter _$StringWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    StringWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringWithAggregatesFilterToJson(
    StringWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

DateTimeWithAggregatesFilter _$DateTimeWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    DateTimeWithAggregatesFilter(
      equals: _$JsonConverterFromJson<String, DateTime>(
          json['equals'], const DateTimeJsonConverter().fromJson),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      lt: _$JsonConverterFromJson<String, DateTime>(
          json['lt'], const DateTimeJsonConverter().fromJson),
      lte: _$JsonConverterFromJson<String, DateTime>(
          json['lte'], const DateTimeJsonConverter().fromJson),
      gt: _$JsonConverterFromJson<String, DateTime>(
          json['gt'], const DateTimeJsonConverter().fromJson),
      gte: _$JsonConverterFromJson<String, DateTime>(
          json['gte'], const DateTimeJsonConverter().fromJson),
      not: json['not'] == null
          ? null
          : NestedDateTimeWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedDateTimeFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedDateTimeFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DateTimeWithAggregatesFilterToJson(
    DateTimeWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'equals',
      _$JsonConverterToJson<String, DateTime>(
          instance.equals, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'in', instance.$in?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull('notIn',
      instance.notIn?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull(
      'lt',
      _$JsonConverterToJson<String, DateTime>(
          instance.lt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'lte',
      _$JsonConverterToJson<String, DateTime>(
          instance.lte, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gt',
      _$JsonConverterToJson<String, DateTime>(
          instance.gt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gte',
      _$JsonConverterToJson<String, DateTime>(
          instance.gte, const DateTimeJsonConverter().toJson));
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

FloatNullableWithAggregatesFilter _$FloatNullableWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    FloatNullableWithAggregatesFilter(
      equals: (json['equals'] as num?)?.toDouble(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      lt: (json['lt'] as num?)?.toDouble(),
      lte: (json['lte'] as num?)?.toDouble(),
      gt: (json['gt'] as num?)?.toDouble(),
      gte: (json['gte'] as num?)?.toDouble(),
      not: json['not'] == null
          ? null
          : NestedFloatNullableWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatNullableFilter.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedFloatNullableFilter.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedFloatNullableFilter.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedFloatNullableFilter.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FloatNullableWithAggregatesFilterToJson(
    FloatNullableWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

AnimalListRelationFilter _$AnimalListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    AnimalListRelationFilter(
      every: json['every'] == null
          ? null
          : AnimalWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : AnimalWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : AnimalWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimalListRelationFilterToJson(
    AnimalListRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('every', instance.every?.toJson());
  writeNotNull('some', instance.some?.toJson());
  writeNotNull('none', instance.none?.toJson());
  return val;
}

AnimalOrderByRelationAggregateInput
    _$AnimalOrderByRelationAggregateInputFromJson(Map<String, dynamic> json) =>
        AnimalOrderByRelationAggregateInput(
          $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count']),
        );

Map<String, dynamic> _$AnimalOrderByRelationAggregateInputToJson(
    AnimalOrderByRelationAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_count', _$SortOrderEnumMap[instance.$count]);
  return val;
}

CategoriaCountOrderByAggregateInput
    _$CategoriaCountOrderByAggregateInputFromJson(Map<String, dynamic> json) =>
        CategoriaCountOrderByAggregateInput(
          codCategoria:
              $enumDecodeNullable(_$SortOrderEnumMap, json['codCategoria']),
          tipo: $enumDecodeNullable(_$SortOrderEnumMap, json['tipo']),
        );

Map<String, dynamic> _$CategoriaCountOrderByAggregateInputToJson(
    CategoriaCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codCategoria', _$SortOrderEnumMap[instance.codCategoria]);
  writeNotNull('tipo', _$SortOrderEnumMap[instance.tipo]);
  return val;
}

CategoriaAvgOrderByAggregateInput _$CategoriaAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    CategoriaAvgOrderByAggregateInput(
      codCategoria:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codCategoria']),
    );

Map<String, dynamic> _$CategoriaAvgOrderByAggregateInputToJson(
    CategoriaAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codCategoria', _$SortOrderEnumMap[instance.codCategoria]);
  return val;
}

CategoriaMaxOrderByAggregateInput _$CategoriaMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    CategoriaMaxOrderByAggregateInput(
      codCategoria:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codCategoria']),
      tipo: $enumDecodeNullable(_$SortOrderEnumMap, json['tipo']),
    );

Map<String, dynamic> _$CategoriaMaxOrderByAggregateInputToJson(
    CategoriaMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codCategoria', _$SortOrderEnumMap[instance.codCategoria]);
  writeNotNull('tipo', _$SortOrderEnumMap[instance.tipo]);
  return val;
}

CategoriaMinOrderByAggregateInput _$CategoriaMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    CategoriaMinOrderByAggregateInput(
      codCategoria:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codCategoria']),
      tipo: $enumDecodeNullable(_$SortOrderEnumMap, json['tipo']),
    );

Map<String, dynamic> _$CategoriaMinOrderByAggregateInputToJson(
    CategoriaMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codCategoria', _$SortOrderEnumMap[instance.codCategoria]);
  writeNotNull('tipo', _$SortOrderEnumMap[instance.tipo]);
  return val;
}

CategoriaSumOrderByAggregateInput _$CategoriaSumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    CategoriaSumOrderByAggregateInput(
      codCategoria:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codCategoria']),
    );

Map<String, dynamic> _$CategoriaSumOrderByAggregateInputToJson(
    CategoriaSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codCategoria', _$SortOrderEnumMap[instance.codCategoria]);
  return val;
}

VendaanimalListRelationFilter _$VendaanimalListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    VendaanimalListRelationFilter(
      every: json['every'] == null
          ? null
          : VendaanimalWhereInput.fromJson(
              json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : VendaanimalWhereInput.fromJson(
              json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : VendaanimalWhereInput.fromJson(
              json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VendaanimalListRelationFilterToJson(
    VendaanimalListRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('every', instance.every?.toJson());
  writeNotNull('some', instance.some?.toJson());
  writeNotNull('none', instance.none?.toJson());
  return val;
}

VendaleiteListRelationFilter _$VendaleiteListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    VendaleiteListRelationFilter(
      every: json['every'] == null
          ? null
          : VendaleiteWhereInput.fromJson(
              json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : VendaleiteWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : VendaleiteWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VendaleiteListRelationFilterToJson(
    VendaleiteListRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('every', instance.every?.toJson());
  writeNotNull('some', instance.some?.toJson());
  writeNotNull('none', instance.none?.toJson());
  return val;
}

VendaanimalOrderByRelationAggregateInput
    _$VendaanimalOrderByRelationAggregateInputFromJson(
            Map<String, dynamic> json) =>
        VendaanimalOrderByRelationAggregateInput(
          $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count']),
        );

Map<String, dynamic> _$VendaanimalOrderByRelationAggregateInputToJson(
    VendaanimalOrderByRelationAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_count', _$SortOrderEnumMap[instance.$count]);
  return val;
}

VendaleiteOrderByRelationAggregateInput
    _$VendaleiteOrderByRelationAggregateInputFromJson(
            Map<String, dynamic> json) =>
        VendaleiteOrderByRelationAggregateInput(
          $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count']),
        );

Map<String, dynamic> _$VendaleiteOrderByRelationAggregateInputToJson(
    VendaleiteOrderByRelationAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_count', _$SortOrderEnumMap[instance.$count]);
  return val;
}

CompradorCountOrderByAggregateInput
    _$CompradorCountOrderByAggregateInputFromJson(Map<String, dynamic> json) =>
        CompradorCountOrderByAggregateInput(
          codComprador:
              $enumDecodeNullable(_$SortOrderEnumMap, json['codComprador']),
          nome: $enumDecodeNullable(_$SortOrderEnumMap, json['nome']),
          telefone: $enumDecodeNullable(_$SortOrderEnumMap, json['telefone']),
          endereco: $enumDecodeNullable(_$SortOrderEnumMap, json['endereco']),
        );

Map<String, dynamic> _$CompradorCountOrderByAggregateInputToJson(
    CompradorCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codComprador', _$SortOrderEnumMap[instance.codComprador]);
  writeNotNull('nome', _$SortOrderEnumMap[instance.nome]);
  writeNotNull('telefone', _$SortOrderEnumMap[instance.telefone]);
  writeNotNull('endereco', _$SortOrderEnumMap[instance.endereco]);
  return val;
}

CompradorAvgOrderByAggregateInput _$CompradorAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    CompradorAvgOrderByAggregateInput(
      codComprador:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codComprador']),
    );

Map<String, dynamic> _$CompradorAvgOrderByAggregateInputToJson(
    CompradorAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codComprador', _$SortOrderEnumMap[instance.codComprador]);
  return val;
}

CompradorMaxOrderByAggregateInput _$CompradorMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    CompradorMaxOrderByAggregateInput(
      codComprador:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codComprador']),
      nome: $enumDecodeNullable(_$SortOrderEnumMap, json['nome']),
      telefone: $enumDecodeNullable(_$SortOrderEnumMap, json['telefone']),
      endereco: $enumDecodeNullable(_$SortOrderEnumMap, json['endereco']),
    );

Map<String, dynamic> _$CompradorMaxOrderByAggregateInputToJson(
    CompradorMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codComprador', _$SortOrderEnumMap[instance.codComprador]);
  writeNotNull('nome', _$SortOrderEnumMap[instance.nome]);
  writeNotNull('telefone', _$SortOrderEnumMap[instance.telefone]);
  writeNotNull('endereco', _$SortOrderEnumMap[instance.endereco]);
  return val;
}

CompradorMinOrderByAggregateInput _$CompradorMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    CompradorMinOrderByAggregateInput(
      codComprador:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codComprador']),
      nome: $enumDecodeNullable(_$SortOrderEnumMap, json['nome']),
      telefone: $enumDecodeNullable(_$SortOrderEnumMap, json['telefone']),
      endereco: $enumDecodeNullable(_$SortOrderEnumMap, json['endereco']),
    );

Map<String, dynamic> _$CompradorMinOrderByAggregateInputToJson(
    CompradorMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codComprador', _$SortOrderEnumMap[instance.codComprador]);
  writeNotNull('nome', _$SortOrderEnumMap[instance.nome]);
  writeNotNull('telefone', _$SortOrderEnumMap[instance.telefone]);
  writeNotNull('endereco', _$SortOrderEnumMap[instance.endereco]);
  return val;
}

CompradorSumOrderByAggregateInput _$CompradorSumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    CompradorSumOrderByAggregateInput(
      codComprador:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codComprador']),
    );

Map<String, dynamic> _$CompradorSumOrderByAggregateInputToJson(
    CompradorSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codComprador', _$SortOrderEnumMap[instance.codComprador]);
  return val;
}

FloatFilter _$FloatFilterFromJson(Map<String, dynamic> json) => FloatFilter(
      equals: (json['equals'] as num?)?.toDouble(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      lt: (json['lt'] as num?)?.toDouble(),
      lte: (json['lte'] as num?)?.toDouble(),
      gt: (json['gt'] as num?)?.toDouble(),
      gte: (json['gte'] as num?)?.toDouble(),
      not: json['not'] == null
          ? null
          : NestedFloatFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FloatFilterToJson(FloatFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

AnimalRelationFilter _$AnimalRelationFilterFromJson(
        Map<String, dynamic> json) =>
    AnimalRelationFilter(
      $is: json['is'] == null
          ? null
          : AnimalWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : AnimalWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimalRelationFilterToJson(
    AnimalRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is', instance.$is?.toJson());
  writeNotNull('isNot', instance.isNot?.toJson());
  return val;
}

VendaanimalRelationFilter _$VendaanimalRelationFilterFromJson(
        Map<String, dynamic> json) =>
    VendaanimalRelationFilter(
      $is: json['is'] == null
          ? null
          : VendaanimalWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : VendaanimalWhereInput.fromJson(
              json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VendaanimalRelationFilterToJson(
    VendaanimalRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is', instance.$is?.toJson());
  writeNotNull('isNot', instance.isNot?.toJson());
  return val;
}

ItensvendaCodItensVendaCodVendaAnimalCodAnimalCompoundUniqueInput
    _$ItensvendaCodItensVendaCodVendaAnimalCodAnimalCompoundUniqueInputFromJson(
            Map<String, dynamic> json) =>
        ItensvendaCodItensVendaCodVendaAnimalCodAnimalCompoundUniqueInput(
          codItensVenda: json['codItensVenda'] as int,
          codVendaAnimal: json['codVendaAnimal'] as int,
          codAnimal: json['codAnimal'] as int,
        );

Map<String, dynamic>
    _$ItensvendaCodItensVendaCodVendaAnimalCodAnimalCompoundUniqueInputToJson(
            ItensvendaCodItensVendaCodVendaAnimalCodAnimalCompoundUniqueInput
                instance) =>
        <String, dynamic>{
          'codItensVenda': instance.codItensVenda,
          'codVendaAnimal': instance.codVendaAnimal,
          'codAnimal': instance.codAnimal,
        };

ItensvendaCountOrderByAggregateInput
    _$ItensvendaCountOrderByAggregateInputFromJson(Map<String, dynamic> json) =>
        ItensvendaCountOrderByAggregateInput(
          codItensVenda:
              $enumDecodeNullable(_$SortOrderEnumMap, json['codItensVenda']),
          codVendaAnimal:
              $enumDecodeNullable(_$SortOrderEnumMap, json['codVendaAnimal']),
          codAnimal: $enumDecodeNullable(_$SortOrderEnumMap, json['codAnimal']),
          quantidade:
              $enumDecodeNullable(_$SortOrderEnumMap, json['quantidade']),
          valorUnitario:
              $enumDecodeNullable(_$SortOrderEnumMap, json['valorUnitario']),
        );

Map<String, dynamic> _$ItensvendaCountOrderByAggregateInputToJson(
    ItensvendaCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codItensVenda', _$SortOrderEnumMap[instance.codItensVenda]);
  writeNotNull('codVendaAnimal', _$SortOrderEnumMap[instance.codVendaAnimal]);
  writeNotNull('codAnimal', _$SortOrderEnumMap[instance.codAnimal]);
  writeNotNull('quantidade', _$SortOrderEnumMap[instance.quantidade]);
  writeNotNull('valorUnitario', _$SortOrderEnumMap[instance.valorUnitario]);
  return val;
}

ItensvendaAvgOrderByAggregateInput _$ItensvendaAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    ItensvendaAvgOrderByAggregateInput(
      codItensVenda:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codItensVenda']),
      codVendaAnimal:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codVendaAnimal']),
      codAnimal: $enumDecodeNullable(_$SortOrderEnumMap, json['codAnimal']),
      quantidade: $enumDecodeNullable(_$SortOrderEnumMap, json['quantidade']),
      valorUnitario:
          $enumDecodeNullable(_$SortOrderEnumMap, json['valorUnitario']),
    );

Map<String, dynamic> _$ItensvendaAvgOrderByAggregateInputToJson(
    ItensvendaAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codItensVenda', _$SortOrderEnumMap[instance.codItensVenda]);
  writeNotNull('codVendaAnimal', _$SortOrderEnumMap[instance.codVendaAnimal]);
  writeNotNull('codAnimal', _$SortOrderEnumMap[instance.codAnimal]);
  writeNotNull('quantidade', _$SortOrderEnumMap[instance.quantidade]);
  writeNotNull('valorUnitario', _$SortOrderEnumMap[instance.valorUnitario]);
  return val;
}

ItensvendaMaxOrderByAggregateInput _$ItensvendaMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    ItensvendaMaxOrderByAggregateInput(
      codItensVenda:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codItensVenda']),
      codVendaAnimal:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codVendaAnimal']),
      codAnimal: $enumDecodeNullable(_$SortOrderEnumMap, json['codAnimal']),
      quantidade: $enumDecodeNullable(_$SortOrderEnumMap, json['quantidade']),
      valorUnitario:
          $enumDecodeNullable(_$SortOrderEnumMap, json['valorUnitario']),
    );

Map<String, dynamic> _$ItensvendaMaxOrderByAggregateInputToJson(
    ItensvendaMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codItensVenda', _$SortOrderEnumMap[instance.codItensVenda]);
  writeNotNull('codVendaAnimal', _$SortOrderEnumMap[instance.codVendaAnimal]);
  writeNotNull('codAnimal', _$SortOrderEnumMap[instance.codAnimal]);
  writeNotNull('quantidade', _$SortOrderEnumMap[instance.quantidade]);
  writeNotNull('valorUnitario', _$SortOrderEnumMap[instance.valorUnitario]);
  return val;
}

ItensvendaMinOrderByAggregateInput _$ItensvendaMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    ItensvendaMinOrderByAggregateInput(
      codItensVenda:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codItensVenda']),
      codVendaAnimal:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codVendaAnimal']),
      codAnimal: $enumDecodeNullable(_$SortOrderEnumMap, json['codAnimal']),
      quantidade: $enumDecodeNullable(_$SortOrderEnumMap, json['quantidade']),
      valorUnitario:
          $enumDecodeNullable(_$SortOrderEnumMap, json['valorUnitario']),
    );

Map<String, dynamic> _$ItensvendaMinOrderByAggregateInputToJson(
    ItensvendaMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codItensVenda', _$SortOrderEnumMap[instance.codItensVenda]);
  writeNotNull('codVendaAnimal', _$SortOrderEnumMap[instance.codVendaAnimal]);
  writeNotNull('codAnimal', _$SortOrderEnumMap[instance.codAnimal]);
  writeNotNull('quantidade', _$SortOrderEnumMap[instance.quantidade]);
  writeNotNull('valorUnitario', _$SortOrderEnumMap[instance.valorUnitario]);
  return val;
}

ItensvendaSumOrderByAggregateInput _$ItensvendaSumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    ItensvendaSumOrderByAggregateInput(
      codItensVenda:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codItensVenda']),
      codVendaAnimal:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codVendaAnimal']),
      codAnimal: $enumDecodeNullable(_$SortOrderEnumMap, json['codAnimal']),
      quantidade: $enumDecodeNullable(_$SortOrderEnumMap, json['quantidade']),
      valorUnitario:
          $enumDecodeNullable(_$SortOrderEnumMap, json['valorUnitario']),
    );

Map<String, dynamic> _$ItensvendaSumOrderByAggregateInputToJson(
    ItensvendaSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codItensVenda', _$SortOrderEnumMap[instance.codItensVenda]);
  writeNotNull('codVendaAnimal', _$SortOrderEnumMap[instance.codVendaAnimal]);
  writeNotNull('codAnimal', _$SortOrderEnumMap[instance.codAnimal]);
  writeNotNull('quantidade', _$SortOrderEnumMap[instance.quantidade]);
  writeNotNull('valorUnitario', _$SortOrderEnumMap[instance.valorUnitario]);
  return val;
}

FloatWithAggregatesFilter _$FloatWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    FloatWithAggregatesFilter(
      equals: (json['equals'] as num?)?.toDouble(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      lt: (json['lt'] as num?)?.toDouble(),
      lte: (json['lte'] as num?)?.toDouble(),
      gt: (json['gt'] as num?)?.toDouble(),
      gte: (json['gte'] as num?)?.toDouble(),
      not: json['not'] == null
          ? null
          : NestedFloatWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FloatWithAggregatesFilterToJson(
    FloatWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

ProdleiteCountOrderByAggregateInput
    _$ProdleiteCountOrderByAggregateInputFromJson(Map<String, dynamic> json) =>
        ProdleiteCountOrderByAggregateInput(
          codProdLeite:
              $enumDecodeNullable(_$SortOrderEnumMap, json['codProdLeite']),
          data: $enumDecodeNullable(_$SortOrderEnumMap, json['data']),
          quantidadeLeite:
              $enumDecodeNullable(_$SortOrderEnumMap, json['quantidadeLeite']),
        );

Map<String, dynamic> _$ProdleiteCountOrderByAggregateInputToJson(
    ProdleiteCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codProdLeite', _$SortOrderEnumMap[instance.codProdLeite]);
  writeNotNull('data', _$SortOrderEnumMap[instance.data]);
  writeNotNull('quantidadeLeite', _$SortOrderEnumMap[instance.quantidadeLeite]);
  return val;
}

ProdleiteAvgOrderByAggregateInput _$ProdleiteAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    ProdleiteAvgOrderByAggregateInput(
      codProdLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codProdLeite']),
      quantidadeLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['quantidadeLeite']),
    );

Map<String, dynamic> _$ProdleiteAvgOrderByAggregateInputToJson(
    ProdleiteAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codProdLeite', _$SortOrderEnumMap[instance.codProdLeite]);
  writeNotNull('quantidadeLeite', _$SortOrderEnumMap[instance.quantidadeLeite]);
  return val;
}

ProdleiteMaxOrderByAggregateInput _$ProdleiteMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    ProdleiteMaxOrderByAggregateInput(
      codProdLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codProdLeite']),
      data: $enumDecodeNullable(_$SortOrderEnumMap, json['data']),
      quantidadeLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['quantidadeLeite']),
    );

Map<String, dynamic> _$ProdleiteMaxOrderByAggregateInputToJson(
    ProdleiteMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codProdLeite', _$SortOrderEnumMap[instance.codProdLeite]);
  writeNotNull('data', _$SortOrderEnumMap[instance.data]);
  writeNotNull('quantidadeLeite', _$SortOrderEnumMap[instance.quantidadeLeite]);
  return val;
}

ProdleiteMinOrderByAggregateInput _$ProdleiteMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    ProdleiteMinOrderByAggregateInput(
      codProdLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codProdLeite']),
      data: $enumDecodeNullable(_$SortOrderEnumMap, json['data']),
      quantidadeLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['quantidadeLeite']),
    );

Map<String, dynamic> _$ProdleiteMinOrderByAggregateInputToJson(
    ProdleiteMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codProdLeite', _$SortOrderEnumMap[instance.codProdLeite]);
  writeNotNull('data', _$SortOrderEnumMap[instance.data]);
  writeNotNull('quantidadeLeite', _$SortOrderEnumMap[instance.quantidadeLeite]);
  return val;
}

ProdleiteSumOrderByAggregateInput _$ProdleiteSumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    ProdleiteSumOrderByAggregateInput(
      codProdLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codProdLeite']),
      quantidadeLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['quantidadeLeite']),
    );

Map<String, dynamic> _$ProdleiteSumOrderByAggregateInputToJson(
    ProdleiteSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codProdLeite', _$SortOrderEnumMap[instance.codProdLeite]);
  writeNotNull('quantidadeLeite', _$SortOrderEnumMap[instance.quantidadeLeite]);
  return val;
}

CompradorRelationFilter _$CompradorRelationFilterFromJson(
        Map<String, dynamic> json) =>
    CompradorRelationFilter(
      $is: json['is'] == null
          ? null
          : CompradorWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : CompradorWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompradorRelationFilterToJson(
    CompradorRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is', instance.$is?.toJson());
  writeNotNull('isNot', instance.isNot?.toJson());
  return val;
}

VendaanimalCountOrderByAggregateInput
    _$VendaanimalCountOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        VendaanimalCountOrderByAggregateInput(
          codVendaAnimal:
              $enumDecodeNullable(_$SortOrderEnumMap, json['codVendaAnimal']),
          codComprador:
              $enumDecodeNullable(_$SortOrderEnumMap, json['codComprador']),
          dataVendaAnimal:
              $enumDecodeNullable(_$SortOrderEnumMap, json['dataVendaAnimal']),
          valorTotalAnimal:
              $enumDecodeNullable(_$SortOrderEnumMap, json['valorTotalAnimal']),
        );

Map<String, dynamic> _$VendaanimalCountOrderByAggregateInputToJson(
    VendaanimalCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaAnimal', _$SortOrderEnumMap[instance.codVendaAnimal]);
  writeNotNull('codComprador', _$SortOrderEnumMap[instance.codComprador]);
  writeNotNull('dataVendaAnimal', _$SortOrderEnumMap[instance.dataVendaAnimal]);
  writeNotNull(
      'valorTotalAnimal', _$SortOrderEnumMap[instance.valorTotalAnimal]);
  return val;
}

VendaanimalAvgOrderByAggregateInput
    _$VendaanimalAvgOrderByAggregateInputFromJson(Map<String, dynamic> json) =>
        VendaanimalAvgOrderByAggregateInput(
          codVendaAnimal:
              $enumDecodeNullable(_$SortOrderEnumMap, json['codVendaAnimal']),
          codComprador:
              $enumDecodeNullable(_$SortOrderEnumMap, json['codComprador']),
          valorTotalAnimal:
              $enumDecodeNullable(_$SortOrderEnumMap, json['valorTotalAnimal']),
        );

Map<String, dynamic> _$VendaanimalAvgOrderByAggregateInputToJson(
    VendaanimalAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaAnimal', _$SortOrderEnumMap[instance.codVendaAnimal]);
  writeNotNull('codComprador', _$SortOrderEnumMap[instance.codComprador]);
  writeNotNull(
      'valorTotalAnimal', _$SortOrderEnumMap[instance.valorTotalAnimal]);
  return val;
}

VendaanimalMaxOrderByAggregateInput
    _$VendaanimalMaxOrderByAggregateInputFromJson(Map<String, dynamic> json) =>
        VendaanimalMaxOrderByAggregateInput(
          codVendaAnimal:
              $enumDecodeNullable(_$SortOrderEnumMap, json['codVendaAnimal']),
          codComprador:
              $enumDecodeNullable(_$SortOrderEnumMap, json['codComprador']),
          dataVendaAnimal:
              $enumDecodeNullable(_$SortOrderEnumMap, json['dataVendaAnimal']),
          valorTotalAnimal:
              $enumDecodeNullable(_$SortOrderEnumMap, json['valorTotalAnimal']),
        );

Map<String, dynamic> _$VendaanimalMaxOrderByAggregateInputToJson(
    VendaanimalMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaAnimal', _$SortOrderEnumMap[instance.codVendaAnimal]);
  writeNotNull('codComprador', _$SortOrderEnumMap[instance.codComprador]);
  writeNotNull('dataVendaAnimal', _$SortOrderEnumMap[instance.dataVendaAnimal]);
  writeNotNull(
      'valorTotalAnimal', _$SortOrderEnumMap[instance.valorTotalAnimal]);
  return val;
}

VendaanimalMinOrderByAggregateInput
    _$VendaanimalMinOrderByAggregateInputFromJson(Map<String, dynamic> json) =>
        VendaanimalMinOrderByAggregateInput(
          codVendaAnimal:
              $enumDecodeNullable(_$SortOrderEnumMap, json['codVendaAnimal']),
          codComprador:
              $enumDecodeNullable(_$SortOrderEnumMap, json['codComprador']),
          dataVendaAnimal:
              $enumDecodeNullable(_$SortOrderEnumMap, json['dataVendaAnimal']),
          valorTotalAnimal:
              $enumDecodeNullable(_$SortOrderEnumMap, json['valorTotalAnimal']),
        );

Map<String, dynamic> _$VendaanimalMinOrderByAggregateInputToJson(
    VendaanimalMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaAnimal', _$SortOrderEnumMap[instance.codVendaAnimal]);
  writeNotNull('codComprador', _$SortOrderEnumMap[instance.codComprador]);
  writeNotNull('dataVendaAnimal', _$SortOrderEnumMap[instance.dataVendaAnimal]);
  writeNotNull(
      'valorTotalAnimal', _$SortOrderEnumMap[instance.valorTotalAnimal]);
  return val;
}

VendaanimalSumOrderByAggregateInput
    _$VendaanimalSumOrderByAggregateInputFromJson(Map<String, dynamic> json) =>
        VendaanimalSumOrderByAggregateInput(
          codVendaAnimal:
              $enumDecodeNullable(_$SortOrderEnumMap, json['codVendaAnimal']),
          codComprador:
              $enumDecodeNullable(_$SortOrderEnumMap, json['codComprador']),
          valorTotalAnimal:
              $enumDecodeNullable(_$SortOrderEnumMap, json['valorTotalAnimal']),
        );

Map<String, dynamic> _$VendaanimalSumOrderByAggregateInputToJson(
    VendaanimalSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaAnimal', _$SortOrderEnumMap[instance.codVendaAnimal]);
  writeNotNull('codComprador', _$SortOrderEnumMap[instance.codComprador]);
  writeNotNull(
      'valorTotalAnimal', _$SortOrderEnumMap[instance.valorTotalAnimal]);
  return val;
}

VendaleiteCountOrderByAggregateInput
    _$VendaleiteCountOrderByAggregateInputFromJson(Map<String, dynamic> json) =>
        VendaleiteCountOrderByAggregateInput(
          codVendaLeite:
              $enumDecodeNullable(_$SortOrderEnumMap, json['codVendaLeite']),
          codComprador:
              $enumDecodeNullable(_$SortOrderEnumMap, json['codComprador']),
          dataVendaLeite:
              $enumDecodeNullable(_$SortOrderEnumMap, json['dataVendaLeite']),
          quantidadeLeite:
              $enumDecodeNullable(_$SortOrderEnumMap, json['quantidadeLeite']),
          valorTotalLeite:
              $enumDecodeNullable(_$SortOrderEnumMap, json['valorTotalLeite']),
        );

Map<String, dynamic> _$VendaleiteCountOrderByAggregateInputToJson(
    VendaleiteCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaLeite', _$SortOrderEnumMap[instance.codVendaLeite]);
  writeNotNull('codComprador', _$SortOrderEnumMap[instance.codComprador]);
  writeNotNull('dataVendaLeite', _$SortOrderEnumMap[instance.dataVendaLeite]);
  writeNotNull('quantidadeLeite', _$SortOrderEnumMap[instance.quantidadeLeite]);
  writeNotNull('valorTotalLeite', _$SortOrderEnumMap[instance.valorTotalLeite]);
  return val;
}

VendaleiteAvgOrderByAggregateInput _$VendaleiteAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    VendaleiteAvgOrderByAggregateInput(
      codVendaLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codVendaLeite']),
      codComprador:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codComprador']),
      quantidadeLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['quantidadeLeite']),
      valorTotalLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['valorTotalLeite']),
    );

Map<String, dynamic> _$VendaleiteAvgOrderByAggregateInputToJson(
    VendaleiteAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaLeite', _$SortOrderEnumMap[instance.codVendaLeite]);
  writeNotNull('codComprador', _$SortOrderEnumMap[instance.codComprador]);
  writeNotNull('quantidadeLeite', _$SortOrderEnumMap[instance.quantidadeLeite]);
  writeNotNull('valorTotalLeite', _$SortOrderEnumMap[instance.valorTotalLeite]);
  return val;
}

VendaleiteMaxOrderByAggregateInput _$VendaleiteMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    VendaleiteMaxOrderByAggregateInput(
      codVendaLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codVendaLeite']),
      codComprador:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codComprador']),
      dataVendaLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['dataVendaLeite']),
      quantidadeLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['quantidadeLeite']),
      valorTotalLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['valorTotalLeite']),
    );

Map<String, dynamic> _$VendaleiteMaxOrderByAggregateInputToJson(
    VendaleiteMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaLeite', _$SortOrderEnumMap[instance.codVendaLeite]);
  writeNotNull('codComprador', _$SortOrderEnumMap[instance.codComprador]);
  writeNotNull('dataVendaLeite', _$SortOrderEnumMap[instance.dataVendaLeite]);
  writeNotNull('quantidadeLeite', _$SortOrderEnumMap[instance.quantidadeLeite]);
  writeNotNull('valorTotalLeite', _$SortOrderEnumMap[instance.valorTotalLeite]);
  return val;
}

VendaleiteMinOrderByAggregateInput _$VendaleiteMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    VendaleiteMinOrderByAggregateInput(
      codVendaLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codVendaLeite']),
      codComprador:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codComprador']),
      dataVendaLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['dataVendaLeite']),
      quantidadeLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['quantidadeLeite']),
      valorTotalLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['valorTotalLeite']),
    );

Map<String, dynamic> _$VendaleiteMinOrderByAggregateInputToJson(
    VendaleiteMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaLeite', _$SortOrderEnumMap[instance.codVendaLeite]);
  writeNotNull('codComprador', _$SortOrderEnumMap[instance.codComprador]);
  writeNotNull('dataVendaLeite', _$SortOrderEnumMap[instance.dataVendaLeite]);
  writeNotNull('quantidadeLeite', _$SortOrderEnumMap[instance.quantidadeLeite]);
  writeNotNull('valorTotalLeite', _$SortOrderEnumMap[instance.valorTotalLeite]);
  return val;
}

VendaleiteSumOrderByAggregateInput _$VendaleiteSumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    VendaleiteSumOrderByAggregateInput(
      codVendaLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codVendaLeite']),
      codComprador:
          $enumDecodeNullable(_$SortOrderEnumMap, json['codComprador']),
      quantidadeLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['quantidadeLeite']),
      valorTotalLeite:
          $enumDecodeNullable(_$SortOrderEnumMap, json['valorTotalLeite']),
    );

Map<String, dynamic> _$VendaleiteSumOrderByAggregateInputToJson(
    VendaleiteSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaLeite', _$SortOrderEnumMap[instance.codVendaLeite]);
  writeNotNull('codComprador', _$SortOrderEnumMap[instance.codComprador]);
  writeNotNull('quantidadeLeite', _$SortOrderEnumMap[instance.quantidadeLeite]);
  writeNotNull('valorTotalLeite', _$SortOrderEnumMap[instance.valorTotalLeite]);
  return val;
}

CategoriaCreateNestedOneWithoutAnimalInput
    _$CategoriaCreateNestedOneWithoutAnimalInputFromJson(
            Map<String, dynamic> json) =>
        CategoriaCreateNestedOneWithoutAnimalInput(
          create: json['create'] == null
              ? null
              : CategoriaCreateWithoutAnimalInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : CategoriaCreateOrConnectWithoutAnimalInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : CategoriaWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CategoriaCreateNestedOneWithoutAnimalInputToJson(
    CategoriaCreateNestedOneWithoutAnimalInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  return val;
}

ProdleiteCreateNestedOneWithoutAnimalInput
    _$ProdleiteCreateNestedOneWithoutAnimalInputFromJson(
            Map<String, dynamic> json) =>
        ProdleiteCreateNestedOneWithoutAnimalInput(
          create: json['create'] == null
              ? null
              : ProdleiteCreateWithoutAnimalInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : ProdleiteCreateOrConnectWithoutAnimalInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : ProdleiteWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ProdleiteCreateNestedOneWithoutAnimalInputToJson(
    ProdleiteCreateNestedOneWithoutAnimalInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  return val;
}

ItensvendaCreateNestedManyWithoutAnimalInput
    _$ItensvendaCreateNestedManyWithoutAnimalInputFromJson(
            Map<String, dynamic> json) =>
        ItensvendaCreateNestedManyWithoutAnimalInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              ItensvendaCreateWithoutAnimalInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => ItensvendaCreateOrConnectWithoutAnimalInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : ItensvendaCreateManyAnimalInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              ItensvendaWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$ItensvendaCreateNestedManyWithoutAnimalInputToJson(
    ItensvendaCreateNestedManyWithoutAnimalInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

ItensvendaUncheckedCreateNestedManyWithoutAnimalInput
    _$ItensvendaUncheckedCreateNestedManyWithoutAnimalInputFromJson(
            Map<String, dynamic> json) =>
        ItensvendaUncheckedCreateNestedManyWithoutAnimalInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              ItensvendaCreateWithoutAnimalInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => ItensvendaCreateOrConnectWithoutAnimalInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : ItensvendaCreateManyAnimalInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              ItensvendaWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$ItensvendaUncheckedCreateNestedManyWithoutAnimalInputToJson(
        ItensvendaUncheckedCreateNestedManyWithoutAnimalInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

IntFieldUpdateOperationsInput _$IntFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    IntFieldUpdateOperationsInput(
      set: json['set'] as int?,
      increment: json['increment'] as int?,
      decrement: json['decrement'] as int?,
      multiply: json['multiply'] as int?,
      divide: json['divide'] as int?,
    );

Map<String, dynamic> _$IntFieldUpdateOperationsInputToJson(
    IntFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  writeNotNull('increment', instance.increment);
  writeNotNull('decrement', instance.decrement);
  writeNotNull('multiply', instance.multiply);
  writeNotNull('divide', instance.divide);
  return val;
}

StringFieldUpdateOperationsInput _$StringFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    StringFieldUpdateOperationsInput(
      set: json['set'] as String?,
    );

Map<String, dynamic> _$StringFieldUpdateOperationsInputToJson(
    StringFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  return val;
}

DateTimeFieldUpdateOperationsInput _$DateTimeFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    DateTimeFieldUpdateOperationsInput(
      set: _$JsonConverterFromJson<String, DateTime>(
          json['set'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$DateTimeFieldUpdateOperationsInputToJson(
    DateTimeFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'set',
      _$JsonConverterToJson<String, DateTime>(
          instance.set, const DateTimeJsonConverter().toJson));
  return val;
}

NullableFloatFieldUpdateOperationsInput
    _$NullableFloatFieldUpdateOperationsInputFromJson(
            Map<String, dynamic> json) =>
        NullableFloatFieldUpdateOperationsInput(
          set: (json['set'] as num?)?.toDouble(),
          increment: (json['increment'] as num?)?.toDouble(),
          decrement: (json['decrement'] as num?)?.toDouble(),
          multiply: (json['multiply'] as num?)?.toDouble(),
          divide: (json['divide'] as num?)?.toDouble(),
        );

Map<String, dynamic> _$NullableFloatFieldUpdateOperationsInputToJson(
    NullableFloatFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  writeNotNull('increment', instance.increment);
  writeNotNull('decrement', instance.decrement);
  writeNotNull('multiply', instance.multiply);
  writeNotNull('divide', instance.divide);
  return val;
}

CategoriaUpdateOneRequiredWithoutAnimalNestedInput
    _$CategoriaUpdateOneRequiredWithoutAnimalNestedInputFromJson(
            Map<String, dynamic> json) =>
        CategoriaUpdateOneRequiredWithoutAnimalNestedInput(
          create: json['create'] == null
              ? null
              : CategoriaCreateWithoutAnimalInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : CategoriaCreateOrConnectWithoutAnimalInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          upsert: json['upsert'] == null
              ? null
              : CategoriaUpsertWithoutAnimalInput.fromJson(
                  json['upsert'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : CategoriaWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
          update: json['update'] == null
              ? null
              : CategoriaUpdateWithoutAnimalInput.fromJson(
                  json['update'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CategoriaUpdateOneRequiredWithoutAnimalNestedInputToJson(
    CategoriaUpdateOneRequiredWithoutAnimalNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('upsert', instance.upsert?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  writeNotNull('update', instance.update?.toJson());
  return val;
}

ProdleiteUpdateOneRequiredWithoutAnimalNestedInput
    _$ProdleiteUpdateOneRequiredWithoutAnimalNestedInputFromJson(
            Map<String, dynamic> json) =>
        ProdleiteUpdateOneRequiredWithoutAnimalNestedInput(
          create: json['create'] == null
              ? null
              : ProdleiteCreateWithoutAnimalInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : ProdleiteCreateOrConnectWithoutAnimalInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          upsert: json['upsert'] == null
              ? null
              : ProdleiteUpsertWithoutAnimalInput.fromJson(
                  json['upsert'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : ProdleiteWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
          update: json['update'] == null
              ? null
              : ProdleiteUpdateWithoutAnimalInput.fromJson(
                  json['update'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ProdleiteUpdateOneRequiredWithoutAnimalNestedInputToJson(
    ProdleiteUpdateOneRequiredWithoutAnimalNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('upsert', instance.upsert?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  writeNotNull('update', instance.update?.toJson());
  return val;
}

ItensvendaUpdateManyWithoutAnimalNestedInput
    _$ItensvendaUpdateManyWithoutAnimalNestedInputFromJson(
            Map<String, dynamic> json) =>
        ItensvendaUpdateManyWithoutAnimalNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              ItensvendaCreateWithoutAnimalInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => ItensvendaCreateOrConnectWithoutAnimalInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              ItensvendaUpsertWithWhereUniqueWithoutAnimalInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : ItensvendaCreateManyAnimalInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              ItensvendaWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              ItensvendaWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              ItensvendaWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              ItensvendaWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              ItensvendaUpdateWithWhereUniqueWithoutAnimalInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              ItensvendaUpdateManyWithWhereWithoutAnimalInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              ItensvendaScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$ItensvendaUpdateManyWithoutAnimalNestedInputToJson(
    ItensvendaUpdateManyWithoutAnimalNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

ItensvendaUncheckedUpdateManyWithoutAnimalNestedInput
    _$ItensvendaUncheckedUpdateManyWithoutAnimalNestedInputFromJson(
            Map<String, dynamic> json) =>
        ItensvendaUncheckedUpdateManyWithoutAnimalNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              ItensvendaCreateWithoutAnimalInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => ItensvendaCreateOrConnectWithoutAnimalInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              ItensvendaUpsertWithWhereUniqueWithoutAnimalInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : ItensvendaCreateManyAnimalInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              ItensvendaWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              ItensvendaWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              ItensvendaWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              ItensvendaWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              ItensvendaUpdateWithWhereUniqueWithoutAnimalInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              ItensvendaUpdateManyWithWhereWithoutAnimalInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              ItensvendaScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$ItensvendaUncheckedUpdateManyWithoutAnimalNestedInputToJson(
        ItensvendaUncheckedUpdateManyWithoutAnimalNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

AnimalCreateNestedManyWithoutCategoriaInput
    _$AnimalCreateNestedManyWithoutCategoriaInputFromJson(
            Map<String, dynamic> json) =>
        AnimalCreateNestedManyWithoutCategoriaInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              AnimalCreateWithoutCategoriaInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => AnimalCreateOrConnectWithoutCategoriaInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : AnimalCreateManyCategoriaInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              AnimalWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$AnimalCreateNestedManyWithoutCategoriaInputToJson(
    AnimalCreateNestedManyWithoutCategoriaInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

AnimalUncheckedCreateNestedManyWithoutCategoriaInput
    _$AnimalUncheckedCreateNestedManyWithoutCategoriaInputFromJson(
            Map<String, dynamic> json) =>
        AnimalUncheckedCreateNestedManyWithoutCategoriaInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              AnimalCreateWithoutCategoriaInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => AnimalCreateOrConnectWithoutCategoriaInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : AnimalCreateManyCategoriaInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              AnimalWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$AnimalUncheckedCreateNestedManyWithoutCategoriaInputToJson(
        AnimalUncheckedCreateNestedManyWithoutCategoriaInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

AnimalUpdateManyWithoutCategoriaNestedInput
    _$AnimalUpdateManyWithoutCategoriaNestedInputFromJson(
            Map<String, dynamic> json) =>
        AnimalUpdateManyWithoutCategoriaNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              AnimalCreateWithoutCategoriaInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => AnimalCreateOrConnectWithoutCategoriaInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              AnimalUpsertWithWhereUniqueWithoutCategoriaInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : AnimalCreateManyCategoriaInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              AnimalWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              AnimalWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              AnimalWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              AnimalWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              AnimalUpdateWithWhereUniqueWithoutCategoriaInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              AnimalUpdateManyWithWhereWithoutCategoriaInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              AnimalScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$AnimalUpdateManyWithoutCategoriaNestedInputToJson(
    AnimalUpdateManyWithoutCategoriaNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

AnimalUncheckedUpdateManyWithoutCategoriaNestedInput
    _$AnimalUncheckedUpdateManyWithoutCategoriaNestedInputFromJson(
            Map<String, dynamic> json) =>
        AnimalUncheckedUpdateManyWithoutCategoriaNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              AnimalCreateWithoutCategoriaInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => AnimalCreateOrConnectWithoutCategoriaInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              AnimalUpsertWithWhereUniqueWithoutCategoriaInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : AnimalCreateManyCategoriaInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              AnimalWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              AnimalWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              AnimalWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              AnimalWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              AnimalUpdateWithWhereUniqueWithoutCategoriaInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              AnimalUpdateManyWithWhereWithoutCategoriaInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              AnimalScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$AnimalUncheckedUpdateManyWithoutCategoriaNestedInputToJson(
        AnimalUncheckedUpdateManyWithoutCategoriaNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

VendaanimalCreateNestedManyWithoutCompradorInput
    _$VendaanimalCreateNestedManyWithoutCompradorInputFromJson(
            Map<String, dynamic> json) =>
        VendaanimalCreateNestedManyWithoutCompradorInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              VendaanimalCreateWithoutCompradorInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => VendaanimalCreateOrConnectWithoutCompradorInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : VendaanimalCreateManyCompradorInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              VendaanimalWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$VendaanimalCreateNestedManyWithoutCompradorInputToJson(
    VendaanimalCreateNestedManyWithoutCompradorInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

VendaleiteCreateNestedManyWithoutCompradorInput
    _$VendaleiteCreateNestedManyWithoutCompradorInputFromJson(
            Map<String, dynamic> json) =>
        VendaleiteCreateNestedManyWithoutCompradorInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              VendaleiteCreateWithoutCompradorInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => VendaleiteCreateOrConnectWithoutCompradorInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : VendaleiteCreateManyCompradorInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              VendaleiteWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$VendaleiteCreateNestedManyWithoutCompradorInputToJson(
    VendaleiteCreateNestedManyWithoutCompradorInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

VendaanimalUncheckedCreateNestedManyWithoutCompradorInput
    _$VendaanimalUncheckedCreateNestedManyWithoutCompradorInputFromJson(
            Map<String, dynamic> json) =>
        VendaanimalUncheckedCreateNestedManyWithoutCompradorInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              VendaanimalCreateWithoutCompradorInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => VendaanimalCreateOrConnectWithoutCompradorInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : VendaanimalCreateManyCompradorInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              VendaanimalWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$VendaanimalUncheckedCreateNestedManyWithoutCompradorInputToJson(
        VendaanimalUncheckedCreateNestedManyWithoutCompradorInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

VendaleiteUncheckedCreateNestedManyWithoutCompradorInput
    _$VendaleiteUncheckedCreateNestedManyWithoutCompradorInputFromJson(
            Map<String, dynamic> json) =>
        VendaleiteUncheckedCreateNestedManyWithoutCompradorInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              VendaleiteCreateWithoutCompradorInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => VendaleiteCreateOrConnectWithoutCompradorInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : VendaleiteCreateManyCompradorInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              VendaleiteWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$VendaleiteUncheckedCreateNestedManyWithoutCompradorInputToJson(
        VendaleiteUncheckedCreateNestedManyWithoutCompradorInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

VendaanimalUpdateManyWithoutCompradorNestedInput
    _$VendaanimalUpdateManyWithoutCompradorNestedInputFromJson(
            Map<String, dynamic> json) =>
        VendaanimalUpdateManyWithoutCompradorNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              VendaanimalCreateWithoutCompradorInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => VendaanimalCreateOrConnectWithoutCompradorInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              VendaanimalUpsertWithWhereUniqueWithoutCompradorInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : VendaanimalCreateManyCompradorInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              VendaanimalWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              VendaanimalWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              VendaanimalWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              VendaanimalWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              VendaanimalUpdateWithWhereUniqueWithoutCompradorInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              VendaanimalUpdateManyWithWhereWithoutCompradorInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              VendaanimalScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$VendaanimalUpdateManyWithoutCompradorNestedInputToJson(
    VendaanimalUpdateManyWithoutCompradorNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

VendaleiteUpdateManyWithoutCompradorNestedInput
    _$VendaleiteUpdateManyWithoutCompradorNestedInputFromJson(
            Map<String, dynamic> json) =>
        VendaleiteUpdateManyWithoutCompradorNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              VendaleiteCreateWithoutCompradorInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => VendaleiteCreateOrConnectWithoutCompradorInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              VendaleiteUpsertWithWhereUniqueWithoutCompradorInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : VendaleiteCreateManyCompradorInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              VendaleiteWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              VendaleiteWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              VendaleiteWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              VendaleiteWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              VendaleiteUpdateWithWhereUniqueWithoutCompradorInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              VendaleiteUpdateManyWithWhereWithoutCompradorInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              VendaleiteScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$VendaleiteUpdateManyWithoutCompradorNestedInputToJson(
    VendaleiteUpdateManyWithoutCompradorNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

VendaanimalUncheckedUpdateManyWithoutCompradorNestedInput
    _$VendaanimalUncheckedUpdateManyWithoutCompradorNestedInputFromJson(
            Map<String, dynamic> json) =>
        VendaanimalUncheckedUpdateManyWithoutCompradorNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              VendaanimalCreateWithoutCompradorInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => VendaanimalCreateOrConnectWithoutCompradorInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              VendaanimalUpsertWithWhereUniqueWithoutCompradorInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : VendaanimalCreateManyCompradorInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              VendaanimalWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              VendaanimalWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              VendaanimalWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              VendaanimalWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              VendaanimalUpdateWithWhereUniqueWithoutCompradorInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              VendaanimalUpdateManyWithWhereWithoutCompradorInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              VendaanimalScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$VendaanimalUncheckedUpdateManyWithoutCompradorNestedInputToJson(
        VendaanimalUncheckedUpdateManyWithoutCompradorNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

VendaleiteUncheckedUpdateManyWithoutCompradorNestedInput
    _$VendaleiteUncheckedUpdateManyWithoutCompradorNestedInputFromJson(
            Map<String, dynamic> json) =>
        VendaleiteUncheckedUpdateManyWithoutCompradorNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              VendaleiteCreateWithoutCompradorInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => VendaleiteCreateOrConnectWithoutCompradorInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              VendaleiteUpsertWithWhereUniqueWithoutCompradorInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : VendaleiteCreateManyCompradorInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              VendaleiteWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              VendaleiteWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              VendaleiteWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              VendaleiteWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              VendaleiteUpdateWithWhereUniqueWithoutCompradorInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              VendaleiteUpdateManyWithWhereWithoutCompradorInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              VendaleiteScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$VendaleiteUncheckedUpdateManyWithoutCompradorNestedInputToJson(
        VendaleiteUncheckedUpdateManyWithoutCompradorNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

AnimalCreateNestedOneWithoutItensvendaInput
    _$AnimalCreateNestedOneWithoutItensvendaInputFromJson(
            Map<String, dynamic> json) =>
        AnimalCreateNestedOneWithoutItensvendaInput(
          create: json['create'] == null
              ? null
              : AnimalCreateWithoutItensvendaInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : AnimalCreateOrConnectWithoutItensvendaInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : AnimalWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AnimalCreateNestedOneWithoutItensvendaInputToJson(
    AnimalCreateNestedOneWithoutItensvendaInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  return val;
}

VendaanimalCreateNestedOneWithoutItensvendaInput
    _$VendaanimalCreateNestedOneWithoutItensvendaInputFromJson(
            Map<String, dynamic> json) =>
        VendaanimalCreateNestedOneWithoutItensvendaInput(
          create: json['create'] == null
              ? null
              : VendaanimalCreateWithoutItensvendaInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : VendaanimalCreateOrConnectWithoutItensvendaInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : VendaanimalWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$VendaanimalCreateNestedOneWithoutItensvendaInputToJson(
    VendaanimalCreateNestedOneWithoutItensvendaInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  return val;
}

FloatFieldUpdateOperationsInput _$FloatFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    FloatFieldUpdateOperationsInput(
      set: (json['set'] as num?)?.toDouble(),
      increment: (json['increment'] as num?)?.toDouble(),
      decrement: (json['decrement'] as num?)?.toDouble(),
      multiply: (json['multiply'] as num?)?.toDouble(),
      divide: (json['divide'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$FloatFieldUpdateOperationsInputToJson(
    FloatFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  writeNotNull('increment', instance.increment);
  writeNotNull('decrement', instance.decrement);
  writeNotNull('multiply', instance.multiply);
  writeNotNull('divide', instance.divide);
  return val;
}

AnimalUpdateOneRequiredWithoutItensvendaNestedInput
    _$AnimalUpdateOneRequiredWithoutItensvendaNestedInputFromJson(
            Map<String, dynamic> json) =>
        AnimalUpdateOneRequiredWithoutItensvendaNestedInput(
          create: json['create'] == null
              ? null
              : AnimalCreateWithoutItensvendaInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : AnimalCreateOrConnectWithoutItensvendaInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          upsert: json['upsert'] == null
              ? null
              : AnimalUpsertWithoutItensvendaInput.fromJson(
                  json['upsert'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : AnimalWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
          update: json['update'] == null
              ? null
              : AnimalUpdateWithoutItensvendaInput.fromJson(
                  json['update'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$AnimalUpdateOneRequiredWithoutItensvendaNestedInputToJson(
        AnimalUpdateOneRequiredWithoutItensvendaNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('upsert', instance.upsert?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  writeNotNull('update', instance.update?.toJson());
  return val;
}

VendaanimalUpdateOneRequiredWithoutItensvendaNestedInput
    _$VendaanimalUpdateOneRequiredWithoutItensvendaNestedInputFromJson(
            Map<String, dynamic> json) =>
        VendaanimalUpdateOneRequiredWithoutItensvendaNestedInput(
          create: json['create'] == null
              ? null
              : VendaanimalCreateWithoutItensvendaInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : VendaanimalCreateOrConnectWithoutItensvendaInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          upsert: json['upsert'] == null
              ? null
              : VendaanimalUpsertWithoutItensvendaInput.fromJson(
                  json['upsert'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : VendaanimalWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
          update: json['update'] == null
              ? null
              : VendaanimalUpdateWithoutItensvendaInput.fromJson(
                  json['update'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$VendaanimalUpdateOneRequiredWithoutItensvendaNestedInputToJson(
        VendaanimalUpdateOneRequiredWithoutItensvendaNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('upsert', instance.upsert?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  writeNotNull('update', instance.update?.toJson());
  return val;
}

AnimalCreateNestedManyWithoutProdleiteInput
    _$AnimalCreateNestedManyWithoutProdleiteInputFromJson(
            Map<String, dynamic> json) =>
        AnimalCreateNestedManyWithoutProdleiteInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              AnimalCreateWithoutProdleiteInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => AnimalCreateOrConnectWithoutProdleiteInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : AnimalCreateManyProdleiteInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              AnimalWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$AnimalCreateNestedManyWithoutProdleiteInputToJson(
    AnimalCreateNestedManyWithoutProdleiteInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

AnimalUncheckedCreateNestedManyWithoutProdleiteInput
    _$AnimalUncheckedCreateNestedManyWithoutProdleiteInputFromJson(
            Map<String, dynamic> json) =>
        AnimalUncheckedCreateNestedManyWithoutProdleiteInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              AnimalCreateWithoutProdleiteInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => AnimalCreateOrConnectWithoutProdleiteInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : AnimalCreateManyProdleiteInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              AnimalWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$AnimalUncheckedCreateNestedManyWithoutProdleiteInputToJson(
        AnimalUncheckedCreateNestedManyWithoutProdleiteInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

AnimalUpdateManyWithoutProdleiteNestedInput
    _$AnimalUpdateManyWithoutProdleiteNestedInputFromJson(
            Map<String, dynamic> json) =>
        AnimalUpdateManyWithoutProdleiteNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              AnimalCreateWithoutProdleiteInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => AnimalCreateOrConnectWithoutProdleiteInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              AnimalUpsertWithWhereUniqueWithoutProdleiteInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : AnimalCreateManyProdleiteInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              AnimalWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              AnimalWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              AnimalWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              AnimalWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              AnimalUpdateWithWhereUniqueWithoutProdleiteInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              AnimalUpdateManyWithWhereWithoutProdleiteInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              AnimalScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$AnimalUpdateManyWithoutProdleiteNestedInputToJson(
    AnimalUpdateManyWithoutProdleiteNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

AnimalUncheckedUpdateManyWithoutProdleiteNestedInput
    _$AnimalUncheckedUpdateManyWithoutProdleiteNestedInputFromJson(
            Map<String, dynamic> json) =>
        AnimalUncheckedUpdateManyWithoutProdleiteNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              AnimalCreateWithoutProdleiteInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => AnimalCreateOrConnectWithoutProdleiteInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              AnimalUpsertWithWhereUniqueWithoutProdleiteInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : AnimalCreateManyProdleiteInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              AnimalWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              AnimalWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              AnimalWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              AnimalWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              AnimalUpdateWithWhereUniqueWithoutProdleiteInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              AnimalUpdateManyWithWhereWithoutProdleiteInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              AnimalScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$AnimalUncheckedUpdateManyWithoutProdleiteNestedInputToJson(
        AnimalUncheckedUpdateManyWithoutProdleiteNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

ItensvendaCreateNestedManyWithoutVendaanimalInput
    _$ItensvendaCreateNestedManyWithoutVendaanimalInputFromJson(
            Map<String, dynamic> json) =>
        ItensvendaCreateNestedManyWithoutVendaanimalInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              ItensvendaCreateWithoutVendaanimalInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => ItensvendaCreateOrConnectWithoutVendaanimalInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : ItensvendaCreateManyVendaanimalInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              ItensvendaWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$ItensvendaCreateNestedManyWithoutVendaanimalInputToJson(
    ItensvendaCreateNestedManyWithoutVendaanimalInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

CompradorCreateNestedOneWithoutVendaanimalInput
    _$CompradorCreateNestedOneWithoutVendaanimalInputFromJson(
            Map<String, dynamic> json) =>
        CompradorCreateNestedOneWithoutVendaanimalInput(
          create: json['create'] == null
              ? null
              : CompradorCreateWithoutVendaanimalInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : CompradorCreateOrConnectWithoutVendaanimalInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : CompradorWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CompradorCreateNestedOneWithoutVendaanimalInputToJson(
    CompradorCreateNestedOneWithoutVendaanimalInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  return val;
}

ItensvendaUncheckedCreateNestedManyWithoutVendaanimalInput
    _$ItensvendaUncheckedCreateNestedManyWithoutVendaanimalInputFromJson(
            Map<String, dynamic> json) =>
        ItensvendaUncheckedCreateNestedManyWithoutVendaanimalInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              ItensvendaCreateWithoutVendaanimalInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => ItensvendaCreateOrConnectWithoutVendaanimalInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : ItensvendaCreateManyVendaanimalInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              ItensvendaWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$ItensvendaUncheckedCreateNestedManyWithoutVendaanimalInputToJson(
        ItensvendaUncheckedCreateNestedManyWithoutVendaanimalInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

ItensvendaUpdateManyWithoutVendaanimalNestedInput
    _$ItensvendaUpdateManyWithoutVendaanimalNestedInputFromJson(
            Map<String, dynamic> json) =>
        ItensvendaUpdateManyWithoutVendaanimalNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              ItensvendaCreateWithoutVendaanimalInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => ItensvendaCreateOrConnectWithoutVendaanimalInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              ItensvendaUpsertWithWhereUniqueWithoutVendaanimalInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : ItensvendaCreateManyVendaanimalInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              ItensvendaWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              ItensvendaWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              ItensvendaWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              ItensvendaWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              ItensvendaUpdateWithWhereUniqueWithoutVendaanimalInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              ItensvendaUpdateManyWithWhereWithoutVendaanimalInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              ItensvendaScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$ItensvendaUpdateManyWithoutVendaanimalNestedInputToJson(
    ItensvendaUpdateManyWithoutVendaanimalNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

CompradorUpdateOneRequiredWithoutVendaanimalNestedInput
    _$CompradorUpdateOneRequiredWithoutVendaanimalNestedInputFromJson(
            Map<String, dynamic> json) =>
        CompradorUpdateOneRequiredWithoutVendaanimalNestedInput(
          create: json['create'] == null
              ? null
              : CompradorCreateWithoutVendaanimalInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : CompradorCreateOrConnectWithoutVendaanimalInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          upsert: json['upsert'] == null
              ? null
              : CompradorUpsertWithoutVendaanimalInput.fromJson(
                  json['upsert'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : CompradorWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
          update: json['update'] == null
              ? null
              : CompradorUpdateWithoutVendaanimalInput.fromJson(
                  json['update'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$CompradorUpdateOneRequiredWithoutVendaanimalNestedInputToJson(
        CompradorUpdateOneRequiredWithoutVendaanimalNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('upsert', instance.upsert?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  writeNotNull('update', instance.update?.toJson());
  return val;
}

ItensvendaUncheckedUpdateManyWithoutVendaanimalNestedInput
    _$ItensvendaUncheckedUpdateManyWithoutVendaanimalNestedInputFromJson(
            Map<String, dynamic> json) =>
        ItensvendaUncheckedUpdateManyWithoutVendaanimalNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              ItensvendaCreateWithoutVendaanimalInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => ItensvendaCreateOrConnectWithoutVendaanimalInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              ItensvendaUpsertWithWhereUniqueWithoutVendaanimalInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : ItensvendaCreateManyVendaanimalInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              ItensvendaWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              ItensvendaWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              ItensvendaWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              ItensvendaWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              ItensvendaUpdateWithWhereUniqueWithoutVendaanimalInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              ItensvendaUpdateManyWithWhereWithoutVendaanimalInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              ItensvendaScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$ItensvendaUncheckedUpdateManyWithoutVendaanimalNestedInputToJson(
        ItensvendaUncheckedUpdateManyWithoutVendaanimalNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

CompradorCreateNestedOneWithoutVendaleiteInput
    _$CompradorCreateNestedOneWithoutVendaleiteInputFromJson(
            Map<String, dynamic> json) =>
        CompradorCreateNestedOneWithoutVendaleiteInput(
          create: json['create'] == null
              ? null
              : CompradorCreateWithoutVendaleiteInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : CompradorCreateOrConnectWithoutVendaleiteInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : CompradorWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CompradorCreateNestedOneWithoutVendaleiteInputToJson(
    CompradorCreateNestedOneWithoutVendaleiteInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  return val;
}

CompradorUpdateOneRequiredWithoutVendaleiteNestedInput
    _$CompradorUpdateOneRequiredWithoutVendaleiteNestedInputFromJson(
            Map<String, dynamic> json) =>
        CompradorUpdateOneRequiredWithoutVendaleiteNestedInput(
          create: json['create'] == null
              ? null
              : CompradorCreateWithoutVendaleiteInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : CompradorCreateOrConnectWithoutVendaleiteInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          upsert: json['upsert'] == null
              ? null
              : CompradorUpsertWithoutVendaleiteInput.fromJson(
                  json['upsert'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : CompradorWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
          update: json['update'] == null
              ? null
              : CompradorUpdateWithoutVendaleiteInput.fromJson(
                  json['update'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$CompradorUpdateOneRequiredWithoutVendaleiteNestedInputToJson(
        CompradorUpdateOneRequiredWithoutVendaleiteNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('upsert', instance.upsert?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  writeNotNull('update', instance.update?.toJson());
  return val;
}

NestedIntFilter _$NestedIntFilterFromJson(Map<String, dynamic> json) =>
    NestedIntFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntFilterToJson(NestedIntFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedStringFilter _$NestedStringFilterFromJson(Map<String, dynamic> json) =>
    NestedStringFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringFilterToJson(NestedStringFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedDateTimeFilter _$NestedDateTimeFilterFromJson(
        Map<String, dynamic> json) =>
    NestedDateTimeFilter(
      equals: _$JsonConverterFromJson<String, DateTime>(
          json['equals'], const DateTimeJsonConverter().fromJson),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      lt: _$JsonConverterFromJson<String, DateTime>(
          json['lt'], const DateTimeJsonConverter().fromJson),
      lte: _$JsonConverterFromJson<String, DateTime>(
          json['lte'], const DateTimeJsonConverter().fromJson),
      gt: _$JsonConverterFromJson<String, DateTime>(
          json['gt'], const DateTimeJsonConverter().fromJson),
      gte: _$JsonConverterFromJson<String, DateTime>(
          json['gte'], const DateTimeJsonConverter().fromJson),
      not: json['not'] == null
          ? null
          : NestedDateTimeFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedDateTimeFilterToJson(
    NestedDateTimeFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'equals',
      _$JsonConverterToJson<String, DateTime>(
          instance.equals, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'in', instance.$in?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull('notIn',
      instance.notIn?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull(
      'lt',
      _$JsonConverterToJson<String, DateTime>(
          instance.lt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'lte',
      _$JsonConverterToJson<String, DateTime>(
          instance.lte, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gt',
      _$JsonConverterToJson<String, DateTime>(
          instance.gt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gte',
      _$JsonConverterToJson<String, DateTime>(
          instance.gte, const DateTimeJsonConverter().toJson));
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedFloatNullableFilter _$NestedFloatNullableFilterFromJson(
        Map<String, dynamic> json) =>
    NestedFloatNullableFilter(
      equals: (json['equals'] as num?)?.toDouble(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      lt: (json['lt'] as num?)?.toDouble(),
      lte: (json['lte'] as num?)?.toDouble(),
      gt: (json['gt'] as num?)?.toDouble(),
      gte: (json['gte'] as num?)?.toDouble(),
      not: json['not'] == null
          ? null
          : NestedFloatNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedFloatNullableFilterToJson(
    NestedFloatNullableFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedIntWithAggregatesFilter _$NestedIntWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedIntWithAggregatesFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedIntFilter.fromJson(json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedIntFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedIntFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntWithAggregatesFilterToJson(
    NestedIntWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedFloatFilter _$NestedFloatFilterFromJson(Map<String, dynamic> json) =>
    NestedFloatFilter(
      equals: (json['equals'] as num?)?.toDouble(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      lt: (json['lt'] as num?)?.toDouble(),
      lte: (json['lte'] as num?)?.toDouble(),
      gt: (json['gt'] as num?)?.toDouble(),
      gte: (json['gte'] as num?)?.toDouble(),
      not: json['not'] == null
          ? null
          : NestedFloatFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedFloatFilterToJson(NestedFloatFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedStringWithAggregatesFilter _$NestedStringWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedStringWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringWithAggregatesFilterToJson(
    NestedStringWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedDateTimeWithAggregatesFilter _$NestedDateTimeWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedDateTimeWithAggregatesFilter(
      equals: _$JsonConverterFromJson<String, DateTime>(
          json['equals'], const DateTimeJsonConverter().fromJson),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      lt: _$JsonConverterFromJson<String, DateTime>(
          json['lt'], const DateTimeJsonConverter().fromJson),
      lte: _$JsonConverterFromJson<String, DateTime>(
          json['lte'], const DateTimeJsonConverter().fromJson),
      gt: _$JsonConverterFromJson<String, DateTime>(
          json['gt'], const DateTimeJsonConverter().fromJson),
      gte: _$JsonConverterFromJson<String, DateTime>(
          json['gte'], const DateTimeJsonConverter().fromJson),
      not: json['not'] == null
          ? null
          : NestedDateTimeWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedDateTimeFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedDateTimeFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedDateTimeWithAggregatesFilterToJson(
    NestedDateTimeWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'equals',
      _$JsonConverterToJson<String, DateTime>(
          instance.equals, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'in', instance.$in?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull('notIn',
      instance.notIn?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull(
      'lt',
      _$JsonConverterToJson<String, DateTime>(
          instance.lt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'lte',
      _$JsonConverterToJson<String, DateTime>(
          instance.lte, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gt',
      _$JsonConverterToJson<String, DateTime>(
          instance.gt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gte',
      _$JsonConverterToJson<String, DateTime>(
          instance.gte, const DateTimeJsonConverter().toJson));
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedFloatNullableWithAggregatesFilter
    _$NestedFloatNullableWithAggregatesFilterFromJson(
            Map<String, dynamic> json) =>
        NestedFloatNullableWithAggregatesFilter(
          equals: (json['equals'] as num?)?.toDouble(),
          $in:
              (json['in'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
          notIn: (json['notIn'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble()),
          lt: (json['lt'] as num?)?.toDouble(),
          lte: (json['lte'] as num?)?.toDouble(),
          gt: (json['gt'] as num?)?.toDouble(),
          gte: (json['gte'] as num?)?.toDouble(),
          not: json['not'] == null
              ? null
              : NestedFloatNullableWithAggregatesFilter.fromJson(
                  json['not'] as Map<String, dynamic>),
          $count: json['_count'] == null
              ? null
              : NestedIntNullableFilter.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : NestedFloatNullableFilter.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : NestedFloatNullableFilter.fromJson(
                  json['_sum'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : NestedFloatNullableFilter.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : NestedFloatNullableFilter.fromJson(
                  json['_max'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$NestedFloatNullableWithAggregatesFilterToJson(
    NestedFloatNullableWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedIntNullableFilter _$NestedIntNullableFilterFromJson(
        Map<String, dynamic> json) =>
    NestedIntNullableFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntNullableFilterToJson(
    NestedIntNullableFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedFloatWithAggregatesFilter _$NestedFloatWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedFloatWithAggregatesFilter(
      equals: (json['equals'] as num?)?.toDouble(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      lt: (json['lt'] as num?)?.toDouble(),
      lte: (json['lte'] as num?)?.toDouble(),
      gt: (json['gt'] as num?)?.toDouble(),
      gte: (json['gte'] as num?)?.toDouble(),
      not: json['not'] == null
          ? null
          : NestedFloatWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedFloatWithAggregatesFilterToJson(
    NestedFloatWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

CategoriaCreateWithoutAnimalInput _$CategoriaCreateWithoutAnimalInputFromJson(
        Map<String, dynamic> json) =>
    CategoriaCreateWithoutAnimalInput(
      codCategoria: json['codCategoria'] as int,
      tipo: json['tipo'] as String,
    );

Map<String, dynamic> _$CategoriaCreateWithoutAnimalInputToJson(
        CategoriaCreateWithoutAnimalInput instance) =>
    <String, dynamic>{
      'codCategoria': instance.codCategoria,
      'tipo': instance.tipo,
    };

CategoriaUncheckedCreateWithoutAnimalInput
    _$CategoriaUncheckedCreateWithoutAnimalInputFromJson(
            Map<String, dynamic> json) =>
        CategoriaUncheckedCreateWithoutAnimalInput(
          codCategoria: json['codCategoria'] as int,
          tipo: json['tipo'] as String,
        );

Map<String, dynamic> _$CategoriaUncheckedCreateWithoutAnimalInputToJson(
        CategoriaUncheckedCreateWithoutAnimalInput instance) =>
    <String, dynamic>{
      'codCategoria': instance.codCategoria,
      'tipo': instance.tipo,
    };

CategoriaCreateOrConnectWithoutAnimalInput
    _$CategoriaCreateOrConnectWithoutAnimalInputFromJson(
            Map<String, dynamic> json) =>
        CategoriaCreateOrConnectWithoutAnimalInput(
          where: CategoriaWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: CategoriaCreateWithoutAnimalInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CategoriaCreateOrConnectWithoutAnimalInputToJson(
        CategoriaCreateOrConnectWithoutAnimalInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

ProdleiteCreateWithoutAnimalInput _$ProdleiteCreateWithoutAnimalInputFromJson(
        Map<String, dynamic> json) =>
    ProdleiteCreateWithoutAnimalInput(
      codProdLeite: json['codProdLeite'] as int,
      data: const DateTimeJsonConverter().fromJson(json['data'] as String),
      quantidadeLeite: (json['quantidadeLeite'] as num).toDouble(),
    );

Map<String, dynamic> _$ProdleiteCreateWithoutAnimalInputToJson(
        ProdleiteCreateWithoutAnimalInput instance) =>
    <String, dynamic>{
      'codProdLeite': instance.codProdLeite,
      'data': const DateTimeJsonConverter().toJson(instance.data),
      'quantidadeLeite': instance.quantidadeLeite,
    };

ProdleiteUncheckedCreateWithoutAnimalInput
    _$ProdleiteUncheckedCreateWithoutAnimalInputFromJson(
            Map<String, dynamic> json) =>
        ProdleiteUncheckedCreateWithoutAnimalInput(
          codProdLeite: json['codProdLeite'] as int,
          data: const DateTimeJsonConverter().fromJson(json['data'] as String),
          quantidadeLeite: (json['quantidadeLeite'] as num).toDouble(),
        );

Map<String, dynamic> _$ProdleiteUncheckedCreateWithoutAnimalInputToJson(
        ProdleiteUncheckedCreateWithoutAnimalInput instance) =>
    <String, dynamic>{
      'codProdLeite': instance.codProdLeite,
      'data': const DateTimeJsonConverter().toJson(instance.data),
      'quantidadeLeite': instance.quantidadeLeite,
    };

ProdleiteCreateOrConnectWithoutAnimalInput
    _$ProdleiteCreateOrConnectWithoutAnimalInputFromJson(
            Map<String, dynamic> json) =>
        ProdleiteCreateOrConnectWithoutAnimalInput(
          where: ProdleiteWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: ProdleiteCreateWithoutAnimalInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ProdleiteCreateOrConnectWithoutAnimalInputToJson(
        ProdleiteCreateOrConnectWithoutAnimalInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

ItensvendaCreateWithoutAnimalInput _$ItensvendaCreateWithoutAnimalInputFromJson(
        Map<String, dynamic> json) =>
    ItensvendaCreateWithoutAnimalInput(
      codItensVenda: json['codItensVenda'] as int,
      quantidade: json['quantidade'] as int,
      valorUnitario: (json['valorUnitario'] as num).toDouble(),
      vendaanimal: VendaanimalCreateNestedOneWithoutItensvendaInput.fromJson(
          json['vendaanimal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItensvendaCreateWithoutAnimalInputToJson(
        ItensvendaCreateWithoutAnimalInput instance) =>
    <String, dynamic>{
      'codItensVenda': instance.codItensVenda,
      'quantidade': instance.quantidade,
      'valorUnitario': instance.valorUnitario,
      'vendaanimal': instance.vendaanimal.toJson(),
    };

ItensvendaUncheckedCreateWithoutAnimalInput
    _$ItensvendaUncheckedCreateWithoutAnimalInputFromJson(
            Map<String, dynamic> json) =>
        ItensvendaUncheckedCreateWithoutAnimalInput(
          codItensVenda: json['codItensVenda'] as int,
          codVendaAnimal: json['codVendaAnimal'] as int,
          quantidade: json['quantidade'] as int,
          valorUnitario: (json['valorUnitario'] as num).toDouble(),
        );

Map<String, dynamic> _$ItensvendaUncheckedCreateWithoutAnimalInputToJson(
        ItensvendaUncheckedCreateWithoutAnimalInput instance) =>
    <String, dynamic>{
      'codItensVenda': instance.codItensVenda,
      'codVendaAnimal': instance.codVendaAnimal,
      'quantidade': instance.quantidade,
      'valorUnitario': instance.valorUnitario,
    };

ItensvendaCreateOrConnectWithoutAnimalInput
    _$ItensvendaCreateOrConnectWithoutAnimalInputFromJson(
            Map<String, dynamic> json) =>
        ItensvendaCreateOrConnectWithoutAnimalInput(
          where: ItensvendaWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: ItensvendaCreateWithoutAnimalInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ItensvendaCreateOrConnectWithoutAnimalInputToJson(
        ItensvendaCreateOrConnectWithoutAnimalInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

ItensvendaCreateManyAnimalInputEnvelope
    _$ItensvendaCreateManyAnimalInputEnvelopeFromJson(
            Map<String, dynamic> json) =>
        ItensvendaCreateManyAnimalInputEnvelope(
          data: (json['data'] as List<dynamic>).map((e) =>
              ItensvendaCreateManyAnimalInput.fromJson(
                  e as Map<String, dynamic>)),
          skipDuplicates: json['skipDuplicates'] as bool?,
        );

Map<String, dynamic> _$ItensvendaCreateManyAnimalInputEnvelopeToJson(
    ItensvendaCreateManyAnimalInputEnvelope instance) {
  final val = <String, dynamic>{
    'data': instance.data.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('skipDuplicates', instance.skipDuplicates);
  return val;
}

CategoriaUpsertWithoutAnimalInput _$CategoriaUpsertWithoutAnimalInputFromJson(
        Map<String, dynamic> json) =>
    CategoriaUpsertWithoutAnimalInput(
      update: CategoriaUpdateWithoutAnimalInput.fromJson(
          json['update'] as Map<String, dynamic>),
      create: CategoriaCreateWithoutAnimalInput.fromJson(
          json['create'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoriaUpsertWithoutAnimalInputToJson(
        CategoriaUpsertWithoutAnimalInput instance) =>
    <String, dynamic>{
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

CategoriaUpdateWithoutAnimalInput _$CategoriaUpdateWithoutAnimalInputFromJson(
        Map<String, dynamic> json) =>
    CategoriaUpdateWithoutAnimalInput(
      codCategoria: json['codCategoria'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codCategoria'] as Map<String, dynamic>),
      tipo: json['tipo'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['tipo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoriaUpdateWithoutAnimalInputToJson(
    CategoriaUpdateWithoutAnimalInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codCategoria', instance.codCategoria?.toJson());
  writeNotNull('tipo', instance.tipo?.toJson());
  return val;
}

CategoriaUncheckedUpdateWithoutAnimalInput
    _$CategoriaUncheckedUpdateWithoutAnimalInputFromJson(
            Map<String, dynamic> json) =>
        CategoriaUncheckedUpdateWithoutAnimalInput(
          codCategoria: json['codCategoria'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codCategoria'] as Map<String, dynamic>),
          tipo: json['tipo'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['tipo'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CategoriaUncheckedUpdateWithoutAnimalInputToJson(
    CategoriaUncheckedUpdateWithoutAnimalInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codCategoria', instance.codCategoria?.toJson());
  writeNotNull('tipo', instance.tipo?.toJson());
  return val;
}

ProdleiteUpsertWithoutAnimalInput _$ProdleiteUpsertWithoutAnimalInputFromJson(
        Map<String, dynamic> json) =>
    ProdleiteUpsertWithoutAnimalInput(
      update: ProdleiteUpdateWithoutAnimalInput.fromJson(
          json['update'] as Map<String, dynamic>),
      create: ProdleiteCreateWithoutAnimalInput.fromJson(
          json['create'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProdleiteUpsertWithoutAnimalInputToJson(
        ProdleiteUpsertWithoutAnimalInput instance) =>
    <String, dynamic>{
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

ProdleiteUpdateWithoutAnimalInput _$ProdleiteUpdateWithoutAnimalInputFromJson(
        Map<String, dynamic> json) =>
    ProdleiteUpdateWithoutAnimalInput(
      codProdLeite: json['codProdLeite'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codProdLeite'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['data'] as Map<String, dynamic>),
      quantidadeLeite: json['quantidadeLeite'] == null
          ? null
          : FloatFieldUpdateOperationsInput.fromJson(
              json['quantidadeLeite'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProdleiteUpdateWithoutAnimalInputToJson(
    ProdleiteUpdateWithoutAnimalInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codProdLeite', instance.codProdLeite?.toJson());
  writeNotNull('data', instance.data?.toJson());
  writeNotNull('quantidadeLeite', instance.quantidadeLeite?.toJson());
  return val;
}

ProdleiteUncheckedUpdateWithoutAnimalInput
    _$ProdleiteUncheckedUpdateWithoutAnimalInputFromJson(
            Map<String, dynamic> json) =>
        ProdleiteUncheckedUpdateWithoutAnimalInput(
          codProdLeite: json['codProdLeite'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codProdLeite'] as Map<String, dynamic>),
          data: json['data'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['data'] as Map<String, dynamic>),
          quantidadeLeite: json['quantidadeLeite'] == null
              ? null
              : FloatFieldUpdateOperationsInput.fromJson(
                  json['quantidadeLeite'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ProdleiteUncheckedUpdateWithoutAnimalInputToJson(
    ProdleiteUncheckedUpdateWithoutAnimalInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codProdLeite', instance.codProdLeite?.toJson());
  writeNotNull('data', instance.data?.toJson());
  writeNotNull('quantidadeLeite', instance.quantidadeLeite?.toJson());
  return val;
}

ItensvendaUpsertWithWhereUniqueWithoutAnimalInput
    _$ItensvendaUpsertWithWhereUniqueWithoutAnimalInputFromJson(
            Map<String, dynamic> json) =>
        ItensvendaUpsertWithWhereUniqueWithoutAnimalInput(
          where: ItensvendaWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          update: ItensvendaUpdateWithoutAnimalInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: ItensvendaCreateWithoutAnimalInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ItensvendaUpsertWithWhereUniqueWithoutAnimalInputToJson(
        ItensvendaUpsertWithWhereUniqueWithoutAnimalInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

ItensvendaUpdateWithWhereUniqueWithoutAnimalInput
    _$ItensvendaUpdateWithWhereUniqueWithoutAnimalInputFromJson(
            Map<String, dynamic> json) =>
        ItensvendaUpdateWithWhereUniqueWithoutAnimalInput(
          where: ItensvendaWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: ItensvendaUpdateWithoutAnimalInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ItensvendaUpdateWithWhereUniqueWithoutAnimalInputToJson(
        ItensvendaUpdateWithWhereUniqueWithoutAnimalInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

ItensvendaUpdateManyWithWhereWithoutAnimalInput
    _$ItensvendaUpdateManyWithWhereWithoutAnimalInputFromJson(
            Map<String, dynamic> json) =>
        ItensvendaUpdateManyWithWhereWithoutAnimalInput(
          where: ItensvendaScalarWhereInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: ItensvendaUpdateManyMutationInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ItensvendaUpdateManyWithWhereWithoutAnimalInputToJson(
        ItensvendaUpdateManyWithWhereWithoutAnimalInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

ItensvendaScalarWhereInput _$ItensvendaScalarWhereInputFromJson(
        Map<String, dynamic> json) =>
    ItensvendaScalarWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map((e) =>
          ItensvendaScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map((e) =>
          ItensvendaScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
          ItensvendaScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      codItensVenda: json['codItensVenda'] == null
          ? null
          : IntFilter.fromJson(json['codItensVenda'] as Map<String, dynamic>),
      codVendaAnimal: json['codVendaAnimal'] == null
          ? null
          : IntFilter.fromJson(json['codVendaAnimal'] as Map<String, dynamic>),
      codAnimal: json['codAnimal'] == null
          ? null
          : IntFilter.fromJson(json['codAnimal'] as Map<String, dynamic>),
      quantidade: json['quantidade'] == null
          ? null
          : IntFilter.fromJson(json['quantidade'] as Map<String, dynamic>),
      valorUnitario: json['valorUnitario'] == null
          ? null
          : FloatFilter.fromJson(json['valorUnitario'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItensvendaScalarWhereInputToJson(
    ItensvendaScalarWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('codItensVenda', instance.codItensVenda?.toJson());
  writeNotNull('codVendaAnimal', instance.codVendaAnimal?.toJson());
  writeNotNull('codAnimal', instance.codAnimal?.toJson());
  writeNotNull('quantidade', instance.quantidade?.toJson());
  writeNotNull('valorUnitario', instance.valorUnitario?.toJson());
  return val;
}

AnimalCreateWithoutCategoriaInput _$AnimalCreateWithoutCategoriaInputFromJson(
        Map<String, dynamic> json) =>
    AnimalCreateWithoutCategoriaInput(
      codAnimal: json['codAnimal'] as int,
      nome: json['nome'] as String,
      dataNascimento: const DateTimeJsonConverter()
          .fromJson(json['dataNascimento'] as String),
      sexo: json['sexo'] as String,
      raca: json['raca'] as String,
      idade: json['idade'] as int,
      formaManejo: json['formaManejo'] as String,
      mediaLeite: (json['mediaLeite'] as num?)?.toDouble(),
      prodleite: ProdleiteCreateNestedOneWithoutAnimalInput.fromJson(
          json['prodleite'] as Map<String, dynamic>),
      itensvenda: json['itensvenda'] == null
          ? null
          : ItensvendaCreateNestedManyWithoutAnimalInput.fromJson(
              json['itensvenda'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimalCreateWithoutCategoriaInputToJson(
    AnimalCreateWithoutCategoriaInput instance) {
  final val = <String, dynamic>{
    'codAnimal': instance.codAnimal,
    'nome': instance.nome,
    'dataNascimento':
        const DateTimeJsonConverter().toJson(instance.dataNascimento),
    'sexo': instance.sexo,
    'raca': instance.raca,
    'idade': instance.idade,
    'formaManejo': instance.formaManejo,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('mediaLeite', instance.mediaLeite);
  val['prodleite'] = instance.prodleite.toJson();
  writeNotNull('itensvenda', instance.itensvenda?.toJson());
  return val;
}

AnimalUncheckedCreateWithoutCategoriaInput
    _$AnimalUncheckedCreateWithoutCategoriaInputFromJson(
            Map<String, dynamic> json) =>
        AnimalUncheckedCreateWithoutCategoriaInput(
          codAnimal: json['codAnimal'] as int,
          codProdLeite: json['codProdLeite'] as int,
          nome: json['nome'] as String,
          dataNascimento: const DateTimeJsonConverter()
              .fromJson(json['dataNascimento'] as String),
          sexo: json['sexo'] as String,
          raca: json['raca'] as String,
          idade: json['idade'] as int,
          formaManejo: json['formaManejo'] as String,
          mediaLeite: (json['mediaLeite'] as num?)?.toDouble(),
          itensvenda: json['itensvenda'] == null
              ? null
              : ItensvendaUncheckedCreateNestedManyWithoutAnimalInput.fromJson(
                  json['itensvenda'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AnimalUncheckedCreateWithoutCategoriaInputToJson(
    AnimalUncheckedCreateWithoutCategoriaInput instance) {
  final val = <String, dynamic>{
    'codAnimal': instance.codAnimal,
    'codProdLeite': instance.codProdLeite,
    'nome': instance.nome,
    'dataNascimento':
        const DateTimeJsonConverter().toJson(instance.dataNascimento),
    'sexo': instance.sexo,
    'raca': instance.raca,
    'idade': instance.idade,
    'formaManejo': instance.formaManejo,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('mediaLeite', instance.mediaLeite);
  writeNotNull('itensvenda', instance.itensvenda?.toJson());
  return val;
}

AnimalCreateOrConnectWithoutCategoriaInput
    _$AnimalCreateOrConnectWithoutCategoriaInputFromJson(
            Map<String, dynamic> json) =>
        AnimalCreateOrConnectWithoutCategoriaInput(
          where: AnimalWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: AnimalCreateWithoutCategoriaInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AnimalCreateOrConnectWithoutCategoriaInputToJson(
        AnimalCreateOrConnectWithoutCategoriaInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

AnimalCreateManyCategoriaInputEnvelope
    _$AnimalCreateManyCategoriaInputEnvelopeFromJson(
            Map<String, dynamic> json) =>
        AnimalCreateManyCategoriaInputEnvelope(
          data: (json['data'] as List<dynamic>).map((e) =>
              AnimalCreateManyCategoriaInput.fromJson(
                  e as Map<String, dynamic>)),
          skipDuplicates: json['skipDuplicates'] as bool?,
        );

Map<String, dynamic> _$AnimalCreateManyCategoriaInputEnvelopeToJson(
    AnimalCreateManyCategoriaInputEnvelope instance) {
  final val = <String, dynamic>{
    'data': instance.data.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('skipDuplicates', instance.skipDuplicates);
  return val;
}

AnimalUpsertWithWhereUniqueWithoutCategoriaInput
    _$AnimalUpsertWithWhereUniqueWithoutCategoriaInputFromJson(
            Map<String, dynamic> json) =>
        AnimalUpsertWithWhereUniqueWithoutCategoriaInput(
          where: AnimalWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          update: AnimalUpdateWithoutCategoriaInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: AnimalCreateWithoutCategoriaInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AnimalUpsertWithWhereUniqueWithoutCategoriaInputToJson(
        AnimalUpsertWithWhereUniqueWithoutCategoriaInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

AnimalUpdateWithWhereUniqueWithoutCategoriaInput
    _$AnimalUpdateWithWhereUniqueWithoutCategoriaInputFromJson(
            Map<String, dynamic> json) =>
        AnimalUpdateWithWhereUniqueWithoutCategoriaInput(
          where: AnimalWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: AnimalUpdateWithoutCategoriaInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AnimalUpdateWithWhereUniqueWithoutCategoriaInputToJson(
        AnimalUpdateWithWhereUniqueWithoutCategoriaInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

AnimalUpdateManyWithWhereWithoutCategoriaInput
    _$AnimalUpdateManyWithWhereWithoutCategoriaInputFromJson(
            Map<String, dynamic> json) =>
        AnimalUpdateManyWithWhereWithoutCategoriaInput(
          where: AnimalScalarWhereInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: AnimalUpdateManyMutationInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AnimalUpdateManyWithWhereWithoutCategoriaInputToJson(
        AnimalUpdateManyWithWhereWithoutCategoriaInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

AnimalScalarWhereInput _$AnimalScalarWhereInputFromJson(
        Map<String, dynamic> json) =>
    AnimalScalarWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => AnimalScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => AnimalScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => AnimalScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      codAnimal: json['codAnimal'] == null
          ? null
          : IntFilter.fromJson(json['codAnimal'] as Map<String, dynamic>),
      codProdLeite: json['codProdLeite'] == null
          ? null
          : IntFilter.fromJson(json['codProdLeite'] as Map<String, dynamic>),
      codCategoria: json['codCategoria'] == null
          ? null
          : IntFilter.fromJson(json['codCategoria'] as Map<String, dynamic>),
      nome: json['nome'] == null
          ? null
          : StringFilter.fromJson(json['nome'] as Map<String, dynamic>),
      dataNascimento: json['dataNascimento'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['dataNascimento'] as Map<String, dynamic>),
      sexo: json['sexo'] == null
          ? null
          : StringFilter.fromJson(json['sexo'] as Map<String, dynamic>),
      raca: json['raca'] == null
          ? null
          : StringFilter.fromJson(json['raca'] as Map<String, dynamic>),
      idade: json['idade'] == null
          ? null
          : IntFilter.fromJson(json['idade'] as Map<String, dynamic>),
      formaManejo: json['formaManejo'] == null
          ? null
          : StringFilter.fromJson(json['formaManejo'] as Map<String, dynamic>),
      mediaLeite: json['mediaLeite'] == null
          ? null
          : FloatNullableFilter.fromJson(
              json['mediaLeite'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimalScalarWhereInputToJson(
    AnimalScalarWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('codAnimal', instance.codAnimal?.toJson());
  writeNotNull('codProdLeite', instance.codProdLeite?.toJson());
  writeNotNull('codCategoria', instance.codCategoria?.toJson());
  writeNotNull('nome', instance.nome?.toJson());
  writeNotNull('dataNascimento', instance.dataNascimento?.toJson());
  writeNotNull('sexo', instance.sexo?.toJson());
  writeNotNull('raca', instance.raca?.toJson());
  writeNotNull('idade', instance.idade?.toJson());
  writeNotNull('formaManejo', instance.formaManejo?.toJson());
  writeNotNull('mediaLeite', instance.mediaLeite?.toJson());
  return val;
}

VendaanimalCreateWithoutCompradorInput
    _$VendaanimalCreateWithoutCompradorInputFromJson(
            Map<String, dynamic> json) =>
        VendaanimalCreateWithoutCompradorInput(
          codVendaAnimal: json['codVendaAnimal'] as int,
          dataVendaAnimal: const DateTimeJsonConverter()
              .fromJson(json['dataVendaAnimal'] as String),
          valorTotalAnimal: (json['valorTotalAnimal'] as num).toDouble(),
          itensvenda: json['itensvenda'] == null
              ? null
              : ItensvendaCreateNestedManyWithoutVendaanimalInput.fromJson(
                  json['itensvenda'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$VendaanimalCreateWithoutCompradorInputToJson(
    VendaanimalCreateWithoutCompradorInput instance) {
  final val = <String, dynamic>{
    'codVendaAnimal': instance.codVendaAnimal,
    'dataVendaAnimal':
        const DateTimeJsonConverter().toJson(instance.dataVendaAnimal),
    'valorTotalAnimal': instance.valorTotalAnimal,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('itensvenda', instance.itensvenda?.toJson());
  return val;
}

VendaanimalUncheckedCreateWithoutCompradorInput
    _$VendaanimalUncheckedCreateWithoutCompradorInputFromJson(
            Map<String, dynamic> json) =>
        VendaanimalUncheckedCreateWithoutCompradorInput(
          codVendaAnimal: json['codVendaAnimal'] as int,
          dataVendaAnimal: const DateTimeJsonConverter()
              .fromJson(json['dataVendaAnimal'] as String),
          valorTotalAnimal: (json['valorTotalAnimal'] as num).toDouble(),
          itensvenda: json['itensvenda'] == null
              ? null
              : ItensvendaUncheckedCreateNestedManyWithoutVendaanimalInput
                  .fromJson(json['itensvenda'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$VendaanimalUncheckedCreateWithoutCompradorInputToJson(
    VendaanimalUncheckedCreateWithoutCompradorInput instance) {
  final val = <String, dynamic>{
    'codVendaAnimal': instance.codVendaAnimal,
    'dataVendaAnimal':
        const DateTimeJsonConverter().toJson(instance.dataVendaAnimal),
    'valorTotalAnimal': instance.valorTotalAnimal,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('itensvenda', instance.itensvenda?.toJson());
  return val;
}

VendaanimalCreateOrConnectWithoutCompradorInput
    _$VendaanimalCreateOrConnectWithoutCompradorInputFromJson(
            Map<String, dynamic> json) =>
        VendaanimalCreateOrConnectWithoutCompradorInput(
          where: VendaanimalWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: VendaanimalCreateWithoutCompradorInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$VendaanimalCreateOrConnectWithoutCompradorInputToJson(
        VendaanimalCreateOrConnectWithoutCompradorInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

VendaanimalCreateManyCompradorInputEnvelope
    _$VendaanimalCreateManyCompradorInputEnvelopeFromJson(
            Map<String, dynamic> json) =>
        VendaanimalCreateManyCompradorInputEnvelope(
          data: (json['data'] as List<dynamic>).map((e) =>
              VendaanimalCreateManyCompradorInput.fromJson(
                  e as Map<String, dynamic>)),
          skipDuplicates: json['skipDuplicates'] as bool?,
        );

Map<String, dynamic> _$VendaanimalCreateManyCompradorInputEnvelopeToJson(
    VendaanimalCreateManyCompradorInputEnvelope instance) {
  final val = <String, dynamic>{
    'data': instance.data.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('skipDuplicates', instance.skipDuplicates);
  return val;
}

VendaleiteCreateWithoutCompradorInput
    _$VendaleiteCreateWithoutCompradorInputFromJson(
            Map<String, dynamic> json) =>
        VendaleiteCreateWithoutCompradorInput(
          codVendaLeite: json['codVendaLeite'] as int,
          dataVendaLeite: const DateTimeJsonConverter()
              .fromJson(json['dataVendaLeite'] as String),
          quantidadeLeite: (json['quantidadeLeite'] as num).toDouble(),
          valorTotalLeite: (json['valorTotalLeite'] as num).toDouble(),
        );

Map<String, dynamic> _$VendaleiteCreateWithoutCompradorInputToJson(
        VendaleiteCreateWithoutCompradorInput instance) =>
    <String, dynamic>{
      'codVendaLeite': instance.codVendaLeite,
      'dataVendaLeite':
          const DateTimeJsonConverter().toJson(instance.dataVendaLeite),
      'quantidadeLeite': instance.quantidadeLeite,
      'valorTotalLeite': instance.valorTotalLeite,
    };

VendaleiteUncheckedCreateWithoutCompradorInput
    _$VendaleiteUncheckedCreateWithoutCompradorInputFromJson(
            Map<String, dynamic> json) =>
        VendaleiteUncheckedCreateWithoutCompradorInput(
          codVendaLeite: json['codVendaLeite'] as int,
          dataVendaLeite: const DateTimeJsonConverter()
              .fromJson(json['dataVendaLeite'] as String),
          quantidadeLeite: (json['quantidadeLeite'] as num).toDouble(),
          valorTotalLeite: (json['valorTotalLeite'] as num).toDouble(),
        );

Map<String, dynamic> _$VendaleiteUncheckedCreateWithoutCompradorInputToJson(
        VendaleiteUncheckedCreateWithoutCompradorInput instance) =>
    <String, dynamic>{
      'codVendaLeite': instance.codVendaLeite,
      'dataVendaLeite':
          const DateTimeJsonConverter().toJson(instance.dataVendaLeite),
      'quantidadeLeite': instance.quantidadeLeite,
      'valorTotalLeite': instance.valorTotalLeite,
    };

VendaleiteCreateOrConnectWithoutCompradorInput
    _$VendaleiteCreateOrConnectWithoutCompradorInputFromJson(
            Map<String, dynamic> json) =>
        VendaleiteCreateOrConnectWithoutCompradorInput(
          where: VendaleiteWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: VendaleiteCreateWithoutCompradorInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$VendaleiteCreateOrConnectWithoutCompradorInputToJson(
        VendaleiteCreateOrConnectWithoutCompradorInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

VendaleiteCreateManyCompradorInputEnvelope
    _$VendaleiteCreateManyCompradorInputEnvelopeFromJson(
            Map<String, dynamic> json) =>
        VendaleiteCreateManyCompradorInputEnvelope(
          data: (json['data'] as List<dynamic>).map((e) =>
              VendaleiteCreateManyCompradorInput.fromJson(
                  e as Map<String, dynamic>)),
          skipDuplicates: json['skipDuplicates'] as bool?,
        );

Map<String, dynamic> _$VendaleiteCreateManyCompradorInputEnvelopeToJson(
    VendaleiteCreateManyCompradorInputEnvelope instance) {
  final val = <String, dynamic>{
    'data': instance.data.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('skipDuplicates', instance.skipDuplicates);
  return val;
}

VendaanimalUpsertWithWhereUniqueWithoutCompradorInput
    _$VendaanimalUpsertWithWhereUniqueWithoutCompradorInputFromJson(
            Map<String, dynamic> json) =>
        VendaanimalUpsertWithWhereUniqueWithoutCompradorInput(
          where: VendaanimalWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          update: VendaanimalUpdateWithoutCompradorInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: VendaanimalCreateWithoutCompradorInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$VendaanimalUpsertWithWhereUniqueWithoutCompradorInputToJson(
            VendaanimalUpsertWithWhereUniqueWithoutCompradorInput instance) =>
        <String, dynamic>{
          'where': instance.where.toJson(),
          'update': instance.update.toJson(),
          'create': instance.create.toJson(),
        };

VendaanimalUpdateWithWhereUniqueWithoutCompradorInput
    _$VendaanimalUpdateWithWhereUniqueWithoutCompradorInputFromJson(
            Map<String, dynamic> json) =>
        VendaanimalUpdateWithWhereUniqueWithoutCompradorInput(
          where: VendaanimalWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: VendaanimalUpdateWithoutCompradorInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$VendaanimalUpdateWithWhereUniqueWithoutCompradorInputToJson(
            VendaanimalUpdateWithWhereUniqueWithoutCompradorInput instance) =>
        <String, dynamic>{
          'where': instance.where.toJson(),
          'data': instance.data.toJson(),
        };

VendaanimalUpdateManyWithWhereWithoutCompradorInput
    _$VendaanimalUpdateManyWithWhereWithoutCompradorInputFromJson(
            Map<String, dynamic> json) =>
        VendaanimalUpdateManyWithWhereWithoutCompradorInput(
          where: VendaanimalScalarWhereInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: VendaanimalUpdateManyMutationInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$VendaanimalUpdateManyWithWhereWithoutCompradorInputToJson(
            VendaanimalUpdateManyWithWhereWithoutCompradorInput instance) =>
        <String, dynamic>{
          'where': instance.where.toJson(),
          'data': instance.data.toJson(),
        };

VendaanimalScalarWhereInput _$VendaanimalScalarWhereInputFromJson(
        Map<String, dynamic> json) =>
    VendaanimalScalarWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map((e) =>
          VendaanimalScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map((e) =>
          VendaanimalScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
          VendaanimalScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      codVendaAnimal: json['codVendaAnimal'] == null
          ? null
          : IntFilter.fromJson(json['codVendaAnimal'] as Map<String, dynamic>),
      codComprador: json['codComprador'] == null
          ? null
          : IntFilter.fromJson(json['codComprador'] as Map<String, dynamic>),
      dataVendaAnimal: json['dataVendaAnimal'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['dataVendaAnimal'] as Map<String, dynamic>),
      valorTotalAnimal: json['valorTotalAnimal'] == null
          ? null
          : FloatFilter.fromJson(
              json['valorTotalAnimal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VendaanimalScalarWhereInputToJson(
    VendaanimalScalarWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('codVendaAnimal', instance.codVendaAnimal?.toJson());
  writeNotNull('codComprador', instance.codComprador?.toJson());
  writeNotNull('dataVendaAnimal', instance.dataVendaAnimal?.toJson());
  writeNotNull('valorTotalAnimal', instance.valorTotalAnimal?.toJson());
  return val;
}

VendaleiteUpsertWithWhereUniqueWithoutCompradorInput
    _$VendaleiteUpsertWithWhereUniqueWithoutCompradorInputFromJson(
            Map<String, dynamic> json) =>
        VendaleiteUpsertWithWhereUniqueWithoutCompradorInput(
          where: VendaleiteWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          update: VendaleiteUpdateWithoutCompradorInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: VendaleiteCreateWithoutCompradorInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$VendaleiteUpsertWithWhereUniqueWithoutCompradorInputToJson(
            VendaleiteUpsertWithWhereUniqueWithoutCompradorInput instance) =>
        <String, dynamic>{
          'where': instance.where.toJson(),
          'update': instance.update.toJson(),
          'create': instance.create.toJson(),
        };

VendaleiteUpdateWithWhereUniqueWithoutCompradorInput
    _$VendaleiteUpdateWithWhereUniqueWithoutCompradorInputFromJson(
            Map<String, dynamic> json) =>
        VendaleiteUpdateWithWhereUniqueWithoutCompradorInput(
          where: VendaleiteWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: VendaleiteUpdateWithoutCompradorInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$VendaleiteUpdateWithWhereUniqueWithoutCompradorInputToJson(
            VendaleiteUpdateWithWhereUniqueWithoutCompradorInput instance) =>
        <String, dynamic>{
          'where': instance.where.toJson(),
          'data': instance.data.toJson(),
        };

VendaleiteUpdateManyWithWhereWithoutCompradorInput
    _$VendaleiteUpdateManyWithWhereWithoutCompradorInputFromJson(
            Map<String, dynamic> json) =>
        VendaleiteUpdateManyWithWhereWithoutCompradorInput(
          where: VendaleiteScalarWhereInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: VendaleiteUpdateManyMutationInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$VendaleiteUpdateManyWithWhereWithoutCompradorInputToJson(
        VendaleiteUpdateManyWithWhereWithoutCompradorInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

VendaleiteScalarWhereInput _$VendaleiteScalarWhereInputFromJson(
        Map<String, dynamic> json) =>
    VendaleiteScalarWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map((e) =>
          VendaleiteScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map((e) =>
          VendaleiteScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
          VendaleiteScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      codVendaLeite: json['codVendaLeite'] == null
          ? null
          : IntFilter.fromJson(json['codVendaLeite'] as Map<String, dynamic>),
      codComprador: json['codComprador'] == null
          ? null
          : IntFilter.fromJson(json['codComprador'] as Map<String, dynamic>),
      dataVendaLeite: json['dataVendaLeite'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['dataVendaLeite'] as Map<String, dynamic>),
      quantidadeLeite: json['quantidadeLeite'] == null
          ? null
          : FloatFilter.fromJson(
              json['quantidadeLeite'] as Map<String, dynamic>),
      valorTotalLeite: json['valorTotalLeite'] == null
          ? null
          : FloatFilter.fromJson(
              json['valorTotalLeite'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VendaleiteScalarWhereInputToJson(
    VendaleiteScalarWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('codVendaLeite', instance.codVendaLeite?.toJson());
  writeNotNull('codComprador', instance.codComprador?.toJson());
  writeNotNull('dataVendaLeite', instance.dataVendaLeite?.toJson());
  writeNotNull('quantidadeLeite', instance.quantidadeLeite?.toJson());
  writeNotNull('valorTotalLeite', instance.valorTotalLeite?.toJson());
  return val;
}

AnimalCreateWithoutItensvendaInput _$AnimalCreateWithoutItensvendaInputFromJson(
        Map<String, dynamic> json) =>
    AnimalCreateWithoutItensvendaInput(
      codAnimal: json['codAnimal'] as int,
      nome: json['nome'] as String,
      dataNascimento: const DateTimeJsonConverter()
          .fromJson(json['dataNascimento'] as String),
      sexo: json['sexo'] as String,
      raca: json['raca'] as String,
      idade: json['idade'] as int,
      formaManejo: json['formaManejo'] as String,
      mediaLeite: (json['mediaLeite'] as num?)?.toDouble(),
      categoria: CategoriaCreateNestedOneWithoutAnimalInput.fromJson(
          json['categoria'] as Map<String, dynamic>),
      prodleite: ProdleiteCreateNestedOneWithoutAnimalInput.fromJson(
          json['prodleite'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimalCreateWithoutItensvendaInputToJson(
    AnimalCreateWithoutItensvendaInput instance) {
  final val = <String, dynamic>{
    'codAnimal': instance.codAnimal,
    'nome': instance.nome,
    'dataNascimento':
        const DateTimeJsonConverter().toJson(instance.dataNascimento),
    'sexo': instance.sexo,
    'raca': instance.raca,
    'idade': instance.idade,
    'formaManejo': instance.formaManejo,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('mediaLeite', instance.mediaLeite);
  val['categoria'] = instance.categoria.toJson();
  val['prodleite'] = instance.prodleite.toJson();
  return val;
}

AnimalUncheckedCreateWithoutItensvendaInput
    _$AnimalUncheckedCreateWithoutItensvendaInputFromJson(
            Map<String, dynamic> json) =>
        AnimalUncheckedCreateWithoutItensvendaInput(
          codAnimal: json['codAnimal'] as int,
          codProdLeite: json['codProdLeite'] as int,
          codCategoria: json['codCategoria'] as int,
          nome: json['nome'] as String,
          dataNascimento: const DateTimeJsonConverter()
              .fromJson(json['dataNascimento'] as String),
          sexo: json['sexo'] as String,
          raca: json['raca'] as String,
          idade: json['idade'] as int,
          formaManejo: json['formaManejo'] as String,
          mediaLeite: (json['mediaLeite'] as num?)?.toDouble(),
        );

Map<String, dynamic> _$AnimalUncheckedCreateWithoutItensvendaInputToJson(
    AnimalUncheckedCreateWithoutItensvendaInput instance) {
  final val = <String, dynamic>{
    'codAnimal': instance.codAnimal,
    'codProdLeite': instance.codProdLeite,
    'codCategoria': instance.codCategoria,
    'nome': instance.nome,
    'dataNascimento':
        const DateTimeJsonConverter().toJson(instance.dataNascimento),
    'sexo': instance.sexo,
    'raca': instance.raca,
    'idade': instance.idade,
    'formaManejo': instance.formaManejo,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('mediaLeite', instance.mediaLeite);
  return val;
}

AnimalCreateOrConnectWithoutItensvendaInput
    _$AnimalCreateOrConnectWithoutItensvendaInputFromJson(
            Map<String, dynamic> json) =>
        AnimalCreateOrConnectWithoutItensvendaInput(
          where: AnimalWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: AnimalCreateWithoutItensvendaInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AnimalCreateOrConnectWithoutItensvendaInputToJson(
        AnimalCreateOrConnectWithoutItensvendaInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

VendaanimalCreateWithoutItensvendaInput
    _$VendaanimalCreateWithoutItensvendaInputFromJson(
            Map<String, dynamic> json) =>
        VendaanimalCreateWithoutItensvendaInput(
          codVendaAnimal: json['codVendaAnimal'] as int,
          dataVendaAnimal: const DateTimeJsonConverter()
              .fromJson(json['dataVendaAnimal'] as String),
          valorTotalAnimal: (json['valorTotalAnimal'] as num).toDouble(),
          comprador: CompradorCreateNestedOneWithoutVendaanimalInput.fromJson(
              json['comprador'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$VendaanimalCreateWithoutItensvendaInputToJson(
        VendaanimalCreateWithoutItensvendaInput instance) =>
    <String, dynamic>{
      'codVendaAnimal': instance.codVendaAnimal,
      'dataVendaAnimal':
          const DateTimeJsonConverter().toJson(instance.dataVendaAnimal),
      'valorTotalAnimal': instance.valorTotalAnimal,
      'comprador': instance.comprador.toJson(),
    };

VendaanimalUncheckedCreateWithoutItensvendaInput
    _$VendaanimalUncheckedCreateWithoutItensvendaInputFromJson(
            Map<String, dynamic> json) =>
        VendaanimalUncheckedCreateWithoutItensvendaInput(
          codVendaAnimal: json['codVendaAnimal'] as int,
          codComprador: json['codComprador'] as int,
          dataVendaAnimal: const DateTimeJsonConverter()
              .fromJson(json['dataVendaAnimal'] as String),
          valorTotalAnimal: (json['valorTotalAnimal'] as num).toDouble(),
        );

Map<String, dynamic> _$VendaanimalUncheckedCreateWithoutItensvendaInputToJson(
        VendaanimalUncheckedCreateWithoutItensvendaInput instance) =>
    <String, dynamic>{
      'codVendaAnimal': instance.codVendaAnimal,
      'codComprador': instance.codComprador,
      'dataVendaAnimal':
          const DateTimeJsonConverter().toJson(instance.dataVendaAnimal),
      'valorTotalAnimal': instance.valorTotalAnimal,
    };

VendaanimalCreateOrConnectWithoutItensvendaInput
    _$VendaanimalCreateOrConnectWithoutItensvendaInputFromJson(
            Map<String, dynamic> json) =>
        VendaanimalCreateOrConnectWithoutItensvendaInput(
          where: VendaanimalWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: VendaanimalCreateWithoutItensvendaInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$VendaanimalCreateOrConnectWithoutItensvendaInputToJson(
        VendaanimalCreateOrConnectWithoutItensvendaInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

AnimalUpsertWithoutItensvendaInput _$AnimalUpsertWithoutItensvendaInputFromJson(
        Map<String, dynamic> json) =>
    AnimalUpsertWithoutItensvendaInput(
      update: AnimalUpdateWithoutItensvendaInput.fromJson(
          json['update'] as Map<String, dynamic>),
      create: AnimalCreateWithoutItensvendaInput.fromJson(
          json['create'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimalUpsertWithoutItensvendaInputToJson(
        AnimalUpsertWithoutItensvendaInput instance) =>
    <String, dynamic>{
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

AnimalUpdateWithoutItensvendaInput _$AnimalUpdateWithoutItensvendaInputFromJson(
        Map<String, dynamic> json) =>
    AnimalUpdateWithoutItensvendaInput(
      codAnimal: json['codAnimal'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codAnimal'] as Map<String, dynamic>),
      nome: json['nome'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['nome'] as Map<String, dynamic>),
      dataNascimento: json['dataNascimento'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['dataNascimento'] as Map<String, dynamic>),
      sexo: json['sexo'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['sexo'] as Map<String, dynamic>),
      raca: json['raca'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['raca'] as Map<String, dynamic>),
      idade: json['idade'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['idade'] as Map<String, dynamic>),
      formaManejo: json['formaManejo'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['formaManejo'] as Map<String, dynamic>),
      mediaLeite: json['mediaLeite'] == null
          ? null
          : NullableFloatFieldUpdateOperationsInput.fromJson(
              json['mediaLeite'] as Map<String, dynamic>),
      categoria: json['categoria'] == null
          ? null
          : CategoriaUpdateOneRequiredWithoutAnimalNestedInput.fromJson(
              json['categoria'] as Map<String, dynamic>),
      prodleite: json['prodleite'] == null
          ? null
          : ProdleiteUpdateOneRequiredWithoutAnimalNestedInput.fromJson(
              json['prodleite'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimalUpdateWithoutItensvendaInputToJson(
    AnimalUpdateWithoutItensvendaInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codAnimal', instance.codAnimal?.toJson());
  writeNotNull('nome', instance.nome?.toJson());
  writeNotNull('dataNascimento', instance.dataNascimento?.toJson());
  writeNotNull('sexo', instance.sexo?.toJson());
  writeNotNull('raca', instance.raca?.toJson());
  writeNotNull('idade', instance.idade?.toJson());
  writeNotNull('formaManejo', instance.formaManejo?.toJson());
  writeNotNull('mediaLeite', instance.mediaLeite?.toJson());
  writeNotNull('categoria', instance.categoria?.toJson());
  writeNotNull('prodleite', instance.prodleite?.toJson());
  return val;
}

AnimalUncheckedUpdateWithoutItensvendaInput
    _$AnimalUncheckedUpdateWithoutItensvendaInputFromJson(
            Map<String, dynamic> json) =>
        AnimalUncheckedUpdateWithoutItensvendaInput(
          codAnimal: json['codAnimal'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codAnimal'] as Map<String, dynamic>),
          codProdLeite: json['codProdLeite'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codProdLeite'] as Map<String, dynamic>),
          codCategoria: json['codCategoria'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codCategoria'] as Map<String, dynamic>),
          nome: json['nome'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['nome'] as Map<String, dynamic>),
          dataNascimento: json['dataNascimento'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['dataNascimento'] as Map<String, dynamic>),
          sexo: json['sexo'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['sexo'] as Map<String, dynamic>),
          raca: json['raca'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['raca'] as Map<String, dynamic>),
          idade: json['idade'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['idade'] as Map<String, dynamic>),
          formaManejo: json['formaManejo'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['formaManejo'] as Map<String, dynamic>),
          mediaLeite: json['mediaLeite'] == null
              ? null
              : NullableFloatFieldUpdateOperationsInput.fromJson(
                  json['mediaLeite'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AnimalUncheckedUpdateWithoutItensvendaInputToJson(
    AnimalUncheckedUpdateWithoutItensvendaInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codAnimal', instance.codAnimal?.toJson());
  writeNotNull('codProdLeite', instance.codProdLeite?.toJson());
  writeNotNull('codCategoria', instance.codCategoria?.toJson());
  writeNotNull('nome', instance.nome?.toJson());
  writeNotNull('dataNascimento', instance.dataNascimento?.toJson());
  writeNotNull('sexo', instance.sexo?.toJson());
  writeNotNull('raca', instance.raca?.toJson());
  writeNotNull('idade', instance.idade?.toJson());
  writeNotNull('formaManejo', instance.formaManejo?.toJson());
  writeNotNull('mediaLeite', instance.mediaLeite?.toJson());
  return val;
}

VendaanimalUpsertWithoutItensvendaInput
    _$VendaanimalUpsertWithoutItensvendaInputFromJson(
            Map<String, dynamic> json) =>
        VendaanimalUpsertWithoutItensvendaInput(
          update: VendaanimalUpdateWithoutItensvendaInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: VendaanimalCreateWithoutItensvendaInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$VendaanimalUpsertWithoutItensvendaInputToJson(
        VendaanimalUpsertWithoutItensvendaInput instance) =>
    <String, dynamic>{
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

VendaanimalUpdateWithoutItensvendaInput
    _$VendaanimalUpdateWithoutItensvendaInputFromJson(
            Map<String, dynamic> json) =>
        VendaanimalUpdateWithoutItensvendaInput(
          codVendaAnimal: json['codVendaAnimal'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codVendaAnimal'] as Map<String, dynamic>),
          dataVendaAnimal: json['dataVendaAnimal'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['dataVendaAnimal'] as Map<String, dynamic>),
          valorTotalAnimal: json['valorTotalAnimal'] == null
              ? null
              : FloatFieldUpdateOperationsInput.fromJson(
                  json['valorTotalAnimal'] as Map<String, dynamic>),
          comprador: json['comprador'] == null
              ? null
              : CompradorUpdateOneRequiredWithoutVendaanimalNestedInput
                  .fromJson(json['comprador'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$VendaanimalUpdateWithoutItensvendaInputToJson(
    VendaanimalUpdateWithoutItensvendaInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaAnimal', instance.codVendaAnimal?.toJson());
  writeNotNull('dataVendaAnimal', instance.dataVendaAnimal?.toJson());
  writeNotNull('valorTotalAnimal', instance.valorTotalAnimal?.toJson());
  writeNotNull('comprador', instance.comprador?.toJson());
  return val;
}

VendaanimalUncheckedUpdateWithoutItensvendaInput
    _$VendaanimalUncheckedUpdateWithoutItensvendaInputFromJson(
            Map<String, dynamic> json) =>
        VendaanimalUncheckedUpdateWithoutItensvendaInput(
          codVendaAnimal: json['codVendaAnimal'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codVendaAnimal'] as Map<String, dynamic>),
          codComprador: json['codComprador'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codComprador'] as Map<String, dynamic>),
          dataVendaAnimal: json['dataVendaAnimal'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['dataVendaAnimal'] as Map<String, dynamic>),
          valorTotalAnimal: json['valorTotalAnimal'] == null
              ? null
              : FloatFieldUpdateOperationsInput.fromJson(
                  json['valorTotalAnimal'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$VendaanimalUncheckedUpdateWithoutItensvendaInputToJson(
    VendaanimalUncheckedUpdateWithoutItensvendaInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaAnimal', instance.codVendaAnimal?.toJson());
  writeNotNull('codComprador', instance.codComprador?.toJson());
  writeNotNull('dataVendaAnimal', instance.dataVendaAnimal?.toJson());
  writeNotNull('valorTotalAnimal', instance.valorTotalAnimal?.toJson());
  return val;
}

AnimalCreateWithoutProdleiteInput _$AnimalCreateWithoutProdleiteInputFromJson(
        Map<String, dynamic> json) =>
    AnimalCreateWithoutProdleiteInput(
      codAnimal: json['codAnimal'] as int,
      nome: json['nome'] as String,
      dataNascimento: const DateTimeJsonConverter()
          .fromJson(json['dataNascimento'] as String),
      sexo: json['sexo'] as String,
      raca: json['raca'] as String,
      idade: json['idade'] as int,
      formaManejo: json['formaManejo'] as String,
      mediaLeite: (json['mediaLeite'] as num?)?.toDouble(),
      categoria: CategoriaCreateNestedOneWithoutAnimalInput.fromJson(
          json['categoria'] as Map<String, dynamic>),
      itensvenda: json['itensvenda'] == null
          ? null
          : ItensvendaCreateNestedManyWithoutAnimalInput.fromJson(
              json['itensvenda'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimalCreateWithoutProdleiteInputToJson(
    AnimalCreateWithoutProdleiteInput instance) {
  final val = <String, dynamic>{
    'codAnimal': instance.codAnimal,
    'nome': instance.nome,
    'dataNascimento':
        const DateTimeJsonConverter().toJson(instance.dataNascimento),
    'sexo': instance.sexo,
    'raca': instance.raca,
    'idade': instance.idade,
    'formaManejo': instance.formaManejo,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('mediaLeite', instance.mediaLeite);
  val['categoria'] = instance.categoria.toJson();
  writeNotNull('itensvenda', instance.itensvenda?.toJson());
  return val;
}

AnimalUncheckedCreateWithoutProdleiteInput
    _$AnimalUncheckedCreateWithoutProdleiteInputFromJson(
            Map<String, dynamic> json) =>
        AnimalUncheckedCreateWithoutProdleiteInput(
          codAnimal: json['codAnimal'] as int,
          codCategoria: json['codCategoria'] as int,
          nome: json['nome'] as String,
          dataNascimento: const DateTimeJsonConverter()
              .fromJson(json['dataNascimento'] as String),
          sexo: json['sexo'] as String,
          raca: json['raca'] as String,
          idade: json['idade'] as int,
          formaManejo: json['formaManejo'] as String,
          mediaLeite: (json['mediaLeite'] as num?)?.toDouble(),
          itensvenda: json['itensvenda'] == null
              ? null
              : ItensvendaUncheckedCreateNestedManyWithoutAnimalInput.fromJson(
                  json['itensvenda'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AnimalUncheckedCreateWithoutProdleiteInputToJson(
    AnimalUncheckedCreateWithoutProdleiteInput instance) {
  final val = <String, dynamic>{
    'codAnimal': instance.codAnimal,
    'codCategoria': instance.codCategoria,
    'nome': instance.nome,
    'dataNascimento':
        const DateTimeJsonConverter().toJson(instance.dataNascimento),
    'sexo': instance.sexo,
    'raca': instance.raca,
    'idade': instance.idade,
    'formaManejo': instance.formaManejo,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('mediaLeite', instance.mediaLeite);
  writeNotNull('itensvenda', instance.itensvenda?.toJson());
  return val;
}

AnimalCreateOrConnectWithoutProdleiteInput
    _$AnimalCreateOrConnectWithoutProdleiteInputFromJson(
            Map<String, dynamic> json) =>
        AnimalCreateOrConnectWithoutProdleiteInput(
          where: AnimalWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: AnimalCreateWithoutProdleiteInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AnimalCreateOrConnectWithoutProdleiteInputToJson(
        AnimalCreateOrConnectWithoutProdleiteInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

AnimalCreateManyProdleiteInputEnvelope
    _$AnimalCreateManyProdleiteInputEnvelopeFromJson(
            Map<String, dynamic> json) =>
        AnimalCreateManyProdleiteInputEnvelope(
          data: (json['data'] as List<dynamic>).map((e) =>
              AnimalCreateManyProdleiteInput.fromJson(
                  e as Map<String, dynamic>)),
          skipDuplicates: json['skipDuplicates'] as bool?,
        );

Map<String, dynamic> _$AnimalCreateManyProdleiteInputEnvelopeToJson(
    AnimalCreateManyProdleiteInputEnvelope instance) {
  final val = <String, dynamic>{
    'data': instance.data.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('skipDuplicates', instance.skipDuplicates);
  return val;
}

AnimalUpsertWithWhereUniqueWithoutProdleiteInput
    _$AnimalUpsertWithWhereUniqueWithoutProdleiteInputFromJson(
            Map<String, dynamic> json) =>
        AnimalUpsertWithWhereUniqueWithoutProdleiteInput(
          where: AnimalWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          update: AnimalUpdateWithoutProdleiteInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: AnimalCreateWithoutProdleiteInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AnimalUpsertWithWhereUniqueWithoutProdleiteInputToJson(
        AnimalUpsertWithWhereUniqueWithoutProdleiteInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

AnimalUpdateWithWhereUniqueWithoutProdleiteInput
    _$AnimalUpdateWithWhereUniqueWithoutProdleiteInputFromJson(
            Map<String, dynamic> json) =>
        AnimalUpdateWithWhereUniqueWithoutProdleiteInput(
          where: AnimalWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: AnimalUpdateWithoutProdleiteInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AnimalUpdateWithWhereUniqueWithoutProdleiteInputToJson(
        AnimalUpdateWithWhereUniqueWithoutProdleiteInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

AnimalUpdateManyWithWhereWithoutProdleiteInput
    _$AnimalUpdateManyWithWhereWithoutProdleiteInputFromJson(
            Map<String, dynamic> json) =>
        AnimalUpdateManyWithWhereWithoutProdleiteInput(
          where: AnimalScalarWhereInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: AnimalUpdateManyMutationInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AnimalUpdateManyWithWhereWithoutProdleiteInputToJson(
        AnimalUpdateManyWithWhereWithoutProdleiteInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

ItensvendaCreateWithoutVendaanimalInput
    _$ItensvendaCreateWithoutVendaanimalInputFromJson(
            Map<String, dynamic> json) =>
        ItensvendaCreateWithoutVendaanimalInput(
          codItensVenda: json['codItensVenda'] as int,
          quantidade: json['quantidade'] as int,
          valorUnitario: (json['valorUnitario'] as num).toDouble(),
          animal: AnimalCreateNestedOneWithoutItensvendaInput.fromJson(
              json['animal'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ItensvendaCreateWithoutVendaanimalInputToJson(
        ItensvendaCreateWithoutVendaanimalInput instance) =>
    <String, dynamic>{
      'codItensVenda': instance.codItensVenda,
      'quantidade': instance.quantidade,
      'valorUnitario': instance.valorUnitario,
      'animal': instance.animal.toJson(),
    };

ItensvendaUncheckedCreateWithoutVendaanimalInput
    _$ItensvendaUncheckedCreateWithoutVendaanimalInputFromJson(
            Map<String, dynamic> json) =>
        ItensvendaUncheckedCreateWithoutVendaanimalInput(
          codItensVenda: json['codItensVenda'] as int,
          codAnimal: json['codAnimal'] as int,
          quantidade: json['quantidade'] as int,
          valorUnitario: (json['valorUnitario'] as num).toDouble(),
        );

Map<String, dynamic> _$ItensvendaUncheckedCreateWithoutVendaanimalInputToJson(
        ItensvendaUncheckedCreateWithoutVendaanimalInput instance) =>
    <String, dynamic>{
      'codItensVenda': instance.codItensVenda,
      'codAnimal': instance.codAnimal,
      'quantidade': instance.quantidade,
      'valorUnitario': instance.valorUnitario,
    };

ItensvendaCreateOrConnectWithoutVendaanimalInput
    _$ItensvendaCreateOrConnectWithoutVendaanimalInputFromJson(
            Map<String, dynamic> json) =>
        ItensvendaCreateOrConnectWithoutVendaanimalInput(
          where: ItensvendaWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: ItensvendaCreateWithoutVendaanimalInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ItensvendaCreateOrConnectWithoutVendaanimalInputToJson(
        ItensvendaCreateOrConnectWithoutVendaanimalInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

ItensvendaCreateManyVendaanimalInputEnvelope
    _$ItensvendaCreateManyVendaanimalInputEnvelopeFromJson(
            Map<String, dynamic> json) =>
        ItensvendaCreateManyVendaanimalInputEnvelope(
          data: (json['data'] as List<dynamic>).map((e) =>
              ItensvendaCreateManyVendaanimalInput.fromJson(
                  e as Map<String, dynamic>)),
          skipDuplicates: json['skipDuplicates'] as bool?,
        );

Map<String, dynamic> _$ItensvendaCreateManyVendaanimalInputEnvelopeToJson(
    ItensvendaCreateManyVendaanimalInputEnvelope instance) {
  final val = <String, dynamic>{
    'data': instance.data.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('skipDuplicates', instance.skipDuplicates);
  return val;
}

CompradorCreateWithoutVendaanimalInput
    _$CompradorCreateWithoutVendaanimalInputFromJson(
            Map<String, dynamic> json) =>
        CompradorCreateWithoutVendaanimalInput(
          codComprador: json['codComprador'] as int,
          nome: json['nome'] as String,
          telefone: json['telefone'] as String,
          endereco: json['endereco'] as String,
          vendaleite: json['vendaleite'] == null
              ? null
              : VendaleiteCreateNestedManyWithoutCompradorInput.fromJson(
                  json['vendaleite'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CompradorCreateWithoutVendaanimalInputToJson(
    CompradorCreateWithoutVendaanimalInput instance) {
  final val = <String, dynamic>{
    'codComprador': instance.codComprador,
    'nome': instance.nome,
    'telefone': instance.telefone,
    'endereco': instance.endereco,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('vendaleite', instance.vendaleite?.toJson());
  return val;
}

CompradorUncheckedCreateWithoutVendaanimalInput
    _$CompradorUncheckedCreateWithoutVendaanimalInputFromJson(
            Map<String, dynamic> json) =>
        CompradorUncheckedCreateWithoutVendaanimalInput(
          codComprador: json['codComprador'] as int,
          nome: json['nome'] as String,
          telefone: json['telefone'] as String,
          endereco: json['endereco'] as String,
          vendaleite: json['vendaleite'] == null
              ? null
              : VendaleiteUncheckedCreateNestedManyWithoutCompradorInput
                  .fromJson(json['vendaleite'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CompradorUncheckedCreateWithoutVendaanimalInputToJson(
    CompradorUncheckedCreateWithoutVendaanimalInput instance) {
  final val = <String, dynamic>{
    'codComprador': instance.codComprador,
    'nome': instance.nome,
    'telefone': instance.telefone,
    'endereco': instance.endereco,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('vendaleite', instance.vendaleite?.toJson());
  return val;
}

CompradorCreateOrConnectWithoutVendaanimalInput
    _$CompradorCreateOrConnectWithoutVendaanimalInputFromJson(
            Map<String, dynamic> json) =>
        CompradorCreateOrConnectWithoutVendaanimalInput(
          where: CompradorWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: CompradorCreateWithoutVendaanimalInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CompradorCreateOrConnectWithoutVendaanimalInputToJson(
        CompradorCreateOrConnectWithoutVendaanimalInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

ItensvendaUpsertWithWhereUniqueWithoutVendaanimalInput
    _$ItensvendaUpsertWithWhereUniqueWithoutVendaanimalInputFromJson(
            Map<String, dynamic> json) =>
        ItensvendaUpsertWithWhereUniqueWithoutVendaanimalInput(
          where: ItensvendaWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          update: ItensvendaUpdateWithoutVendaanimalInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: ItensvendaCreateWithoutVendaanimalInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$ItensvendaUpsertWithWhereUniqueWithoutVendaanimalInputToJson(
            ItensvendaUpsertWithWhereUniqueWithoutVendaanimalInput instance) =>
        <String, dynamic>{
          'where': instance.where.toJson(),
          'update': instance.update.toJson(),
          'create': instance.create.toJson(),
        };

ItensvendaUpdateWithWhereUniqueWithoutVendaanimalInput
    _$ItensvendaUpdateWithWhereUniqueWithoutVendaanimalInputFromJson(
            Map<String, dynamic> json) =>
        ItensvendaUpdateWithWhereUniqueWithoutVendaanimalInput(
          where: ItensvendaWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: ItensvendaUpdateWithoutVendaanimalInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$ItensvendaUpdateWithWhereUniqueWithoutVendaanimalInputToJson(
            ItensvendaUpdateWithWhereUniqueWithoutVendaanimalInput instance) =>
        <String, dynamic>{
          'where': instance.where.toJson(),
          'data': instance.data.toJson(),
        };

ItensvendaUpdateManyWithWhereWithoutVendaanimalInput
    _$ItensvendaUpdateManyWithWhereWithoutVendaanimalInputFromJson(
            Map<String, dynamic> json) =>
        ItensvendaUpdateManyWithWhereWithoutVendaanimalInput(
          where: ItensvendaScalarWhereInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: ItensvendaUpdateManyMutationInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$ItensvendaUpdateManyWithWhereWithoutVendaanimalInputToJson(
            ItensvendaUpdateManyWithWhereWithoutVendaanimalInput instance) =>
        <String, dynamic>{
          'where': instance.where.toJson(),
          'data': instance.data.toJson(),
        };

CompradorUpsertWithoutVendaanimalInput
    _$CompradorUpsertWithoutVendaanimalInputFromJson(
            Map<String, dynamic> json) =>
        CompradorUpsertWithoutVendaanimalInput(
          update: CompradorUpdateWithoutVendaanimalInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: CompradorCreateWithoutVendaanimalInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CompradorUpsertWithoutVendaanimalInputToJson(
        CompradorUpsertWithoutVendaanimalInput instance) =>
    <String, dynamic>{
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

CompradorUpdateWithoutVendaanimalInput
    _$CompradorUpdateWithoutVendaanimalInputFromJson(
            Map<String, dynamic> json) =>
        CompradorUpdateWithoutVendaanimalInput(
          codComprador: json['codComprador'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codComprador'] as Map<String, dynamic>),
          nome: json['nome'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['nome'] as Map<String, dynamic>),
          telefone: json['telefone'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['telefone'] as Map<String, dynamic>),
          endereco: json['endereco'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['endereco'] as Map<String, dynamic>),
          vendaleite: json['vendaleite'] == null
              ? null
              : VendaleiteUpdateManyWithoutCompradorNestedInput.fromJson(
                  json['vendaleite'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CompradorUpdateWithoutVendaanimalInputToJson(
    CompradorUpdateWithoutVendaanimalInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codComprador', instance.codComprador?.toJson());
  writeNotNull('nome', instance.nome?.toJson());
  writeNotNull('telefone', instance.telefone?.toJson());
  writeNotNull('endereco', instance.endereco?.toJson());
  writeNotNull('vendaleite', instance.vendaleite?.toJson());
  return val;
}

CompradorUncheckedUpdateWithoutVendaanimalInput
    _$CompradorUncheckedUpdateWithoutVendaanimalInputFromJson(
            Map<String, dynamic> json) =>
        CompradorUncheckedUpdateWithoutVendaanimalInput(
          codComprador: json['codComprador'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codComprador'] as Map<String, dynamic>),
          nome: json['nome'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['nome'] as Map<String, dynamic>),
          telefone: json['telefone'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['telefone'] as Map<String, dynamic>),
          endereco: json['endereco'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['endereco'] as Map<String, dynamic>),
          vendaleite: json['vendaleite'] == null
              ? null
              : VendaleiteUncheckedUpdateManyWithoutCompradorNestedInput
                  .fromJson(json['vendaleite'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CompradorUncheckedUpdateWithoutVendaanimalInputToJson(
    CompradorUncheckedUpdateWithoutVendaanimalInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codComprador', instance.codComprador?.toJson());
  writeNotNull('nome', instance.nome?.toJson());
  writeNotNull('telefone', instance.telefone?.toJson());
  writeNotNull('endereco', instance.endereco?.toJson());
  writeNotNull('vendaleite', instance.vendaleite?.toJson());
  return val;
}

CompradorCreateWithoutVendaleiteInput
    _$CompradorCreateWithoutVendaleiteInputFromJson(
            Map<String, dynamic> json) =>
        CompradorCreateWithoutVendaleiteInput(
          codComprador: json['codComprador'] as int,
          nome: json['nome'] as String,
          telefone: json['telefone'] as String,
          endereco: json['endereco'] as String,
          vendaanimal: json['vendaanimal'] == null
              ? null
              : VendaanimalCreateNestedManyWithoutCompradorInput.fromJson(
                  json['vendaanimal'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CompradorCreateWithoutVendaleiteInputToJson(
    CompradorCreateWithoutVendaleiteInput instance) {
  final val = <String, dynamic>{
    'codComprador': instance.codComprador,
    'nome': instance.nome,
    'telefone': instance.telefone,
    'endereco': instance.endereco,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('vendaanimal', instance.vendaanimal?.toJson());
  return val;
}

CompradorUncheckedCreateWithoutVendaleiteInput
    _$CompradorUncheckedCreateWithoutVendaleiteInputFromJson(
            Map<String, dynamic> json) =>
        CompradorUncheckedCreateWithoutVendaleiteInput(
          codComprador: json['codComprador'] as int,
          nome: json['nome'] as String,
          telefone: json['telefone'] as String,
          endereco: json['endereco'] as String,
          vendaanimal: json['vendaanimal'] == null
              ? null
              : VendaanimalUncheckedCreateNestedManyWithoutCompradorInput
                  .fromJson(json['vendaanimal'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CompradorUncheckedCreateWithoutVendaleiteInputToJson(
    CompradorUncheckedCreateWithoutVendaleiteInput instance) {
  final val = <String, dynamic>{
    'codComprador': instance.codComprador,
    'nome': instance.nome,
    'telefone': instance.telefone,
    'endereco': instance.endereco,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('vendaanimal', instance.vendaanimal?.toJson());
  return val;
}

CompradorCreateOrConnectWithoutVendaleiteInput
    _$CompradorCreateOrConnectWithoutVendaleiteInputFromJson(
            Map<String, dynamic> json) =>
        CompradorCreateOrConnectWithoutVendaleiteInput(
          where: CompradorWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: CompradorCreateWithoutVendaleiteInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CompradorCreateOrConnectWithoutVendaleiteInputToJson(
        CompradorCreateOrConnectWithoutVendaleiteInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

CompradorUpsertWithoutVendaleiteInput
    _$CompradorUpsertWithoutVendaleiteInputFromJson(
            Map<String, dynamic> json) =>
        CompradorUpsertWithoutVendaleiteInput(
          update: CompradorUpdateWithoutVendaleiteInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: CompradorCreateWithoutVendaleiteInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CompradorUpsertWithoutVendaleiteInputToJson(
        CompradorUpsertWithoutVendaleiteInput instance) =>
    <String, dynamic>{
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

CompradorUpdateWithoutVendaleiteInput
    _$CompradorUpdateWithoutVendaleiteInputFromJson(
            Map<String, dynamic> json) =>
        CompradorUpdateWithoutVendaleiteInput(
          codComprador: json['codComprador'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codComprador'] as Map<String, dynamic>),
          nome: json['nome'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['nome'] as Map<String, dynamic>),
          telefone: json['telefone'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['telefone'] as Map<String, dynamic>),
          endereco: json['endereco'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['endereco'] as Map<String, dynamic>),
          vendaanimal: json['vendaanimal'] == null
              ? null
              : VendaanimalUpdateManyWithoutCompradorNestedInput.fromJson(
                  json['vendaanimal'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CompradorUpdateWithoutVendaleiteInputToJson(
    CompradorUpdateWithoutVendaleiteInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codComprador', instance.codComprador?.toJson());
  writeNotNull('nome', instance.nome?.toJson());
  writeNotNull('telefone', instance.telefone?.toJson());
  writeNotNull('endereco', instance.endereco?.toJson());
  writeNotNull('vendaanimal', instance.vendaanimal?.toJson());
  return val;
}

CompradorUncheckedUpdateWithoutVendaleiteInput
    _$CompradorUncheckedUpdateWithoutVendaleiteInputFromJson(
            Map<String, dynamic> json) =>
        CompradorUncheckedUpdateWithoutVendaleiteInput(
          codComprador: json['codComprador'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codComprador'] as Map<String, dynamic>),
          nome: json['nome'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['nome'] as Map<String, dynamic>),
          telefone: json['telefone'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['telefone'] as Map<String, dynamic>),
          endereco: json['endereco'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['endereco'] as Map<String, dynamic>),
          vendaanimal: json['vendaanimal'] == null
              ? null
              : VendaanimalUncheckedUpdateManyWithoutCompradorNestedInput
                  .fromJson(json['vendaanimal'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CompradorUncheckedUpdateWithoutVendaleiteInputToJson(
    CompradorUncheckedUpdateWithoutVendaleiteInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codComprador', instance.codComprador?.toJson());
  writeNotNull('nome', instance.nome?.toJson());
  writeNotNull('telefone', instance.telefone?.toJson());
  writeNotNull('endereco', instance.endereco?.toJson());
  writeNotNull('vendaanimal', instance.vendaanimal?.toJson());
  return val;
}

ItensvendaCreateManyAnimalInput _$ItensvendaCreateManyAnimalInputFromJson(
        Map<String, dynamic> json) =>
    ItensvendaCreateManyAnimalInput(
      codItensVenda: json['codItensVenda'] as int,
      codVendaAnimal: json['codVendaAnimal'] as int,
      quantidade: json['quantidade'] as int,
      valorUnitario: (json['valorUnitario'] as num).toDouble(),
    );

Map<String, dynamic> _$ItensvendaCreateManyAnimalInputToJson(
        ItensvendaCreateManyAnimalInput instance) =>
    <String, dynamic>{
      'codItensVenda': instance.codItensVenda,
      'codVendaAnimal': instance.codVendaAnimal,
      'quantidade': instance.quantidade,
      'valorUnitario': instance.valorUnitario,
    };

ItensvendaUpdateWithoutAnimalInput _$ItensvendaUpdateWithoutAnimalInputFromJson(
        Map<String, dynamic> json) =>
    ItensvendaUpdateWithoutAnimalInput(
      codItensVenda: json['codItensVenda'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codItensVenda'] as Map<String, dynamic>),
      quantidade: json['quantidade'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['quantidade'] as Map<String, dynamic>),
      valorUnitario: json['valorUnitario'] == null
          ? null
          : FloatFieldUpdateOperationsInput.fromJson(
              json['valorUnitario'] as Map<String, dynamic>),
      vendaanimal: json['vendaanimal'] == null
          ? null
          : VendaanimalUpdateOneRequiredWithoutItensvendaNestedInput.fromJson(
              json['vendaanimal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItensvendaUpdateWithoutAnimalInputToJson(
    ItensvendaUpdateWithoutAnimalInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codItensVenda', instance.codItensVenda?.toJson());
  writeNotNull('quantidade', instance.quantidade?.toJson());
  writeNotNull('valorUnitario', instance.valorUnitario?.toJson());
  writeNotNull('vendaanimal', instance.vendaanimal?.toJson());
  return val;
}

ItensvendaUncheckedUpdateWithoutAnimalInput
    _$ItensvendaUncheckedUpdateWithoutAnimalInputFromJson(
            Map<String, dynamic> json) =>
        ItensvendaUncheckedUpdateWithoutAnimalInput(
          codItensVenda: json['codItensVenda'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codItensVenda'] as Map<String, dynamic>),
          codVendaAnimal: json['codVendaAnimal'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codVendaAnimal'] as Map<String, dynamic>),
          quantidade: json['quantidade'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['quantidade'] as Map<String, dynamic>),
          valorUnitario: json['valorUnitario'] == null
              ? null
              : FloatFieldUpdateOperationsInput.fromJson(
                  json['valorUnitario'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ItensvendaUncheckedUpdateWithoutAnimalInputToJson(
    ItensvendaUncheckedUpdateWithoutAnimalInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codItensVenda', instance.codItensVenda?.toJson());
  writeNotNull('codVendaAnimal', instance.codVendaAnimal?.toJson());
  writeNotNull('quantidade', instance.quantidade?.toJson());
  writeNotNull('valorUnitario', instance.valorUnitario?.toJson());
  return val;
}

ItensvendaUncheckedUpdateManyWithoutItensvendaInput
    _$ItensvendaUncheckedUpdateManyWithoutItensvendaInputFromJson(
            Map<String, dynamic> json) =>
        ItensvendaUncheckedUpdateManyWithoutItensvendaInput(
          codItensVenda: json['codItensVenda'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codItensVenda'] as Map<String, dynamic>),
          codVendaAnimal: json['codVendaAnimal'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codVendaAnimal'] as Map<String, dynamic>),
          quantidade: json['quantidade'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['quantidade'] as Map<String, dynamic>),
          valorUnitario: json['valorUnitario'] == null
              ? null
              : FloatFieldUpdateOperationsInput.fromJson(
                  json['valorUnitario'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$ItensvendaUncheckedUpdateManyWithoutItensvendaInputToJson(
        ItensvendaUncheckedUpdateManyWithoutItensvendaInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codItensVenda', instance.codItensVenda?.toJson());
  writeNotNull('codVendaAnimal', instance.codVendaAnimal?.toJson());
  writeNotNull('quantidade', instance.quantidade?.toJson());
  writeNotNull('valorUnitario', instance.valorUnitario?.toJson());
  return val;
}

AnimalCreateManyCategoriaInput _$AnimalCreateManyCategoriaInputFromJson(
        Map<String, dynamic> json) =>
    AnimalCreateManyCategoriaInput(
      codAnimal: json['codAnimal'] as int,
      codProdLeite: json['codProdLeite'] as int,
      nome: json['nome'] as String,
      dataNascimento: const DateTimeJsonConverter()
          .fromJson(json['dataNascimento'] as String),
      sexo: json['sexo'] as String,
      raca: json['raca'] as String,
      idade: json['idade'] as int,
      formaManejo: json['formaManejo'] as String,
      mediaLeite: (json['mediaLeite'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AnimalCreateManyCategoriaInputToJson(
    AnimalCreateManyCategoriaInput instance) {
  final val = <String, dynamic>{
    'codAnimal': instance.codAnimal,
    'codProdLeite': instance.codProdLeite,
    'nome': instance.nome,
    'dataNascimento':
        const DateTimeJsonConverter().toJson(instance.dataNascimento),
    'sexo': instance.sexo,
    'raca': instance.raca,
    'idade': instance.idade,
    'formaManejo': instance.formaManejo,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('mediaLeite', instance.mediaLeite);
  return val;
}

AnimalUpdateWithoutCategoriaInput _$AnimalUpdateWithoutCategoriaInputFromJson(
        Map<String, dynamic> json) =>
    AnimalUpdateWithoutCategoriaInput(
      codAnimal: json['codAnimal'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codAnimal'] as Map<String, dynamic>),
      nome: json['nome'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['nome'] as Map<String, dynamic>),
      dataNascimento: json['dataNascimento'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['dataNascimento'] as Map<String, dynamic>),
      sexo: json['sexo'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['sexo'] as Map<String, dynamic>),
      raca: json['raca'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['raca'] as Map<String, dynamic>),
      idade: json['idade'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['idade'] as Map<String, dynamic>),
      formaManejo: json['formaManejo'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['formaManejo'] as Map<String, dynamic>),
      mediaLeite: json['mediaLeite'] == null
          ? null
          : NullableFloatFieldUpdateOperationsInput.fromJson(
              json['mediaLeite'] as Map<String, dynamic>),
      prodleite: json['prodleite'] == null
          ? null
          : ProdleiteUpdateOneRequiredWithoutAnimalNestedInput.fromJson(
              json['prodleite'] as Map<String, dynamic>),
      itensvenda: json['itensvenda'] == null
          ? null
          : ItensvendaUpdateManyWithoutAnimalNestedInput.fromJson(
              json['itensvenda'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimalUpdateWithoutCategoriaInputToJson(
    AnimalUpdateWithoutCategoriaInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codAnimal', instance.codAnimal?.toJson());
  writeNotNull('nome', instance.nome?.toJson());
  writeNotNull('dataNascimento', instance.dataNascimento?.toJson());
  writeNotNull('sexo', instance.sexo?.toJson());
  writeNotNull('raca', instance.raca?.toJson());
  writeNotNull('idade', instance.idade?.toJson());
  writeNotNull('formaManejo', instance.formaManejo?.toJson());
  writeNotNull('mediaLeite', instance.mediaLeite?.toJson());
  writeNotNull('prodleite', instance.prodleite?.toJson());
  writeNotNull('itensvenda', instance.itensvenda?.toJson());
  return val;
}

AnimalUncheckedUpdateWithoutCategoriaInput
    _$AnimalUncheckedUpdateWithoutCategoriaInputFromJson(
            Map<String, dynamic> json) =>
        AnimalUncheckedUpdateWithoutCategoriaInput(
          codAnimal: json['codAnimal'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codAnimal'] as Map<String, dynamic>),
          codProdLeite: json['codProdLeite'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codProdLeite'] as Map<String, dynamic>),
          nome: json['nome'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['nome'] as Map<String, dynamic>),
          dataNascimento: json['dataNascimento'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['dataNascimento'] as Map<String, dynamic>),
          sexo: json['sexo'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['sexo'] as Map<String, dynamic>),
          raca: json['raca'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['raca'] as Map<String, dynamic>),
          idade: json['idade'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['idade'] as Map<String, dynamic>),
          formaManejo: json['formaManejo'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['formaManejo'] as Map<String, dynamic>),
          mediaLeite: json['mediaLeite'] == null
              ? null
              : NullableFloatFieldUpdateOperationsInput.fromJson(
                  json['mediaLeite'] as Map<String, dynamic>),
          itensvenda: json['itensvenda'] == null
              ? null
              : ItensvendaUncheckedUpdateManyWithoutAnimalNestedInput.fromJson(
                  json['itensvenda'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AnimalUncheckedUpdateWithoutCategoriaInputToJson(
    AnimalUncheckedUpdateWithoutCategoriaInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codAnimal', instance.codAnimal?.toJson());
  writeNotNull('codProdLeite', instance.codProdLeite?.toJson());
  writeNotNull('nome', instance.nome?.toJson());
  writeNotNull('dataNascimento', instance.dataNascimento?.toJson());
  writeNotNull('sexo', instance.sexo?.toJson());
  writeNotNull('raca', instance.raca?.toJson());
  writeNotNull('idade', instance.idade?.toJson());
  writeNotNull('formaManejo', instance.formaManejo?.toJson());
  writeNotNull('mediaLeite', instance.mediaLeite?.toJson());
  writeNotNull('itensvenda', instance.itensvenda?.toJson());
  return val;
}

AnimalUncheckedUpdateManyWithoutAnimalInput
    _$AnimalUncheckedUpdateManyWithoutAnimalInputFromJson(
            Map<String, dynamic> json) =>
        AnimalUncheckedUpdateManyWithoutAnimalInput(
          codAnimal: json['codAnimal'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codAnimal'] as Map<String, dynamic>),
          codProdLeite: json['codProdLeite'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codProdLeite'] as Map<String, dynamic>),
          nome: json['nome'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['nome'] as Map<String, dynamic>),
          dataNascimento: json['dataNascimento'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['dataNascimento'] as Map<String, dynamic>),
          sexo: json['sexo'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['sexo'] as Map<String, dynamic>),
          raca: json['raca'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['raca'] as Map<String, dynamic>),
          idade: json['idade'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['idade'] as Map<String, dynamic>),
          formaManejo: json['formaManejo'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['formaManejo'] as Map<String, dynamic>),
          mediaLeite: json['mediaLeite'] == null
              ? null
              : NullableFloatFieldUpdateOperationsInput.fromJson(
                  json['mediaLeite'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AnimalUncheckedUpdateManyWithoutAnimalInputToJson(
    AnimalUncheckedUpdateManyWithoutAnimalInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codAnimal', instance.codAnimal?.toJson());
  writeNotNull('codProdLeite', instance.codProdLeite?.toJson());
  writeNotNull('nome', instance.nome?.toJson());
  writeNotNull('dataNascimento', instance.dataNascimento?.toJson());
  writeNotNull('sexo', instance.sexo?.toJson());
  writeNotNull('raca', instance.raca?.toJson());
  writeNotNull('idade', instance.idade?.toJson());
  writeNotNull('formaManejo', instance.formaManejo?.toJson());
  writeNotNull('mediaLeite', instance.mediaLeite?.toJson());
  return val;
}

VendaanimalCreateManyCompradorInput
    _$VendaanimalCreateManyCompradorInputFromJson(Map<String, dynamic> json) =>
        VendaanimalCreateManyCompradorInput(
          codVendaAnimal: json['codVendaAnimal'] as int,
          dataVendaAnimal: const DateTimeJsonConverter()
              .fromJson(json['dataVendaAnimal'] as String),
          valorTotalAnimal: (json['valorTotalAnimal'] as num).toDouble(),
        );

Map<String, dynamic> _$VendaanimalCreateManyCompradorInputToJson(
        VendaanimalCreateManyCompradorInput instance) =>
    <String, dynamic>{
      'codVendaAnimal': instance.codVendaAnimal,
      'dataVendaAnimal':
          const DateTimeJsonConverter().toJson(instance.dataVendaAnimal),
      'valorTotalAnimal': instance.valorTotalAnimal,
    };

VendaleiteCreateManyCompradorInput _$VendaleiteCreateManyCompradorInputFromJson(
        Map<String, dynamic> json) =>
    VendaleiteCreateManyCompradorInput(
      codVendaLeite: json['codVendaLeite'] as int,
      dataVendaLeite: const DateTimeJsonConverter()
          .fromJson(json['dataVendaLeite'] as String),
      quantidadeLeite: (json['quantidadeLeite'] as num).toDouble(),
      valorTotalLeite: (json['valorTotalLeite'] as num).toDouble(),
    );

Map<String, dynamic> _$VendaleiteCreateManyCompradorInputToJson(
        VendaleiteCreateManyCompradorInput instance) =>
    <String, dynamic>{
      'codVendaLeite': instance.codVendaLeite,
      'dataVendaLeite':
          const DateTimeJsonConverter().toJson(instance.dataVendaLeite),
      'quantidadeLeite': instance.quantidadeLeite,
      'valorTotalLeite': instance.valorTotalLeite,
    };

VendaanimalUpdateWithoutCompradorInput
    _$VendaanimalUpdateWithoutCompradorInputFromJson(
            Map<String, dynamic> json) =>
        VendaanimalUpdateWithoutCompradorInput(
          codVendaAnimal: json['codVendaAnimal'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codVendaAnimal'] as Map<String, dynamic>),
          dataVendaAnimal: json['dataVendaAnimal'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['dataVendaAnimal'] as Map<String, dynamic>),
          valorTotalAnimal: json['valorTotalAnimal'] == null
              ? null
              : FloatFieldUpdateOperationsInput.fromJson(
                  json['valorTotalAnimal'] as Map<String, dynamic>),
          itensvenda: json['itensvenda'] == null
              ? null
              : ItensvendaUpdateManyWithoutVendaanimalNestedInput.fromJson(
                  json['itensvenda'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$VendaanimalUpdateWithoutCompradorInputToJson(
    VendaanimalUpdateWithoutCompradorInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaAnimal', instance.codVendaAnimal?.toJson());
  writeNotNull('dataVendaAnimal', instance.dataVendaAnimal?.toJson());
  writeNotNull('valorTotalAnimal', instance.valorTotalAnimal?.toJson());
  writeNotNull('itensvenda', instance.itensvenda?.toJson());
  return val;
}

VendaanimalUncheckedUpdateWithoutCompradorInput
    _$VendaanimalUncheckedUpdateWithoutCompradorInputFromJson(
            Map<String, dynamic> json) =>
        VendaanimalUncheckedUpdateWithoutCompradorInput(
          codVendaAnimal: json['codVendaAnimal'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codVendaAnimal'] as Map<String, dynamic>),
          dataVendaAnimal: json['dataVendaAnimal'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['dataVendaAnimal'] as Map<String, dynamic>),
          valorTotalAnimal: json['valorTotalAnimal'] == null
              ? null
              : FloatFieldUpdateOperationsInput.fromJson(
                  json['valorTotalAnimal'] as Map<String, dynamic>),
          itensvenda: json['itensvenda'] == null
              ? null
              : ItensvendaUncheckedUpdateManyWithoutVendaanimalNestedInput
                  .fromJson(json['itensvenda'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$VendaanimalUncheckedUpdateWithoutCompradorInputToJson(
    VendaanimalUncheckedUpdateWithoutCompradorInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaAnimal', instance.codVendaAnimal?.toJson());
  writeNotNull('dataVendaAnimal', instance.dataVendaAnimal?.toJson());
  writeNotNull('valorTotalAnimal', instance.valorTotalAnimal?.toJson());
  writeNotNull('itensvenda', instance.itensvenda?.toJson());
  return val;
}

VendaanimalUncheckedUpdateManyWithoutVendaanimalInput
    _$VendaanimalUncheckedUpdateManyWithoutVendaanimalInputFromJson(
            Map<String, dynamic> json) =>
        VendaanimalUncheckedUpdateManyWithoutVendaanimalInput(
          codVendaAnimal: json['codVendaAnimal'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codVendaAnimal'] as Map<String, dynamic>),
          dataVendaAnimal: json['dataVendaAnimal'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['dataVendaAnimal'] as Map<String, dynamic>),
          valorTotalAnimal: json['valorTotalAnimal'] == null
              ? null
              : FloatFieldUpdateOperationsInput.fromJson(
                  json['valorTotalAnimal'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$VendaanimalUncheckedUpdateManyWithoutVendaanimalInputToJson(
        VendaanimalUncheckedUpdateManyWithoutVendaanimalInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaAnimal', instance.codVendaAnimal?.toJson());
  writeNotNull('dataVendaAnimal', instance.dataVendaAnimal?.toJson());
  writeNotNull('valorTotalAnimal', instance.valorTotalAnimal?.toJson());
  return val;
}

VendaleiteUpdateWithoutCompradorInput
    _$VendaleiteUpdateWithoutCompradorInputFromJson(
            Map<String, dynamic> json) =>
        VendaleiteUpdateWithoutCompradorInput(
          codVendaLeite: json['codVendaLeite'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codVendaLeite'] as Map<String, dynamic>),
          dataVendaLeite: json['dataVendaLeite'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['dataVendaLeite'] as Map<String, dynamic>),
          quantidadeLeite: json['quantidadeLeite'] == null
              ? null
              : FloatFieldUpdateOperationsInput.fromJson(
                  json['quantidadeLeite'] as Map<String, dynamic>),
          valorTotalLeite: json['valorTotalLeite'] == null
              ? null
              : FloatFieldUpdateOperationsInput.fromJson(
                  json['valorTotalLeite'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$VendaleiteUpdateWithoutCompradorInputToJson(
    VendaleiteUpdateWithoutCompradorInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaLeite', instance.codVendaLeite?.toJson());
  writeNotNull('dataVendaLeite', instance.dataVendaLeite?.toJson());
  writeNotNull('quantidadeLeite', instance.quantidadeLeite?.toJson());
  writeNotNull('valorTotalLeite', instance.valorTotalLeite?.toJson());
  return val;
}

VendaleiteUncheckedUpdateWithoutCompradorInput
    _$VendaleiteUncheckedUpdateWithoutCompradorInputFromJson(
            Map<String, dynamic> json) =>
        VendaleiteUncheckedUpdateWithoutCompradorInput(
          codVendaLeite: json['codVendaLeite'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codVendaLeite'] as Map<String, dynamic>),
          dataVendaLeite: json['dataVendaLeite'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['dataVendaLeite'] as Map<String, dynamic>),
          quantidadeLeite: json['quantidadeLeite'] == null
              ? null
              : FloatFieldUpdateOperationsInput.fromJson(
                  json['quantidadeLeite'] as Map<String, dynamic>),
          valorTotalLeite: json['valorTotalLeite'] == null
              ? null
              : FloatFieldUpdateOperationsInput.fromJson(
                  json['valorTotalLeite'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$VendaleiteUncheckedUpdateWithoutCompradorInputToJson(
    VendaleiteUncheckedUpdateWithoutCompradorInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaLeite', instance.codVendaLeite?.toJson());
  writeNotNull('dataVendaLeite', instance.dataVendaLeite?.toJson());
  writeNotNull('quantidadeLeite', instance.quantidadeLeite?.toJson());
  writeNotNull('valorTotalLeite', instance.valorTotalLeite?.toJson());
  return val;
}

VendaleiteUncheckedUpdateManyWithoutVendaleiteInput
    _$VendaleiteUncheckedUpdateManyWithoutVendaleiteInputFromJson(
            Map<String, dynamic> json) =>
        VendaleiteUncheckedUpdateManyWithoutVendaleiteInput(
          codVendaLeite: json['codVendaLeite'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codVendaLeite'] as Map<String, dynamic>),
          dataVendaLeite: json['dataVendaLeite'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['dataVendaLeite'] as Map<String, dynamic>),
          quantidadeLeite: json['quantidadeLeite'] == null
              ? null
              : FloatFieldUpdateOperationsInput.fromJson(
                  json['quantidadeLeite'] as Map<String, dynamic>),
          valorTotalLeite: json['valorTotalLeite'] == null
              ? null
              : FloatFieldUpdateOperationsInput.fromJson(
                  json['valorTotalLeite'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$VendaleiteUncheckedUpdateManyWithoutVendaleiteInputToJson(
        VendaleiteUncheckedUpdateManyWithoutVendaleiteInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaLeite', instance.codVendaLeite?.toJson());
  writeNotNull('dataVendaLeite', instance.dataVendaLeite?.toJson());
  writeNotNull('quantidadeLeite', instance.quantidadeLeite?.toJson());
  writeNotNull('valorTotalLeite', instance.valorTotalLeite?.toJson());
  return val;
}

AnimalCreateManyProdleiteInput _$AnimalCreateManyProdleiteInputFromJson(
        Map<String, dynamic> json) =>
    AnimalCreateManyProdleiteInput(
      codAnimal: json['codAnimal'] as int,
      codCategoria: json['codCategoria'] as int,
      nome: json['nome'] as String,
      dataNascimento: const DateTimeJsonConverter()
          .fromJson(json['dataNascimento'] as String),
      sexo: json['sexo'] as String,
      raca: json['raca'] as String,
      idade: json['idade'] as int,
      formaManejo: json['formaManejo'] as String,
      mediaLeite: (json['mediaLeite'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AnimalCreateManyProdleiteInputToJson(
    AnimalCreateManyProdleiteInput instance) {
  final val = <String, dynamic>{
    'codAnimal': instance.codAnimal,
    'codCategoria': instance.codCategoria,
    'nome': instance.nome,
    'dataNascimento':
        const DateTimeJsonConverter().toJson(instance.dataNascimento),
    'sexo': instance.sexo,
    'raca': instance.raca,
    'idade': instance.idade,
    'formaManejo': instance.formaManejo,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('mediaLeite', instance.mediaLeite);
  return val;
}

AnimalUpdateWithoutProdleiteInput _$AnimalUpdateWithoutProdleiteInputFromJson(
        Map<String, dynamic> json) =>
    AnimalUpdateWithoutProdleiteInput(
      codAnimal: json['codAnimal'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['codAnimal'] as Map<String, dynamic>),
      nome: json['nome'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['nome'] as Map<String, dynamic>),
      dataNascimento: json['dataNascimento'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['dataNascimento'] as Map<String, dynamic>),
      sexo: json['sexo'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['sexo'] as Map<String, dynamic>),
      raca: json['raca'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['raca'] as Map<String, dynamic>),
      idade: json['idade'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['idade'] as Map<String, dynamic>),
      formaManejo: json['formaManejo'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['formaManejo'] as Map<String, dynamic>),
      mediaLeite: json['mediaLeite'] == null
          ? null
          : NullableFloatFieldUpdateOperationsInput.fromJson(
              json['mediaLeite'] as Map<String, dynamic>),
      categoria: json['categoria'] == null
          ? null
          : CategoriaUpdateOneRequiredWithoutAnimalNestedInput.fromJson(
              json['categoria'] as Map<String, dynamic>),
      itensvenda: json['itensvenda'] == null
          ? null
          : ItensvendaUpdateManyWithoutAnimalNestedInput.fromJson(
              json['itensvenda'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimalUpdateWithoutProdleiteInputToJson(
    AnimalUpdateWithoutProdleiteInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codAnimal', instance.codAnimal?.toJson());
  writeNotNull('nome', instance.nome?.toJson());
  writeNotNull('dataNascimento', instance.dataNascimento?.toJson());
  writeNotNull('sexo', instance.sexo?.toJson());
  writeNotNull('raca', instance.raca?.toJson());
  writeNotNull('idade', instance.idade?.toJson());
  writeNotNull('formaManejo', instance.formaManejo?.toJson());
  writeNotNull('mediaLeite', instance.mediaLeite?.toJson());
  writeNotNull('categoria', instance.categoria?.toJson());
  writeNotNull('itensvenda', instance.itensvenda?.toJson());
  return val;
}

AnimalUncheckedUpdateWithoutProdleiteInput
    _$AnimalUncheckedUpdateWithoutProdleiteInputFromJson(
            Map<String, dynamic> json) =>
        AnimalUncheckedUpdateWithoutProdleiteInput(
          codAnimal: json['codAnimal'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codAnimal'] as Map<String, dynamic>),
          codCategoria: json['codCategoria'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codCategoria'] as Map<String, dynamic>),
          nome: json['nome'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['nome'] as Map<String, dynamic>),
          dataNascimento: json['dataNascimento'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['dataNascimento'] as Map<String, dynamic>),
          sexo: json['sexo'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['sexo'] as Map<String, dynamic>),
          raca: json['raca'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['raca'] as Map<String, dynamic>),
          idade: json['idade'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['idade'] as Map<String, dynamic>),
          formaManejo: json['formaManejo'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['formaManejo'] as Map<String, dynamic>),
          mediaLeite: json['mediaLeite'] == null
              ? null
              : NullableFloatFieldUpdateOperationsInput.fromJson(
                  json['mediaLeite'] as Map<String, dynamic>),
          itensvenda: json['itensvenda'] == null
              ? null
              : ItensvendaUncheckedUpdateManyWithoutAnimalNestedInput.fromJson(
                  json['itensvenda'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AnimalUncheckedUpdateWithoutProdleiteInputToJson(
    AnimalUncheckedUpdateWithoutProdleiteInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codAnimal', instance.codAnimal?.toJson());
  writeNotNull('codCategoria', instance.codCategoria?.toJson());
  writeNotNull('nome', instance.nome?.toJson());
  writeNotNull('dataNascimento', instance.dataNascimento?.toJson());
  writeNotNull('sexo', instance.sexo?.toJson());
  writeNotNull('raca', instance.raca?.toJson());
  writeNotNull('idade', instance.idade?.toJson());
  writeNotNull('formaManejo', instance.formaManejo?.toJson());
  writeNotNull('mediaLeite', instance.mediaLeite?.toJson());
  writeNotNull('itensvenda', instance.itensvenda?.toJson());
  return val;
}

ItensvendaCreateManyVendaanimalInput
    _$ItensvendaCreateManyVendaanimalInputFromJson(Map<String, dynamic> json) =>
        ItensvendaCreateManyVendaanimalInput(
          codItensVenda: json['codItensVenda'] as int,
          codAnimal: json['codAnimal'] as int,
          quantidade: json['quantidade'] as int,
          valorUnitario: (json['valorUnitario'] as num).toDouble(),
        );

Map<String, dynamic> _$ItensvendaCreateManyVendaanimalInputToJson(
        ItensvendaCreateManyVendaanimalInput instance) =>
    <String, dynamic>{
      'codItensVenda': instance.codItensVenda,
      'codAnimal': instance.codAnimal,
      'quantidade': instance.quantidade,
      'valorUnitario': instance.valorUnitario,
    };

ItensvendaUpdateWithoutVendaanimalInput
    _$ItensvendaUpdateWithoutVendaanimalInputFromJson(
            Map<String, dynamic> json) =>
        ItensvendaUpdateWithoutVendaanimalInput(
          codItensVenda: json['codItensVenda'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codItensVenda'] as Map<String, dynamic>),
          quantidade: json['quantidade'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['quantidade'] as Map<String, dynamic>),
          valorUnitario: json['valorUnitario'] == null
              ? null
              : FloatFieldUpdateOperationsInput.fromJson(
                  json['valorUnitario'] as Map<String, dynamic>),
          animal: json['animal'] == null
              ? null
              : AnimalUpdateOneRequiredWithoutItensvendaNestedInput.fromJson(
                  json['animal'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ItensvendaUpdateWithoutVendaanimalInputToJson(
    ItensvendaUpdateWithoutVendaanimalInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codItensVenda', instance.codItensVenda?.toJson());
  writeNotNull('quantidade', instance.quantidade?.toJson());
  writeNotNull('valorUnitario', instance.valorUnitario?.toJson());
  writeNotNull('animal', instance.animal?.toJson());
  return val;
}

ItensvendaUncheckedUpdateWithoutVendaanimalInput
    _$ItensvendaUncheckedUpdateWithoutVendaanimalInputFromJson(
            Map<String, dynamic> json) =>
        ItensvendaUncheckedUpdateWithoutVendaanimalInput(
          codItensVenda: json['codItensVenda'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codItensVenda'] as Map<String, dynamic>),
          codAnimal: json['codAnimal'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['codAnimal'] as Map<String, dynamic>),
          quantidade: json['quantidade'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['quantidade'] as Map<String, dynamic>),
          valorUnitario: json['valorUnitario'] == null
              ? null
              : FloatFieldUpdateOperationsInput.fromJson(
                  json['valorUnitario'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ItensvendaUncheckedUpdateWithoutVendaanimalInputToJson(
    ItensvendaUncheckedUpdateWithoutVendaanimalInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codItensVenda', instance.codItensVenda?.toJson());
  writeNotNull('codAnimal', instance.codAnimal?.toJson());
  writeNotNull('quantidade', instance.quantidade?.toJson());
  writeNotNull('valorUnitario', instance.valorUnitario?.toJson());
  return val;
}

Animal _$AnimalFromJson(Map<String, dynamic> json) => Animal(
      codAnimal: json['codAnimal'] as int,
      codProdLeite: json['codProdLeite'] as int,
      codCategoria: json['codCategoria'] as int,
      nome: json['nome'] as String,
      dataNascimento: const DateTimeJsonConverter()
          .fromJson(json['dataNascimento'] as String),
      sexo: json['sexo'] as String,
      raca: json['raca'] as String,
      idade: json['idade'] as int,
      formaManejo: json['formaManejo'] as String,
      mediaLeite: (json['mediaLeite'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AnimalToJson(Animal instance) {
  final val = <String, dynamic>{
    'codAnimal': instance.codAnimal,
    'codProdLeite': instance.codProdLeite,
    'codCategoria': instance.codCategoria,
    'nome': instance.nome,
    'dataNascimento':
        const DateTimeJsonConverter().toJson(instance.dataNascimento),
    'sexo': instance.sexo,
    'raca': instance.raca,
    'idade': instance.idade,
    'formaManejo': instance.formaManejo,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('mediaLeite', instance.mediaLeite);
  return val;
}

Categoria _$CategoriaFromJson(Map<String, dynamic> json) => Categoria(
      codCategoria: json['codCategoria'] as int,
      tipo: json['tipo'] as String,
    );

Map<String, dynamic> _$CategoriaToJson(Categoria instance) => <String, dynamic>{
      'codCategoria': instance.codCategoria,
      'tipo': instance.tipo,
    };

Comprador _$CompradorFromJson(Map<String, dynamic> json) => Comprador(
      codComprador: json['codComprador'] as int,
      nome: json['nome'] as String,
      telefone: json['telefone'] as String,
      endereco: json['endereco'] as String,
    );

Map<String, dynamic> _$CompradorToJson(Comprador instance) => <String, dynamic>{
      'codComprador': instance.codComprador,
      'nome': instance.nome,
      'telefone': instance.telefone,
      'endereco': instance.endereco,
    };

Itensvenda _$ItensvendaFromJson(Map<String, dynamic> json) => Itensvenda(
      codItensVenda: json['codItensVenda'] as int,
      codVendaAnimal: json['codVendaAnimal'] as int,
      codAnimal: json['codAnimal'] as int,
      quantidade: json['quantidade'] as int,
      valorUnitario: (json['valorUnitario'] as num).toDouble(),
    );

Map<String, dynamic> _$ItensvendaToJson(Itensvenda instance) =>
    <String, dynamic>{
      'codItensVenda': instance.codItensVenda,
      'codVendaAnimal': instance.codVendaAnimal,
      'codAnimal': instance.codAnimal,
      'quantidade': instance.quantidade,
      'valorUnitario': instance.valorUnitario,
    };

Prodleite _$ProdleiteFromJson(Map<String, dynamic> json) => Prodleite(
      codProdLeite: json['codProdLeite'] as int,
      data: const DateTimeJsonConverter().fromJson(json['data'] as String),
      quantidadeLeite: (json['quantidadeLeite'] as num).toDouble(),
    );

Map<String, dynamic> _$ProdleiteToJson(Prodleite instance) => <String, dynamic>{
      'codProdLeite': instance.codProdLeite,
      'data': const DateTimeJsonConverter().toJson(instance.data),
      'quantidadeLeite': instance.quantidadeLeite,
    };

Vendaanimal _$VendaanimalFromJson(Map<String, dynamic> json) => Vendaanimal(
      codVendaAnimal: json['codVendaAnimal'] as int,
      codComprador: json['codComprador'] as int,
      dataVendaAnimal: const DateTimeJsonConverter()
          .fromJson(json['dataVendaAnimal'] as String),
      valorTotalAnimal: (json['valorTotalAnimal'] as num).toDouble(),
    );

Map<String, dynamic> _$VendaanimalToJson(Vendaanimal instance) =>
    <String, dynamic>{
      'codVendaAnimal': instance.codVendaAnimal,
      'codComprador': instance.codComprador,
      'dataVendaAnimal':
          const DateTimeJsonConverter().toJson(instance.dataVendaAnimal),
      'valorTotalAnimal': instance.valorTotalAnimal,
    };

Vendaleite _$VendaleiteFromJson(Map<String, dynamic> json) => Vendaleite(
      codVendaLeite: json['codVendaLeite'] as int,
      codComprador: json['codComprador'] as int,
      dataVendaLeite: const DateTimeJsonConverter()
          .fromJson(json['dataVendaLeite'] as String),
      quantidadeLeite: (json['quantidadeLeite'] as num).toDouble(),
      valorTotalLeite: (json['valorTotalLeite'] as num).toDouble(),
    );

Map<String, dynamic> _$VendaleiteToJson(Vendaleite instance) =>
    <String, dynamic>{
      'codVendaLeite': instance.codVendaLeite,
      'codComprador': instance.codComprador,
      'dataVendaLeite':
          const DateTimeJsonConverter().toJson(instance.dataVendaLeite),
      'quantidadeLeite': instance.quantidadeLeite,
      'valorTotalLeite': instance.valorTotalLeite,
    };

AnimalGroupByOutputType _$AnimalGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    AnimalGroupByOutputType(
      codAnimal: json['codAnimal'] as int?,
      codProdLeite: json['codProdLeite'] as int?,
      codCategoria: json['codCategoria'] as int?,
      nome: json['nome'] as String?,
      dataNascimento: _$JsonConverterFromJson<String, DateTime>(
          json['dataNascimento'], const DateTimeJsonConverter().fromJson),
      sexo: json['sexo'] as String?,
      raca: json['raca'] as String?,
      idade: json['idade'] as int?,
      formaManejo: json['formaManejo'] as String?,
      mediaLeite: (json['mediaLeite'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AnimalGroupByOutputTypeToJson(
    AnimalGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codAnimal', instance.codAnimal);
  writeNotNull('codProdLeite', instance.codProdLeite);
  writeNotNull('codCategoria', instance.codCategoria);
  writeNotNull('nome', instance.nome);
  writeNotNull(
      'dataNascimento',
      _$JsonConverterToJson<String, DateTime>(
          instance.dataNascimento, const DateTimeJsonConverter().toJson));
  writeNotNull('sexo', instance.sexo);
  writeNotNull('raca', instance.raca);
  writeNotNull('idade', instance.idade);
  writeNotNull('formaManejo', instance.formaManejo);
  writeNotNull('mediaLeite', instance.mediaLeite);
  return val;
}

CategoriaGroupByOutputType _$CategoriaGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    CategoriaGroupByOutputType(
      codCategoria: json['codCategoria'] as int?,
      tipo: json['tipo'] as String?,
    );

Map<String, dynamic> _$CategoriaGroupByOutputTypeToJson(
    CategoriaGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codCategoria', instance.codCategoria);
  writeNotNull('tipo', instance.tipo);
  return val;
}

CompradorGroupByOutputType _$CompradorGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    CompradorGroupByOutputType(
      codComprador: json['codComprador'] as int?,
      nome: json['nome'] as String?,
      telefone: json['telefone'] as String?,
      endereco: json['endereco'] as String?,
    );

Map<String, dynamic> _$CompradorGroupByOutputTypeToJson(
    CompradorGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codComprador', instance.codComprador);
  writeNotNull('nome', instance.nome);
  writeNotNull('telefone', instance.telefone);
  writeNotNull('endereco', instance.endereco);
  return val;
}

ItensvendaGroupByOutputType _$ItensvendaGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ItensvendaGroupByOutputType(
      codItensVenda: json['codItensVenda'] as int?,
      codVendaAnimal: json['codVendaAnimal'] as int?,
      codAnimal: json['codAnimal'] as int?,
      quantidade: json['quantidade'] as int?,
      valorUnitario: (json['valorUnitario'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ItensvendaGroupByOutputTypeToJson(
    ItensvendaGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codItensVenda', instance.codItensVenda);
  writeNotNull('codVendaAnimal', instance.codVendaAnimal);
  writeNotNull('codAnimal', instance.codAnimal);
  writeNotNull('quantidade', instance.quantidade);
  writeNotNull('valorUnitario', instance.valorUnitario);
  return val;
}

ProdleiteGroupByOutputType _$ProdleiteGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ProdleiteGroupByOutputType(
      codProdLeite: json['codProdLeite'] as int?,
      data: _$JsonConverterFromJson<String, DateTime>(
          json['data'], const DateTimeJsonConverter().fromJson),
      quantidadeLeite: (json['quantidadeLeite'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ProdleiteGroupByOutputTypeToJson(
    ProdleiteGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codProdLeite', instance.codProdLeite);
  writeNotNull(
      'data',
      _$JsonConverterToJson<String, DateTime>(
          instance.data, const DateTimeJsonConverter().toJson));
  writeNotNull('quantidadeLeite', instance.quantidadeLeite);
  return val;
}

VendaanimalGroupByOutputType _$VendaanimalGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    VendaanimalGroupByOutputType(
      codVendaAnimal: json['codVendaAnimal'] as int?,
      codComprador: json['codComprador'] as int?,
      dataVendaAnimal: _$JsonConverterFromJson<String, DateTime>(
          json['dataVendaAnimal'], const DateTimeJsonConverter().fromJson),
      valorTotalAnimal: (json['valorTotalAnimal'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$VendaanimalGroupByOutputTypeToJson(
    VendaanimalGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaAnimal', instance.codVendaAnimal);
  writeNotNull('codComprador', instance.codComprador);
  writeNotNull(
      'dataVendaAnimal',
      _$JsonConverterToJson<String, DateTime>(
          instance.dataVendaAnimal, const DateTimeJsonConverter().toJson));
  writeNotNull('valorTotalAnimal', instance.valorTotalAnimal);
  return val;
}

VendaleiteGroupByOutputType _$VendaleiteGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    VendaleiteGroupByOutputType(
      codVendaLeite: json['codVendaLeite'] as int?,
      codComprador: json['codComprador'] as int?,
      dataVendaLeite: _$JsonConverterFromJson<String, DateTime>(
          json['dataVendaLeite'], const DateTimeJsonConverter().fromJson),
      quantidadeLeite: (json['quantidadeLeite'] as num?)?.toDouble(),
      valorTotalLeite: (json['valorTotalLeite'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$VendaleiteGroupByOutputTypeToJson(
    VendaleiteGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codVendaLeite', instance.codVendaLeite);
  writeNotNull('codComprador', instance.codComprador);
  writeNotNull(
      'dataVendaLeite',
      _$JsonConverterToJson<String, DateTime>(
          instance.dataVendaLeite, const DateTimeJsonConverter().toJson));
  writeNotNull('quantidadeLeite', instance.quantidadeLeite);
  writeNotNull('valorTotalLeite', instance.valorTotalLeite);
  return val;
}

AffectedRowsOutput _$AffectedRowsOutputFromJson(Map<String, dynamic> json) =>
    AffectedRowsOutput(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$AffectedRowsOutputToJson(AffectedRowsOutput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}

Map<String, dynamic> _$DatasourcesToJson(Datasources instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('db', instance.db);
  return val;
}
