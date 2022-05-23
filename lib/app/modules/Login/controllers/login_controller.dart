import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:qclinic/Shared/widget/ProgressIndicator.dart';
import 'package:qclinic/Shared/widget/Snack_Bar.dart';
import 'package:qclinic/app/data/Services/Login_Stat_Controller.dart';
import 'package:qclinic/app/data/Services/login_services.dart';
import 'package:qclinic/app/routes/app_pages.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
      final loginState = Get.put(LoginStateController());

  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>(); // Form
  late TextEditingController phoneController , passwordController;
  var phone = '';
  var password = '';
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
        phoneController = TextEditingController();
        passwordController = TextEditingController();

  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
        phoneController.dispose();
        passwordController.dispose();

  }  var obscureText = true.obs;

changPassVisiblit() {
    if (obscureText.value == true) {
      obscureText(false);
    } else {
      obscureText(true);
    }
  
}  String? validateMobile(String value) {
    String patttern = r'^(?:[+0]9)?[0-9]{10}$';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "الرجاء ادخال رقم الهاتف";
    } else if (!regExp.hasMatch(value)) {
      return "الرجاء ادخال رقم هاتف صحيح";
    }
    return null;
  }String? validatePassword(String value) {
    if (value.isEmpty) {
      return "الرجاء ادخال كلمة المرور";
    }
    if (value.length < 6) {
      return "كلمة المرور يجب الا تقل عن ٦ احرف";
    }
    return null;
  }
    void checkLogin() {
    final isValid = loginFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
   auth();
  } 
  void increment() => count.value++;
  Future<void> auth() async {
    Get.dialog(
      AlertDialog(
        backgroundColor: Colors.white,
        scrollable: true,
        content: Column(
          children: [
            Text(
              'الرجاء الانتظار',
            ),
            20.0.sizedHeight,
            Custom_ProgressIndicator(),
          ],
        ),
      ),
      barrierDismissible: false,
    );
    try {
      final _res = await Login(
        phoneController.text,
        passwordController.text,

      );
    Get.offAllNamed(Routes.BASIC);
// print(_res.token);
      loginState.changeLoginState('Login');
     
      // GetStorage().write('Token', _res.token);
    

      update();
      print('user log in');
     GetStorage().write('name', _res.data!.firstname);
      GetStorage().write('email', _res.data!.email);
      GetStorage().write('phoneNo', _res.data!.phone);
    } catch (e) {
      if (Get.isDialogOpen == true) Get.back();
      if (e == 401) {
        var ex = 'خطأ في كلمة السر';
        showErrorSnackBar(ex);
      }
    }
  }

}
