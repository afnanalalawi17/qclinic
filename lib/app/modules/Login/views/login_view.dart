import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qclinic/Shared/color/colors.dart';
import 'package:qclinic/Shared/widget/box_Text_Field.dart';
import 'package:qclinic/Shared/widget/constants.dart';
import 'package:qclinic/Shared/widget/main_button.dart';
import 'package:qclinic/app/routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
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
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "تسجيل الدخول ",
                        style: TextStyle(
                            color: kwhite,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "مرحبا بك من جديد",
                        style: TextStyle(
                            color: kwhite,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: heightApp * 0.20,
                      ),
                      Form(
                          key: controller.loginFormKey,
                          child: BoxTextField(
                              controller: controller.phoneController,
                              keyboardType: TextInputType.text,
                              onSaved: (value) {
                                controller.phone = value;
                              },
                              validator: (value) {
                                return controller.validateMobile(value!);
                              },
                              text: "رقم الهاتف")),
                      Text(
                        " الرجاء إدخال رقم الهاتف فقط وسوف تحصل على رمز التحقق الخاص بك",
                        style: TextStyle(
                            color: kblack,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: heightApp * 0.04,
                      ),
                      MainButton(
                          text: "إحصل على رمز التحقق",
                          press: () {
                            // controller.checkLogin();
                                                              Get.toNamed(Routes.OTP);

                          }),
                      SizedBox(
                        height: heightApp * 0.10,
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('ليس لديك حساب ؟',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: kblack,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: widthApp * 0.01,
                              ),
                              TextButton(
                                onPressed: () {
                                  Get.toNamed(Routes.SIGNUP);
                                },
                                child: Text('سجل الان',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: kblue,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              )
            ],
          )),
      
    ]));
  }
}
