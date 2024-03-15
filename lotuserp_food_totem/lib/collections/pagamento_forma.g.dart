// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: camel_case_extensions

part of 'pagamento_forma.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension Getpagamento_formaCollection on Isar {
  IsarCollection<pagamento_forma> get pagamento_formas => this.collection();
}

const Pagamento_formaSchema = CollectionSchema(
  name: r'pagamento_forma',
  id: -6074297943812080254,
  properties: {
    r'descricao': PropertySchema(
      id: 0,
      name: r'descricao',
      type: IsarType.string,
    ),
    r'id_colaborador_vinculo': PropertySchema(
      id: 1,
      name: r'id_colaborador_vinculo',
      type: IsarType.long,
    ),
    r'id_empresa': PropertySchema(
      id: 2,
      name: r'id_empresa',
      type: IsarType.long,
    ),
    r'id_serie_nfce': PropertySchema(
      id: 3,
      name: r'id_serie_nfce',
      type: IsarType.long,
    ),
    r'id_tprecebe_dinheiro': PropertySchema(
      id: 4,
      name: r'id_tprecebe_dinheiro',
      type: IsarType.long,
    ),
    r'id_tprecebe_tef_credito': PropertySchema(
      id: 5,
      name: r'id_tprecebe_tef_credito',
      type: IsarType.long,
    ),
    r'id_tprecebe_tef_debito': PropertySchema(
      id: 6,
      name: r'id_tprecebe_tef_debito',
      type: IsarType.long,
    ),
    r'id_tprecebe_tef_pix': PropertySchema(
      id: 7,
      name: r'id_tprecebe_tef_pix',
      type: IsarType.long,
    ),
    r'id_tprecebe_tef_voucher': PropertySchema(
      id: 8,
      name: r'id_tprecebe_tef_voucher',
      type: IsarType.long,
    ),
    r'id_usuario_cinculo': PropertySchema(
      id: 9,
      name: r'id_usuario_cinculo',
      type: IsarType.long,
    ),
    r'print_comanda': PropertySchema(
      id: 10,
      name: r'print_comanda',
      type: IsarType.long,
    ),
    r'status': PropertySchema(
      id: 11,
      name: r'status',
      type: IsarType.long,
    ),
    r'tef_tipo': PropertySchema(
      id: 12,
      name: r'tef_tipo',
      type: IsarType.long,
    )
  },
  estimateSize: _pagamento_formaEstimateSize,
  serialize: _pagamento_formaSerialize,
  deserialize: _pagamento_formaDeserialize,
  deserializeProp: _pagamento_formaDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _pagamento_formaGetId,
  getLinks: _pagamento_formaGetLinks,
  attach: _pagamento_formaAttach,
  version: '3.1.0+1',
);

int _pagamento_formaEstimateSize(
  pagamento_forma object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.descricao.length * 3;
  return bytesCount;
}

void _pagamento_formaSerialize(
  pagamento_forma object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.descricao);
  writer.writeLong(offsets[1], object.id_colaborador_vinculo);
  writer.writeLong(offsets[2], object.id_empresa);
  writer.writeLong(offsets[3], object.id_serie_nfce);
  writer.writeLong(offsets[4], object.id_tprecebe_dinheiro);
  writer.writeLong(offsets[5], object.id_tprecebe_tef_credito);
  writer.writeLong(offsets[6], object.id_tprecebe_tef_debito);
  writer.writeLong(offsets[7], object.id_tprecebe_tef_pix);
  writer.writeLong(offsets[8], object.id_tprecebe_tef_voucher);
  writer.writeLong(offsets[9], object.id_usuario_cinculo);
  writer.writeLong(offsets[10], object.print_comanda);
  writer.writeLong(offsets[11], object.status);
  writer.writeLong(offsets[12], object.tef_tipo);
}

