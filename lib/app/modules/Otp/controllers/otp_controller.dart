import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpController extends GetxController {
  //TODO: Implement OtpController
 final GlobalKey<FormState> otpFormKey = GlobalKey<FormState>(); // Form
  late TextEditingController otpController;
  var otp = '';
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
            otpController = TextEditingController();

  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {        otpController.dispose();
}
  void increment() => count.value++;
}
