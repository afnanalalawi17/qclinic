import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
import 'package:get/get.dart';
import 'package:qclinic/Shared/widget/ProgressIndicator.dart';
import 'package:qclinic/Shared/widget/Snack_Bar.dart';
import 'package:qclinic/app/data/Services/Login_Stat_Controller.dart';
import 'package:qclinic/app/data/Services/otp_again.dart';
import 'package:qclinic/app/data/Services/otp_services.dart';
import 'package:qclinic/app/routes/app_pages.dart';

class OtpController extends GetxController {
    final loginState = Get.put(LoginStateController());

  //TODO: Implement OtpController
 final GlobalKey<FormState> otpFormKey = GlobalKey<FormState>(); // Form
  late TextEditingController otpController;
  var otp = '';
  final count = 0.obs;
   //final phone = Get.arguments[0]; 
      var codeError = false.obs;
  var timeOutTimer = false.obs;
  var enableInbut = true.obs;
  var isTimeOff = true.obs;
   int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 30;
  // int startTime = 30;
  late CountdownTimerController controller;
  void onStartTimer(){
  isTimeOff.value = !isTimeOff.value;
  controller = CountdownTimerController(endTime: endTime, onEnd: onEnd);

  }void onEnd() {

timeOutTimer.value = true;
    
  }
  @override
  void onInit() {
    // print(phone.toString());
    super.onInit();
            otpController = TextEditingController();
    onStartTimer();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {        otpController.dispose();
}
 String? validate(String value) {
    if (value.isEmpty) {
      return "الرجاء ادخال الكود ";
    }
  }
  void checkDone() {
    final isValid = otpFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }

    // Otp();
  }
//
  /// Send The OTP to API
//
//   Future<void> Otp() async {
//     Get.dialog(
//       AlertDialog(
//         scrollable: true,
//         content: Column(
//           children: [
//             Text(
//               'الرجاء الانتظار',
//             ),
//             20.0.sizedHeight,
//              Custom_ProgressIndicator(),
//           ],
//         ),
//       ),
//       barrierDismissible: false,
//     );
//     try {
//       enableInbut(false);
//       final _res = await OtpVerfication(phone,   otpController.text
// );

//       Get.offAndToNamed(Routes.BASIC);

//       loginState.changeLoginState('Login');

//       update();
//       print('User Registerd and OTP Done');

   
      
//     } catch (e) {
//       print(otp.toString());
//           print(otpController.toString());
//       if (Get.isDialogOpen == true) Get.back();
//       if (e == 404) {
//         enableInbut(true);
//         codeError(true);
//         showErrorSnackBar('الكود المدخل غير صحيح');
//       }
     
//     }
//   }
// Future<void> getTOPAgain() async {
//     Get.dialog(
//       AlertDialog(
//         backgroundColor: Colors.white,
//         scrollable: true,
//         content: Column(
//           children: [
//             Text(
//               'الرجاء الانتظار',
//             ),
//             20.0.sizedHeight,
//             Custom_ProgressIndicator(),
//           ],
//         ),
//       ),
//       barrierDismissible: false,
//     );
//     try {
//       final _res = await sendOtpAgain(phone);
//       if (_res == true) {
//         if (Get.isDialogOpen == true) Get.back();
//         codeError(false);
        
//         timeOutTimer(false);
//       }
//     } catch (e) {
//       if (Get.isDialogOpen == true) Get.back();
//       if (e == 422) {
//         showErrorSnackBar('رقم الهاتف المدخل غير مسجل');
//       }
//     }
//   }
}


  
  
  