pagamento_forma _pagamento_formaDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = pagamento_forma(
    descricao: reader.readString(offsets[0]),
    id: id,
    id_colaborador_vinculo: reader.readLong(offsets[1]),
    id_empresa: reader.readLong(offsets[2]),
    id_serie_nfce: reader.readLong(offsets[3]),
    id_tprecebe_dinheiro: reader.readLong(offsets[4]),
    id_tprecebe_tef_credito: reader.readLong(offsets[5]),
    id_tprecebe_tef_debito: reader.readLong(offsets[6]),
    id_tprecebe_tef_pix: reader.readLong(offsets[7]),
    id_tprecebe_tef_voucher: reader.readLong(offsets[8]),
    id_usuario_cinculo: reader.readLong(offsets[9]),
    print_comanda: reader.readLong(offsets[10]),
    status: reader.readLong(offsets[11]),
    tef_tipo: reader.readLong(offsets[12]),
  );
  return object;
}

P _pagamento_formaDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readLong(offset)) as P;
    case 11:
      return (reader.readLong(offset)) as P;
    case 12:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _pagamento_formaGetId(pagamento_forma object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _pagamento_formaGetLinks(pagamento_forma object) {
  return [];
}

void _pagamento_formaAttach(
    IsarCollection<dynamic> col, Id id, pagamento_forma object) {
  object.id = id;
}

extension pagamento_formaQueryWhereSort
    on QueryBuilder<pagamento_forma, pagamento_forma, QWhere> {
  QueryBuilder<pagamento_forma, pagamento_forma, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension pagamento_formaQueryWhere
    on QueryBuilder<pagamento_forma, pagamento_forma, QWhereClause> {
  QueryBuilder<pagamento_forma, pagamento_forma, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension pagamento_formaQueryFilter
    on QueryBuilder<pagamento_forma, pagamento_forma, QFilterCondition> {
  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      descricaoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descricao',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      descricaoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'descricao',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      descricaoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'descricao',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      descricaoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'descricao',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      descricaoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'descricao',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      descricaoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'descricao',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      descricaoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'descricao',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      descricaoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'descricao',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      descricaoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descricao',
        value: '',
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      descricaoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'descricao',
        value: '',
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_colaborador_vinculoEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id_colaborador_vinculo',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_colaborador_vinculoGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id_colaborador_vinculo',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_colaborador_vinculoLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id_colaborador_vinculo',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_colaborador_vinculoBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id_colaborador_vinculo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_empresaEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id_empresa',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_empresaGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id_empresa',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_empresaLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id_empresa',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_empresaBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id_empresa',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_serie_nfceEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id_serie_nfce',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_serie_nfceGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id_serie_nfce',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_serie_nfceLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id_serie_nfce',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_serie_nfceBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id_serie_nfce',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_tprecebe_dinheiroEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id_tprecebe_dinheiro',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_tprecebe_dinheiroGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id_tprecebe_dinheiro',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_tprecebe_dinheiroLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id_tprecebe_dinheiro',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_tprecebe_dinheiroBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id_tprecebe_dinheiro',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_tprecebe_tef_creditoEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id_tprecebe_tef_credito',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_tprecebe_tef_creditoGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id_tprecebe_tef_credito',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_tprecebe_tef_creditoLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id_tprecebe_tef_credito',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_tprecebe_tef_creditoBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id_tprecebe_tef_credito',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_tprecebe_tef_debitoEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id_tprecebe_tef_debito',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_tprecebe_tef_debitoGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id_tprecebe_tef_debito',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_tprecebe_tef_debitoLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id_tprecebe_tef_debito',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_tprecebe_tef_debitoBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id_tprecebe_tef_debito',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_tprecebe_tef_pixEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id_tprecebe_tef_pix',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_tprecebe_tef_pixGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id_tprecebe_tef_pix',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_tprecebe_tef_pixLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id_tprecebe_tef_pix',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_tprecebe_tef_pixBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id_tprecebe_tef_pix',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_tprecebe_tef_voucherEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id_tprecebe_tef_voucher',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_tprecebe_tef_voucherGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id_tprecebe_tef_voucher',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_tprecebe_tef_voucherLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id_tprecebe_tef_voucher',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_tprecebe_tef_voucherBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id_tprecebe_tef_voucher',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_usuario_cinculoEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id_usuario_cinculo',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_usuario_cinculoGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id_usuario_cinculo',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_usuario_cinculoLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id_usuario_cinculo',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      id_usuario_cinculoBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id_usuario_cinculo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      print_comandaEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'print_comanda',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      print_comandaGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'print_comanda',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      print_comandaLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'print_comanda',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      print_comandaBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'print_comanda',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      statusEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      statusGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      statusLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      statusBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      tef_tipoEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tef_tipo',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      tef_tipoGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tef_tipo',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      tef_tipoLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tef_tipo',
        value: value,
      ));
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterFilterCondition>
      tef_tipoBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tef_tipo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension pagamento_formaQueryObject
    on QueryBuilder<pagamento_forma, pagamento_forma, QFilterCondition> {}

extension pagamento_formaQueryLinks
    on QueryBuilder<pagamento_forma, pagamento_forma, QFilterCondition> {}

extension pagamento_formaQuerySortBy
    on QueryBuilder<pagamento_forma, pagamento_forma, QSortBy> {
  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      sortByDescricao() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descricao', Sort.asc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      sortByDescricaoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descricao', Sort.desc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      sortById_colaborador_vinculo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_colaborador_vinculo', Sort.asc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      sortById_colaborador_vinculoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_colaborador_vinculo', Sort.desc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      sortById_empresa() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_empresa', Sort.asc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      sortById_empresaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_empresa', Sort.desc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      sortById_serie_nfce() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_serie_nfce', Sort.asc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      sortById_serie_nfceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_serie_nfce', Sort.desc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      sortById_tprecebe_dinheiro() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_tprecebe_dinheiro', Sort.asc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      sortById_tprecebe_dinheiroDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_tprecebe_dinheiro', Sort.desc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      sortById_tprecebe_tef_credito() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_tprecebe_tef_credito', Sort.asc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      sortById_tprecebe_tef_creditoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_tprecebe_tef_credito', Sort.desc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      sortById_tprecebe_tef_debito() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_tprecebe_tef_debito', Sort.asc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      sortById_tprecebe_tef_debitoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_tprecebe_tef_debito', Sort.desc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      sortById_tprecebe_tef_pix() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_tprecebe_tef_pix', Sort.asc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      sortById_tprecebe_tef_pixDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_tprecebe_tef_pix', Sort.desc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      sortById_tprecebe_tef_voucher() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_tprecebe_tef_voucher', Sort.asc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      sortById_tprecebe_tef_voucherDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_tprecebe_tef_voucher', Sort.desc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      sortById_usuario_cinculo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_usuario_cinculo', Sort.asc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      sortById_usuario_cinculoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_usuario_cinculo', Sort.desc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      sortByPrint_comanda() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'print_comanda', Sort.asc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      sortByPrint_comandaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'print_comanda', Sort.desc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      sortByTef_tipo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tef_tipo', Sort.asc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      sortByTef_tipoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tef_tipo', Sort.desc);
    });
  }
}

