import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qclinic/Shared/color/colors.dart';
import 'package:qclinic/Shared/widget/box_Text_Field.dart';
import 'package:qclinic/Shared/widget/constants.dart';
import 'package:qclinic/Shared/widget/main_button.dart';
import 'package:qclinic/app/routes/app_pages.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
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
            padding: EdgeInsets.only(left: 20, right: 20, top: 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "تسجيل جديد ",
                  style: TextStyle(
                      color: kwhite, fontSize: 24, fontWeight: FontWeight.bold),
                ),
                
                SizedBox(
                  height: heightApp * 0.17,
                ),
                Form(
                    key: controller.SignuoFormKey,
                    child: Column(
                      children: [ 
                        BoxTextField(
                        controller: controller.nameController,
                        keyboardType: TextInputType.text,
                        onSaved: (value) {
                          controller.name = value;
                        },
                        validator: (value) {
                          return controller.validateName(value!);
                        },
                        text: "الاسم"),
                        BoxTextField(
                            controller: controller.phoneController,
                            keyboardType: TextInputType.text,
                            onSaved: (value) {
                              controller.phone = value;
                            },
                            validator: (value) {
                              return controller.validateMobile(value!);
                            },
                            text: "رقم الهاتف"),
                             BoxTextField(
                        controller: controller.emailController,
                        keyboardType: TextInputType.text,
                        onSaved: (value) {
                          controller.email = value;
                        },
                        validator: (value) {
                          return controller.validateEmail(value!);
                        },
                        text: "البريد الإلكتروني(اختياري)")
                      ],
                    )),
               
                SizedBox(
                  height: heightApp * 0.04,
                ),
                MainButton(text: "تسجيل", press: () {
                  Get.toNamed(Routes.BASIC);
                  controller.checkLogin();}),
                SizedBox(
                  height: heightApp * 0.05,
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(' لديك حساب ؟',
                            style: TextStyle(
                                fontSize: 14,
                                color: kblack,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: widthApp * 0.01,
                        ),
                        TextButton(
                          onPressed: () {

                             Get.toNamed(Routes.LOGIN);
                          },
                          child: Text('تسجيل الدخول',
                              style: TextStyle(
                              
                                  fontSize: 14,
                                  color: kblue,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ],
                    )),
                     Center(
                       child: GestureDetector(
                         onTap: () {
                           Get.toNamed(Routes.BASIC);
                         },
                         child: Text(' الدخول كـ زائر',
                                style: TextStyle(  decoration: TextDecoration.underline,
                                    fontSize: 14,
                                    color: kblack,
                                    fontWeight: FontWeight.bold)),
                       ),
                     ),
              ],
            ),
          ),
        )
      ],
    ))]));
  }
}
