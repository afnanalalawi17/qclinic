import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qclinic/Shared/color/colors.dart';
import 'package:qclinic/Shared/style/Text_style.dart';
import 'package:qclinic/Shared/widget/constants.dart';
import 'package:qclinic/Shared/widget/main_button.dart';
import 'package:qclinic/app/routes/app_pages.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
  Text(
                  "الملف الشخصي",
                  style: TextStyle(
                      color: kblack, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                                          Navigator.of(context).pop();

                  },
                  child: SizedBox(
                      height: 42,
                      width: 42,
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors: [
                                  const Color(0xFF628B8C),
                                  const Color(0xFF9ED0D2),
                                ],
                                begin: const FractionalOffset(0.0, 0.0),
                                end: const FractionalOffset(1.0, 0.0),
                                stops: [0.0, 1.0],
                                tileMode: TileMode.clamp),
                          ),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: kwhite,
                            size: 25.0,
                          ))),
                ),
            ],),
      ),
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            Center(
              child: CircleAvatar(
                radius: 66,
                backgroundColor: kblue,
              ),
            ),
            SizedBox(
              height: heightApp * 0.01,
            ),
            Center(
                child: Text(
              "محمد عبد الكريم",
              style: TextStyle(
                  color: kblack, fontSize: 14, fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: heightApp * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.phone_in_talk_outlined,color: kblack,),
                
                Text(
                  "0566220639",
                  style: TextStyle(
                  color: kblack,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
                ), ],
                ),
               
                Row(
                  children: [
                      Icon(Icons.email_outlined,color: kblack,),
                    Text(
                      "afalalawi@hotmail.com",
                      style: TextStyle(
                      color: kblack,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ), SizedBox(
              height: heightApp * 0.03,
            ),Center(
              child: SizedBox(
      height: heightApp * 0.055,
      width: widthApp*0.55,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: kblue,
          shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        onPressed: ()
        {
          
         // Get.toNamed(Routes.EDIT_PROFILE);
          
          },
        child: Center(
          child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/edit.png"),
              SizedBox(width: widthApp*0.02,),
              Text(
                  "تعديل البيانات",
                  style: kWhite_text,
              ),
            ],
          ),
        ),
      ),
    ),
            ),
            SizedBox(
              height: heightApp * 0.03,
            ),
            Text(
              "الاحصائيات ",
              style: TextStyle(
                  color: kblack, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 126,
                    width: 160,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            const Color(0xFF182C61),
                            const Color(0xFF3B3B98),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, right: 10, left: 10),
                          child: Row(
                            children: [
                              Text(
                                "عدد الطلبات",
                                style: TextStyle(
                                    color: kwhite,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: kwhite,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                  child: Image.asset(
                                      "assets/images/file-text.png"),
                                ),
                              ),
                              Text(
                                "5635",
                                style: TextStyle(
                                    color: kwhite,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
                Container(
                    height: 126,
                    width: 160,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            const Color(0xFF6D214F),
                            const Color(0xFFB33771),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, right: 10, left: 10),
                          child: Row(
                            children: [
                              Text(
                                "عدد الحجوزات",
                                style: TextStyle(
                                    color: kwhite,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: kwhite,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                  child: Image.asset(
                                      "assets/images/check-square.png"),
                                ),
                              ),
                              Text(
                                "6677",
                                style: TextStyle(
                                    color: kwhite,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              ],
            ),
            SizedBox(
              height: heightApp * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 126,
                    width: 160,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            const Color(0xFF82589F),
                            const Color(0xFFD6A2E8),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, right: 10, left: 10),
                          child: Row(
                            children: [
                              Text(
                                "عدد الاستشارات",
                                style: TextStyle(
                                    color: kwhite,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: kwhite,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                  child:
                                      Image.asset("assets/images/layers.png"),
                                ),
                              ),
                              Text(
                                "5635",
                                style: TextStyle(
                                    color: kwhite,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
                Container(
                    height: 126,
                    width: 160,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            const Color(0xFFFC427B),
                            const Color(0xFFFD7272),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, right: 10, left: 10),
                          child: Row(
                            children: [
                              Text(
                                "عدد الحيوانات",
                                style: TextStyle(
                                    color: kwhite,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: kwhite,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                  child: Image.asset(
                                      "assets/images/01 Paw Print 4.png"),
                                ),
                              ),
                              Text(
                                "9876",
                                style: TextStyle(
                                    color: kwhite,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              ],
            ),
SizedBox(height: heightApp*0.04,),
          
          ],
        ),
      ),
    ));
  }
}
