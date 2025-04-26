import 'package:get/get.dart';

import '../controllers/all_jewelery_controller.dart';

class AllJeweleryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllJeweleryController>(
      () => AllJeweleryController(),
    );
  }
}
