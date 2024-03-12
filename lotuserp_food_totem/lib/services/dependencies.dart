import 'package:get/get.dart';

import '../controller/config_controller.dart';
import '../controller/menu_controller.dart';

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
}