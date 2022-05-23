import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qclinic/Shared/color/colors.dart';
import 'package:qclinic/Shared/widget/box_Text_Field.dart';
import 'package:qclinic/Shared/widget/constants.dart';
import 'package:qclinic/Shared/widget/main_button.dart';
import 'package:qclinic/app/routes/app_pages.dart';

import '../controllers/edit_profile_controller.dart';

class EditProfileView extends GetView<EditProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  padding: EdgeInsets.only(left: 20, right: 20, top: 70),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "تعديل المعلومات",
                        style: TextStyle(
                            color: kwhite,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: heightApp * 0.15,
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
                                  text: "البريد الإلكتروني(اختياري)"),
                              Obx(() => Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8),
                                        child: Text(
                                          " كلمة المرور",
                                            style: TextStyle(
                fontWeight: FontWeight.bold, color: kblack, fontSize: 12),
                                        ),
                                      ),
                                      TextFormField( textAlign: TextAlign.center,
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: kbordergrey, width: 2),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: kbordergrey, width: 2),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.red),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.red),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            filled: true,
                                            fillColor: kgrey,
                                            contentPadding: EdgeInsets.all(12),
                                            // hintText: '********',
                                            suffixIcon: IconButton(
                                              icon: controller
                                                      .obscureText.value
                                                  ? Icon(Icons
                                                      .visibility_off_outlined)
                                                  : Icon(Icons
                                                      .visibility_outlined),
                                              onPressed: () {
                                                controller.changPassVisiblit();
                                              },
                                            )),
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        obscureText:
                                            controller.obscureText.value,
                                        controller: controller
                                            .passwordController,
                                        onSaved: (value) {
                                          controller.password = value!;
                                        },
                                        onChanged: (value) {
                                          controller.password = value;
                                        },
                                        validator: (value) {
                                          return controller
                                              .validatePassword(value!);
                                        },
                                      ),
                                    ],
                                  )), SizedBox(
          height: heightApp * 0.01,
        ), Obx(() => Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8),
                                        child: Text(
                                          "تاكيد كلمة المرور",
                                           style: TextStyle(
                fontWeight: FontWeight.bold, color: kblack, fontSize: 12),
                                        ),
                                      ),
                                      TextFormField( textAlign: TextAlign.center,
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: kbordergrey, width: 2),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: kbordergrey, width: 2),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.red),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.red),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            filled: true,
                                            fillColor: kgrey,
                                            contentPadding: EdgeInsets.all(12),
                                            
                                            suffixIcon: IconButton(
                                              icon: controller
                                                      .obscureText1.value
                                                  ? Icon(Icons
                                                      .visibility_off_outlined)
                                                  : Icon(Icons
                                                      .visibility_outlined),
                                              onPressed: () {
                                                controller.changPassVisiblit1();
                                              },
                                            )),
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        obscureText:
                                            controller.obscureText1.value,
                                        controller: controller
                                            .confirm_passwordController,
                                        onSaved: (value) {
                                          controller.confirm_password = value!;
                                        },
                                        onChanged: (value) {
                                          controller.confirm_password = value;
                                        },
                                        validator: (value) {
                                          return controller
                                              .validateRePassword(value!);
                                        },
                                      ),
                                    ],
                                  )),
                            ],
                          )),
                      SizedBox(
                        height: heightApp * 0.04,
                      ),
                      MainButton(
                          text: "تعديل",
                          press: () {
                            controller.checkSignup();
                          }),
                     
                    
                    ],
                  ),
                ),
              )
            ],
          ))
    ]));
  }
}
