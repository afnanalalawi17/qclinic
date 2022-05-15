
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qclinic/Shared/color/colors.dart';

class BasicController extends GetxController {
  //TODO: Implement BasicController
 var tabIndex = 0;
 
   changeTabIndex(int index) {
    tabIndex = index;

    update();
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();

  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
  }
  void increment() => count.value++;
}
