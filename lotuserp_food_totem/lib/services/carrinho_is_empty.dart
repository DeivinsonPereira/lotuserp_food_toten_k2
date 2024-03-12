import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:lotus_food_totem/common/custom_cherry.dart';

import '../page/cart_shop/cart_shop.dart';
import 'dependencies.dart';

class CarrinhoIsEmpty {
  var menuController = Dependencies.menuController();

  void verifyCarrinho(BuildContext context) {
    if (menuController.carrinho.isEmpty) {
      const CustomCherryError(message: 'Carrinho Vazio').show(context);
    } else {
      Get.to(() => const CartShop(),
          transition: Transition.rightToLeft,
          duration: Duration(milliseconds: 500));
    }
  }
}
