import 'package:get/get.dart';
import 'package:lotus_food_totem/services/dependencies.dart';
import 'package:lotus_food_totem/shared/components/endpoints.dart';
import 'package:lotus_food_totem/shared/isar_local_db/isar_service.dart';

class SliderController extends GetxController {
  var configController = Dependencies.configController();
  IsarService service = IsarService();

  var urlImagesSlide = [].obs;
  var urlImagesBackground = ''.obs;
  var urlImagesLogo = ''.obs;

  var logoImage = ''.obs;
  var backgroundImage = ''.obs;
  var slideImages = [].obs;

  Future<void> setUrlImages() async {
    for (int i = 0; i < 3; i++) {
      urlImagesSlide
          .add(Endpoints().endpointSearchImageDIV('TOTEM_SLIDE${(i + 1)}.PNG'));
    }
    urlImagesBackground.value =
        Endpoints().endpointSearchImageDIV('TOTEM_MARCA_DAGUA.PNG');
    urlImagesLogo.value =
        Endpoints().endpointSearchImageDIV('TOTEM_LOGO_EMPRESA.PNG');
  }

  Future<void> getImagePath() async {
    var logo = await service.getImageLogoPath();
    var background = await service.getImageBackgroundPath();
    var slide = await service.getImageSlidePath();

    if (logo.isBlank == false &&
        background.isBlank == false &&
        slide.isNotEmpty) {
      logoImage.value = logo.path_image!;
      backgroundImage.value = background.path_image!;
      slideImages.value = [...slide];
    }
  }
}
