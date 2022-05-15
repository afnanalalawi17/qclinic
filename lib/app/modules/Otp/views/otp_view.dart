import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:qclinic/Shared/color/colors.dart';
import 'package:qclinic/Shared/widget/constants.dart';
import 'package:qclinic/Shared/widget/main_button.dart';
import 'package:qclinic/app/routes/app_pages.dart';

import '../controllers/otp_controller.dart';

class OtpView extends GetView<OtpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Align(
          alignment: Alignment.topCenter,
          child: Stack(
            children: [
              Container(
                child: Image.asset("assets/images/top.png"),
              ),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Stack(children: [
                    Container(
                      child: Image.asset("assets/images/bottom.png"),
                    ),
                  ])),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 60),
                      child: Text(
                        "رمز التحقق",
                        style: TextStyle(
                            color: kwhite,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: heightApp * 0.25,
                    ),
                    Center(
                      child: Text(
                        "تم إرسال رمز التحقق إلى 0563883383",
                        style: TextStyle(
                            color: kblack,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Form(
                     key: controller.otpFormKey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 60),
                            child: Directionality(
                                textDirection: TextDirection.ltr,
                                child: PinCodeTextField(
                                  //  enabled: controller.enableInbut.value,
                                  appContext: context,
                                  length: 6,
                                  obscureText: false,
                                  keyboardType: TextInputType.number,
                                  animationType: AnimationType.fade,
                                  pinTheme: PinTheme(
                                    borderRadius: BorderRadius.circular(20),
                                    shape: PinCodeFieldShape.box,
                                    fieldWidth: 55,
                                    fieldHeight: 50,
                                    // activeColor: controller.codeError.value
                                    //     ? Colors.red
                                    //     : Colors.green,
                                    activeFillColor: kgrey,
                                    inactiveFillColor: kgrey,

                                    inactiveColor: kbordergrey,
                                    borderWidth: 2,
                                    selectedColor: kbordergrey,
                                    selectedFillColor: kgrey,
                                  ),
                                  animationDuration:
                                      Duration(milliseconds: 300),
                                  enableActiveFill: true,
                                  // errorAnimationController: errorController,
                                  controller: controller.otpController,
                                  onCompleted: (value) {
                                       controller.otp = value;
                                  },
                                  onChanged: (value) {},
                                  validator: (value) {
                                    // return controller.validate(value!);
                                  },
                                  beforeTextPaste: (text) {
                                    print("Allowing to paste ");
                                    //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                                    //but you can show anything you want here, like your pop up saying wrong paste format or etc
                                    return true;
                                  },
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: MainButton(text: "تحقق", press: () {                                  Get.toNamed(Routes.BASIC);
}),
                          ),SizedBox(height: heightApp*0.05,),
                            TextButton(
                                onPressed: () {
                                  // Get.toNamed(Routes.BASIC);
                                },
                                child: Text('إعادة الإرسال',
                                    style: TextStyle(
                                        fontSize: 14,
                                        decoration: TextDecoration.underline,
                                        color: kblack,
                                        fontWeight: FontWeight.bold)),
                              ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ))
    ]));
  }
}
