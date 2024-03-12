// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotus_food_totem/common/custom_logo.dart';
import 'package:lotus_food_totem/common/components/custom_text_style.dart';
import 'package:lotus_food_totem/services/dependencies.dart';

import '../../common/custom_elevated_button.dart';
import '../../core/app_colors.dart';
import '../../services/check_data.dart';
import '../config/config_page.dart';

class InitPage extends StatelessWidget {
  const InitPage({super.key});

  @override
  Widget build(BuildContext context) {
    Dependencies.configController();

    // Constrói o texto da página
    Widget _buildText() {
      return const SizedBox(
        child: Center(
          child: Text(
            'Clique no botão para iniciar.',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 60,
              color: CustomColors.backSlider,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    // Constrói o botão para iniciar
    Widget _buildButtonInit() {
      return SizedBox(
        width: Get.size.width * 0.7,
        height: Get.size.height * 0.1,
        child: CustomElevatedButton(
            text: 'Iniciar',
            function: () async {
              await CheckData().checkDataFromDB(context);
            },
            radious: 0,
            colorButton: CustomColors.buttonsColor,
            styleText: CustomTextStyle.textButtonStyle),
      );
    }

    // Constrói o botão de configurações
    Widget _buildConfigButton() {
      return Container(
        decoration: BoxDecoration(
          color: CustomColors.backSlider,
          borderRadius: BorderRadius.circular(25),
        ),
        width: Get.size.width * 0.15,
        height: Get.size.height * 0.1,
        child: IconButton(
          icon: Icon(
            Icons.settings,
            color: CustomColors.buttonsColor,
            size: Get.size.width * 0.1,
          ),
          onPressed: () => Get.to(() => const ConfigPage()),
        ),
      );
    }

    // Faz a chamada do Scaffold
    return Scaffold(
      backgroundColor: CustomColors.backSlider,
      body: SafeArea(
        child: SizedBox(
          child: Column(
            children: [
              SizedBox(height: Get.size.height * 0.1),
              CustomLogo.logoBranca(),
              SizedBox(height: Get.size.height * 0.1),
              _buildText(),
              SizedBox(height: Get.size.height * 0.1),
              _buildButtonInit(),
              Expanded(
                child: Container(),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: _buildConfigButton(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
