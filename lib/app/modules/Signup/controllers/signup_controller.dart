import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  //TODO: Implement SignupController
final GlobalKey<FormState> SignuoFormKey = GlobalKey<FormState>(); // Form
  late TextEditingController nameController, phoneController,emailController;
  var phone = '';
    var name = '';  var email = '';
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    nameController = TextEditingController();
    emailController = TextEditingController();
        phoneController = TextEditingController();

  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
        phoneController.dispose();
        nameController.dispose();
        emailController.dispose();

  }String? validateName(String value) {
    if (value.isEmpty) {
      return "الرجاء ادخال اسم المستخدم";
    }
    return null;
  }
  String? validateMobile(String value) {
    String patttern = r'^(?:[+0]9)?[0-9]{10}$';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "الرجاء ادخال رقم الهاتف";
    } else if (!regExp.hasMatch(value)) {
      return "الرجاء ادخال رقم هاتف صحيح";
    }
    return null;
  }String? validateEmail(String value) {
    if (value.isEmpty) {
      return "الرجاء ادخال رقم البريد الالكتوني";
    }
    if (!GetUtils.isEmail(value)) {
      return "الرجاء ادخال بريد الكتروني صحيح";
    }
    return null;
  }
    void checkLogin() {
    final isValid = SignuoFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    // auth();
  } 
  void increment() => count.value++;
}
