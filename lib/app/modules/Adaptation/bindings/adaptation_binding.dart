import 'package:get/get.dart';

import '../controllers/adaptation_controller.dart';

class AdaptationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdaptationController>(
      () => AdaptationController(),
    );
  }
}
