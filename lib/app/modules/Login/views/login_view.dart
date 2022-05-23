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
                          child: Column(
                            children: [
                              BoxTextField(
                                  controller: controller.phoneController,
                                  keyboardType: TextInputType.text,
                                  onSaved: (value) {
                                    controller.phone = value;
                                  },
                                  validator: (value) {
                                    return controller.validateMobile(value!);
                                  },
                                  text: "رقم الهاتف أو البريد الالكتروني"),
                           
                              
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
                                  )),    Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       TextButton(
                         onPressed: () {
                           //Get.toNamed(Routes.VERIFY_REST_PASSWORD);
                         },
                         child: Text(
                           'هل نسيت كلمة المرور ؟',
                           style: TextStyle(
                             color: kblue,
                             fontSize: 14,
                             fontWeight: FontWeight.w600,
                           ),
                         ),
                       ),
                   
                     ],
                   ),
                              ],
                          ), ),
                      
                      SizedBox(
                        height: heightApp * 0.04,
                      ),
                      MainButton(
                          text: "تسجيل الدخول",
                          press: () {
                            //controller.checkLogin();
                                                             
 Get.offAndToNamed(Routes.BASIC);
                          }),
                      SizedBox(
                        height: heightApp * 0.05,
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
