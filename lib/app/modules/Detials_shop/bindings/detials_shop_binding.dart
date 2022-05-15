import 'package:get/get.dart';

import '../controllers/detials_shop_controller.dart';

class DetialsShopBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetialsShopController>(
      () => DetialsShopController(),
    );
  }
}
