// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:lotus_food_totem/common/custom_cherry.dart';
import 'package:lotus_food_totem/shared/isar_local_db/isar_service.dart';

import '../page/slider/slider_page.dart';
import 'dependencies.dart';

class CheckData {
  var menuController = Dependencies.menuController();
  IsarService service = IsarService();
  Logger logger = Logger();

  Future<void> checkDataFromDB(BuildContext context) async {
    try {
      var grupos = await service.getGrupo();
      var produtos = await service.getProduto();
      var complementos = await service.getComplementos();

      if (grupos.isNotEmpty && produtos.isNotEmpty && complementos.isNotEmpty) {
        const CustomCherrySuccess(
          message: 'Dados carregados com sucesso!',
        ).show(context);
        menuController.setGrupos(grupos);
        menuController.setProdutos(produtos);
        menuController.setComplementos(complementos);
        Get.to(() => SliderPage());
      } else {
        const CustomCherryError(
          message: 'Falha ao carregar os dados!',
        ).show(context);
      }
    } catch (e) {
      logger.e('Erro: falha ao carregar os dados.$e');
      const CustomCherryError(
        message: 'Falha ao carregar os dados!',
      ).show(context);
    }
  }
}
