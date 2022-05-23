import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

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
                    Row(crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "تم إرسال رمز التحقق إلى ",
                          style: TextStyle(
                              color: kblack,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      Text(
                              "4455657667",
                              style: TextStyle(
                                  color: kblue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )
                      ],
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
                          Obx(() {
              if (controller.timeOutTimer.isFalse ||
                  controller.codeError.isFalse) {
                return Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: MainButton(
                      text: "تأكيد",
                      press: () {
                           Get.offAndToNamed(Routes.BASIC);
                       // controller.checkDone();
                      }),
                );
              } else {
                return Container();
              }
            }), SizedBox(
                  height: heightApp * 0.03,
                ),   
                Obx(() {
              if (controller.codeError.isFalse) {
                return Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'إعادة الارسال خلال',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              //  color: KColor_Text_Main_2,
                            ),
                          ),
                          !controller.timeOutTimer.value || controller.codeError.value 
                          ? Timer( controller: controller,)
                          : Text(
                            ' 0',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              //    color: KColor_Text_Main_2,
                            ),
                          ),
                          Text(
                            ' ثانية',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              //    color: KColor_Text_Main_2,
                            ),
                          ),
                      
                        ],
                      ),
                      controller.timeOutTimer.value || controller.codeError.value ? Center(
                      child: TextButton(
                        onPressed: () {
                          
                         
                          controller.endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 30;
                     //   controller.getTOPAgain();
                          controller.timeOutTimer.value = true;
                          
                      
                         controller.onStartTimer();
                        },
                        child: Text(
                          'إعادة ارسال الرسالة',
                        ),
                      ),
                ) : Container()
                    ],
                  ),
                );
              } else {
                return Container();
              }
            
            }),
            Obx(() {
              if (controller.codeError.isTrue) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Center(
                    child: Center(
                      child: Text(
                        'الرقم الذي قمت بادخاله لا يتوافق مع الكود المرسل الرجاء المحاولة مرة اخرى',
                        textAlign: TextAlign.center,
                        //  style: KText_Style_16,
                      ),
                    ),
                  ),
                );
              } else{
                return Container();
              }
               
            }),
           
            
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Text('لم يتم إرسال الرمز ؟',
            //           style: TextStyle(
            //               fontSize: 16,
            //               color: kblack,
            //               fontWeight: FontWeight.bold)),
            //       SizedBox(
            //         width: widthApp * 0.01,
            //       ),
            //       TextButton(
            //         onPressed: () {
            //           // Get.toNamed(Routes.LOGIN);
            //         },
            //         child: Text('إرسال رمز جديد ',
            //             style: TextStyle(
            //                 fontSize: 16,
            //                 color: kblue,
            //                 fontWeight: FontWeight.bold)),
            //       ),
            //     ],
            //   )),
          ],
        ),
      ),
    ]))]))]));
  }
}

class Timer extends StatelessWidget {
  const Timer({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final OtpController controller;

  @override
  Widget build(BuildContext context) {
    return CountdownTimer(
      endTime: DateTime.now().millisecondsSinceEpoch + 1000 * 30,
      onEnd: controller.onEnd,
      widgetBuilder: (_, CurrentRemainingTime? time) {
        if (time == null) {
          return Text('0');
        }
        return Text(
          '${time.sec}',
          style: TextStyle(
            fontSize: 16,
            // color: KColor_Text_Main_2,
          ),
        );
      },
    );
  }
}