extension pagamento_formaQuerySortThenBy
    on QueryBuilder<pagamento_forma, pagamento_forma, QSortThenBy> {
  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      thenByDescricao() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descricao', Sort.asc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      thenByDescricaoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descricao', Sort.desc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      thenById_colaborador_vinculo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_colaborador_vinculo', Sort.asc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      thenById_colaborador_vinculoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_colaborador_vinculo', Sort.desc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      thenById_empresa() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_empresa', Sort.asc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      thenById_empresaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_empresa', Sort.desc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      thenById_serie_nfce() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_serie_nfce', Sort.asc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      thenById_serie_nfceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_serie_nfce', Sort.desc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      thenById_tprecebe_dinheiro() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_tprecebe_dinheiro', Sort.asc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      thenById_tprecebe_dinheiroDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_tprecebe_dinheiro', Sort.desc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      thenById_tprecebe_tef_credito() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_tprecebe_tef_credito', Sort.asc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      thenById_tprecebe_tef_creditoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_tprecebe_tef_credito', Sort.desc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      thenById_tprecebe_tef_debito() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_tprecebe_tef_debito', Sort.asc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      thenById_tprecebe_tef_debitoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_tprecebe_tef_debito', Sort.desc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      thenById_tprecebe_tef_pix() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_tprecebe_tef_pix', Sort.asc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      thenById_tprecebe_tef_pixDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_tprecebe_tef_pix', Sort.desc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      thenById_tprecebe_tef_voucher() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_tprecebe_tef_voucher', Sort.asc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      thenById_tprecebe_tef_voucherDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_tprecebe_tef_voucher', Sort.desc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      thenById_usuario_cinculo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_usuario_cinculo', Sort.asc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      thenById_usuario_cinculoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_usuario_cinculo', Sort.desc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      thenByPrint_comanda() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'print_comanda', Sort.asc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      thenByPrint_comandaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'print_comanda', Sort.desc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      thenByTef_tipo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tef_tipo', Sort.asc);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QAfterSortBy>
      thenByTef_tipoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tef_tipo', Sort.desc);
    });
  }
}

