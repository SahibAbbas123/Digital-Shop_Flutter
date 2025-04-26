import 'package:get/get.dart';

import '../controllers/custom_drawer_implementation_controller.dart';

class CustomDrawerImplementationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomDrawerImplementationController>(
      () => CustomDrawerImplementationController(),
    );
  }
}
