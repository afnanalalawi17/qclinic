import 'package:get/get.dart';

import '../controllers/advertise_controller.dart';

class AdvertiseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdvertiseController>(
      () => AdvertiseController(),
    );
  }
}
