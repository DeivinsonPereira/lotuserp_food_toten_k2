// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:logger/web.dart';
import 'package:lotus_food_totem/collections/dados_empresa.dart';
import 'package:lotus_food_totem/collections/grupo.dart';
import 'package:lotus_food_totem/common/custom_cherry.dart';
import 'package:lotus_food_totem/services/dependencies.dart';
import 'package:lotus_food_totem/shared/components/header_request.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

import '../../collections/complemento.dart';
import '../../collections/produto.dart';
import '../components/endpoints.dart';

class IsarService {
  late Future<Isar> db;
  Logger logger = Logger();

  IsarService() {
    db = openDB();
  }

  // Faz a persistencia do ip do servidor no banco de dados
  Future<void> insertIpServidor(String ipServidor, int idEmpresa, int idDevice,
      BuildContext context) async {
    final isar = await db;

    try {
      var i = await isar.dados_empresas.count();

      if (i > 0) {
        isar.writeTxn(() async {
          await isar.dados_empresas.clear();
        });
      }

      dados_empresa dadosEmpresa = dados_empresa(
          ip_servidor: ipServidor,
          id_empresa: idEmpresa,
          id_dispositivo: idDevice);

      isar.writeTxn(
        () async {
          await isar.dados_empresas.put(dadosEmpresa);
          const CustomCherrySuccess(message: 'Ip salvo com sucesso!')
              .show(context);
        },
      );
    } catch (e) {
      const CustomCherryError(
        message: 'Falha ao salvar o ip!',
      ).show(context);
      logger.e('Erro: falha ao salvar ip.$e');
    }
  }

  // Busca os grupos da api e persiste no banco de dados local
  Future<List<grupo>> getGrupo() async {
    var configController = Dependencies.configController();
    final isar = await db;
    int i = await isar.grupos.count();

    String url =
        '${configController.ipSelecionado}${Endpoints.endpointSearchGrupos}${configController.companyId}';

    try {
      if (i > 0) {
        isar.writeTxn(
          () async {
            await isar.grupos.clear();
          },
        );
      }

      final resposta = await http.get(
        Uri.parse(url),
        headers: HeaderRequest.headers,
      );
      if (resposta.statusCode == 200) {
        var gru = jsonDecode(resposta.body);
        List<grupo> grupos = [];

        for (var element in gru['itens']) {
          grupos.add(grupo.fromMap(element));
        }

        isar.writeTxn(() async {
          await isar.grupos.putAll(grupos);
        });
        return grupos;
      } else {
        logger.e('Erro ao carregar os grupos');
        return [];
      }
    } catch (e) {
      logger.e('Erro ao carregar os grupos: $e');
      return [];
    }
  }

  // Busca os produtos da api e persiste no banco de dados local
  Future<List<produto>> getProduto() async {
    var configController = Dependencies.configController();
    final isar = await db;
    int i = await isar.produtos.count();

    String url =
        '${configController.ipSelecionado}${Endpoints.endpointSearchProdutos}${configController.companyId}';

    try {
      if (i > 0) {
        isar.writeTxn(
          () async {
            await isar.produtos.clear();
          },
        );
      }

      final resposta = await http.get(
        Uri.parse(url),
        headers: HeaderRequest.headers,
      );
      if (resposta.statusCode == 200) {
        var prod = jsonDecode(resposta.body);
        List<produto> produtos = [];

        for (var element in prod['itens']) {
          produtos.add(produto.fromMap(element));
        }

        isar.writeTxn(() async {
          await isar.produtos.putAll(produtos);
        });
        return produtos;
      } else {
        logger.e('Erro ao carregar os produtos');
        return [];
      }
    } catch (e) {
      logger.e('Erro ao carregar os produtos: $e');
      return [];
    }
  }

  // Busca os complementos da api e persiste no banco de dados local
  Future<List<complemento>> getComplementos() async {
    var configController = Dependencies.configController();
    final isar = await db;
    int i = await isar.complementos.count();
    String url =
        '${configController.ipSelecionado}${Endpoints.endpointSearchComplementos}${configController.companyId}';

    try {
      if (i > 0) {
        isar.writeTxn(
          () async {
            await isar.complementos.clear();
          },
        );
      }

      final resposta = await http.get(
        Uri.parse(url),
        headers: HeaderRequest.headers,
      );
      if (resposta.statusCode == 200) {
        var comp = jsonDecode(resposta.body);
        List<complemento> complementos = [];

        for (var element in comp['itens']) {
          complementos.add(complemento.fromMap(element));
        }

        isar.writeTxn(() async {
          await isar.complementos.putAll(complementos);
        });
        return complementos;
      } else {
        logger.e('Erro ao carregar os complementos');
        return [];
      }
    } catch (e) {
      logger.e('Erro ao carregar os complementos: $e');
      return [];
    }
  }

  // Busca os dados da empresa no banco de dados local
  Future<dados_empresa?> getDadosEmpresa() async {
    final isar = await db;

    dados_empresa? data = await isar.dados_empresas.where().findFirst();

    if (data != null) {
      return data;
    } else {
      return null;
    }
  }

  // Abre o banco de dados
  Future<Isar> openDB() async {
    final dir = await getApplicationSupportDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [
          Dados_empresaSchema,
          GrupoSchema,
          ProdutoSchema,
          ComplementoSchema,
        ],
        directory: dir.path,
      );
    }
    return Future.value(Isar.getInstance());
  }
}