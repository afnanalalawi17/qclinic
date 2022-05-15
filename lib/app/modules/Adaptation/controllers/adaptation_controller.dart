import 'package:get/get.dart';

class AdaptationController extends GetxController {
  //TODO: Implement AdaptationController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }
  var selectedCatIndex;
  onSelectCat(int index) {
    selectedCatIndex = index;
    update();
  } 
  @override
  void onClose() {}
  void increment() => count.value++;
}
