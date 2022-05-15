import 'package:get/get.dart';

import '../controllers/add_animale_controller.dart';

class AddAnimaleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddAnimaleController>(
      () => AddAnimaleController(),
    );
  }
}
