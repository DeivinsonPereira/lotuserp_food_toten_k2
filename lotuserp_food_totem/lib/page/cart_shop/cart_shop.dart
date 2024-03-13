// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotus_food_totem/common/components/custom_text_style.dart';
import 'package:lotus_food_totem/common/custom_elevated_button.dart';
import 'package:lotus_food_totem/common/custom_header.dart';
import 'package:lotus_food_totem/core/app_colors.dart';
import 'package:lotus_food_totem/services/carrinho_is_empty.dart';
import 'package:lotus_food_totem/services/dependencies.dart';

import '../../common/custom_background_image.dart';
import '../../common/custom_container_resume.dart';
import '../../controller/menu_controller.dart';
import '../payment/payment_page.dart';
import 'components/custom_card_cart_shop.dart';

class CartShop extends StatelessWidget {
  const CartShop({super.key});

  @override
  Widget build(BuildContext context) {
    Dependencies.menuController();
    Size size = Get.size;

    // Constrói o botão de voltar
    Widget _buildBackButton() {
      return SizedBox(
        height: 100,
        child: CustomElevatedButton(
            text: 'Voltar',
            function: () => Get.back(),
            radious: 0,
            colorButton: CustomColors.informationBox,
            styleText: CustomTextStyle.textButtonStyleWhite),
      );
    }

    // Constrói o botão de confirmar
    Widget _buildConfirmButton() {
      return SizedBox(
          height: 100,
          child: CustomElevatedButton(
              text: 'Confirmar',
              function: () {
                CarrinhoIsEmpty().verifyCarrinhoToPaymentForms(context);
                Get.to(() => const PaymentPage());
              },
              radious: 0,
              colorButton: CustomColors.confirmButtonColor,
              styleText: CustomTextStyle.textButtonStyle));
    }

    // Constrói a linha dos botões
    Widget _buildButtons() {
      return Row(children: [
        Expanded(child: _buildBackButton()),
        Expanded(child: _buildConfirmButton()),
      ]);
    }

    // Constrói a lista de itens no carrinho
    Widget _buildCartList() {
      return GetBuilder<MenuPageController>(
        builder: (_) {
          return ListView.builder(
            itemCount: _.carrinho.length,
            itemBuilder: (context, index) {
              var itemEscolhido = _.carrinho[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomCardCartShopping(
                  itemEscolhido: itemEscolhido,
                  index: index,
                ),
              );
            },
          );
        },
      );
    }

    // Constrói a página
    return Scaffold(
      body: Stack(
        children: [
          CustomBackgroundImage(size: Get.size),
          Positioned(
            child: Column(
              children: [
                const CustomHeader(text: 'Seu carrinho'),
                Expanded(
                  child: _buildCartList(),
                ),
                CustomContainerResume(size: size),
                _buildButtons(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