extension pagamento_formaQueryWhereDistinct
    on QueryBuilder<pagamento_forma, pagamento_forma, QDistinct> {
  QueryBuilder<pagamento_forma, pagamento_forma, QDistinct> distinctByDescricao(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'descricao', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QDistinct>
      distinctById_colaborador_vinculo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id_colaborador_vinculo');
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QDistinct>
      distinctById_empresa() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id_empresa');
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QDistinct>
      distinctById_serie_nfce() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id_serie_nfce');
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QDistinct>
      distinctById_tprecebe_dinheiro() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id_tprecebe_dinheiro');
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QDistinct>
      distinctById_tprecebe_tef_credito() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id_tprecebe_tef_credito');
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QDistinct>
      distinctById_tprecebe_tef_debito() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id_tprecebe_tef_debito');
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QDistinct>
      distinctById_tprecebe_tef_pix() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id_tprecebe_tef_pix');
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QDistinct>
      distinctById_tprecebe_tef_voucher() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id_tprecebe_tef_voucher');
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QDistinct>
      distinctById_usuario_cinculo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id_usuario_cinculo');
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QDistinct>
      distinctByPrint_comanda() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'print_comanda');
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QDistinct> distinctByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status');
    });
  }

  QueryBuilder<pagamento_forma, pagamento_forma, QDistinct>
      distinctByTef_tipo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tef_tipo');
    });
  }
}

extension pagamento_formaQueryProperty
    on QueryBuilder<pagamento_forma, pagamento_forma, QQueryProperty> {
  QueryBuilder<pagamento_forma, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<pagamento_forma, String, QQueryOperations> descricaoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'descricao');
    });
  }

  QueryBuilder<pagamento_forma, int, QQueryOperations>
      id_colaborador_vinculoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id_colaborador_vinculo');
    });
  }

  QueryBuilder<pagamento_forma, int, QQueryOperations> id_empresaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id_empresa');
    });
  }

  QueryBuilder<pagamento_forma, int, QQueryOperations> id_serie_nfceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id_serie_nfce');
    });
  }

  QueryBuilder<pagamento_forma, int, QQueryOperations>
      id_tprecebe_dinheiroProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id_tprecebe_dinheiro');
    });
  }

  QueryBuilder<pagamento_forma, int, QQueryOperations>
      id_tprecebe_tef_creditoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id_tprecebe_tef_credito');
    });
  }

  QueryBuilder<pagamento_forma, int, QQueryOperations>
      id_tprecebe_tef_debitoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id_tprecebe_tef_debito');
    });
  }

  QueryBuilder<pagamento_forma, int, QQueryOperations>
      id_tprecebe_tef_pixProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id_tprecebe_tef_pix');
    });
  }

  QueryBuilder<pagamento_forma, int, QQueryOperations>
      id_tprecebe_tef_voucherProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id_tprecebe_tef_voucher');
    });
  }

  QueryBuilder<pagamento_forma, int, QQueryOperations>
      id_usuario_cinculoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id_usuario_cinculo');
    });
  }

  QueryBuilder<pagamento_forma, int, QQueryOperations> print_comandaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'print_comanda');
    });
  }

  QueryBuilder<pagamento_forma, int, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<pagamento_forma, int, QQueryOperations> tef_tipoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tef_tipo');
    });
  }
}
