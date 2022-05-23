import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:qclinic/Shared/widget/ProgressIndicator.dart';
import 'package:qclinic/Shared/widget/Snack_Bar.dart';
import 'package:qclinic/app/data/Services/Login_Stat_Controller.dart';
import 'package:qclinic/app/data/Services/signup_services.dart';
import 'package:qclinic/app/routes/app_pages.dart';

class EditProfileController extends GetxController {
  //TODO: Implement EditProfileController
  final loginState = Get.put(LoginStateController());

  //TODO: Implement SignupController
final GlobalKey<FormState> SignuoFormKey = GlobalKey<FormState>(); // Form
  late TextEditingController nameController, phoneController,emailController , passwordController , confirm_passwordController;
  var phone = '';
    var name = '';  var email = ''; var password = ''; var confirm_password = '';
  @override
  void onInit() {
    super.onInit();
    nameController = TextEditingController();
    emailController = TextEditingController();
        phoneController = TextEditingController();
        passwordController = TextEditingController();
        confirm_passwordController = TextEditingController();

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
        passwordController.dispose();
        confirm_passwordController.dispose();

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
  } String? validatePassword(String value) {
    if (value.isEmpty) {
      return "الرجاء ادخال كلمة المرور";
    }
    if (value.length < 6) {
      return "كلمة المرور يجب الا تقل عن ٦ احرف";
    }
    return null;
  }

  String? validateRePassword(String value) {
    if (value.isEmpty) {
      return "الرجاء ادخال تأكيد كلمة المرور";
    }
    if (value != confirm_passwordController.text) {
      return "كلمة المرور غير متطابقة";
    }
    return null;
  }
    void checkSignup() {
    final isValid = SignuoFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    StartRegister();
  }    var obscureText = true.obs;
    var obscureText1 = true.obs;

changPassVisiblit() {
    if (obscureText.value == true) {
      obscureText(false);
    } else {
      obscureText(true);
    }
  }changPassVisiblit1() {
    if (obscureText1.value == true) {
      obscureText1(false);
    } else {
      obscureText1(true);
    }
  }
  Future<void> StartRegister() async {
    Get.dialog(
      AlertDialog(
        scrollable: true,
        content: Column(
          children: [
            Text(
              'الرجاء الانتظار',
            ),
            20.0.sizedHeight,
            Custom_ProgressIndicator()
          ],
        ),
      ),
      barrierDismissible: false,
    );
    try {
      final _res = await Register(
        phone: phoneController.text,
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,

      );
     
      Get.offAndToNamed(Routes.OTP, arguments: [phoneController.text]);
      loginState.changeLoginState('Login');
      
      GetStorage().write('name', _res.data!.firstname);
      GetStorage().write('email', _res.data!.email);
      GetStorage().write('phoneNo', _res.data!.phone);
      
   } catch (e) {
     if (Get.isDialogOpen == true) Get.back();
      if (e == 422) {
            var ex = 'الحساب مسجل مسبقاً';
        showErrorSnackBar(ex);
        
    
      }
    }
  }
}
