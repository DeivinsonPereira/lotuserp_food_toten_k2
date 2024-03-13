import 'package:get/get.dart';
import 'package:lotus_food_totem/controller/payment_controller.dart';

import '../controller/config_controller.dart';
import '../controller/menu_controller.dart';
import '../controller/slider_controller.dart';

abstract class Dependencies {
  static ConfigController configController() {
    if( Get.isRegistered<ConfigController>() ) {
      return Get.find<ConfigController>();
    }else {
      return Get.put(ConfigController(), permanent: true);
    }
  }

  static MenuPageController menuController() {
    if( Get.isRegistered<MenuPageController>() ) {
      return Get.find<MenuPageController>();
    } else {
      return Get.put(MenuPageController(), permanent: true);
    }
  }

  static SliderController sliderController() {
    if( Get.isRegistered<SliderController>() ) {
      return Get.find<SliderController>();
    } else {
      return Get.put(SliderController(), permanent: true);
    }
  }

  static PaymentController paymentController() {
    if( Get.isRegistered<PaymentController>() ) {
      return Get.find<PaymentController>();
    } else {
      return Get.put(PaymentController(), permanent: true);
    }
  }
}