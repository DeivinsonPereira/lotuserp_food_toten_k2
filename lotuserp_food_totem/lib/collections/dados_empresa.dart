// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'dart:convert';

import 'package:isar/isar.dart';

part 'dados_empresa.g.dart';

@Collection()
class dados_empresa {
  late Id id = Isar.autoIncrement;
  late String ip_servidor;
  late int id_empresa;
  late int id_dispositivo;

  dados_empresa({
    required this.ip_servidor,
    required this.id_empresa,
    required this.id_dispositivo,
  });

  

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ip_servidor': ip_servidor,
      'id_empresa': id_empresa,
      'id_dispositivo': id_dispositivo,
    };
  }

  factory dados_empresa.fromMap(Map<String, dynamic> map) {
    return dados_empresa(
      ip_servidor: map['ip_servidor'] as String,
      id_empresa: map['id_empresa'] as int,
      id_dispositivo: map['id_dispositivo'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory dados_empresa.fromJson(String source) => dados_empresa.fromMap(json.decode(source) as Map<String, dynamic>);
}
