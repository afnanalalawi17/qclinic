import 'package:get/get.dart';

import '../controllers/detials_adaptation_controller.dart';

class DetialsAdaptationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetialsAdaptationController>(
      () => DetialsAdaptationController(),
    );
  }
}
