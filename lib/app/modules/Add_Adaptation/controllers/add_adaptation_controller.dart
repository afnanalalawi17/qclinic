import 'package:get/get.dart';

class AddAdaptationController extends GetxController {
  //TODO: Implement AddAdaptationController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }
var selectedGender ="".obs;
  onChangeGender(var gender) {
   selectedGender.value =gender;
    print(gender);
    update();
  }
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
