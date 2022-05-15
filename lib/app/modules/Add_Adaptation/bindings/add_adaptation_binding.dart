import 'package:get/get.dart';

import '../controllers/add_adaptation_controller.dart';

class AddAdaptationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddAdaptationController>(
      () => AddAdaptationController(),
    );
  }
}
