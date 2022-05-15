import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qclinic/Shared/color/colors.dart';
import 'package:qclinic/Shared/widget/constants.dart';
import 'package:qclinic/Shared/widget/main_button.dart';

import '../controllers/detials_adaptation_controller.dart';

class DetialsAdaptationView extends GetView<DetialsAdaptationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset("assets/images/img.png"),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                    height: 42,
                    width: 42,
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kwhite),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: kblue,
                          size: 25.0,
                        ))),
              ),
            ),
            SingleChildScrollView(
                child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 340),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "أرنوبي",
                              style: TextStyle(
                                  color: kblack,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                    height: 42,
                                    width: 42,
                                    child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color(0xffC23616)
                                                .withOpacity(.30)),
                                        child: Image.asset(
                                            "assets/images/phone-call.png"))),
                                SizedBox(
                                  width: widthApp * 0.01,
                                ),
                                SizedBox(
                                    height: 42,
                                    width: 42,
                                    child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color(0xff9ED0D2)
                                                .withOpacity(.30)),
                                        child: Image.asset(
                                            "assets/images/chat.png"))),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: heightApp * 0.02,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Color(0xff828282),
                            ),
                            Text(
                              "الطائف شارع الملك فيصل مبني رقم 12 الطابق الاول",
                              style: TextStyle(
                                  color: kblack,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal),
                            )
                          ],
                        ),
                        SizedBox(
                          height: heightApp * 0.02,
                        ),
                        Center(
                          child: SizedBox(
                            height: 80,
                            child: ListView.builder(
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 4,
                              itemBuilder: (context, index) => Padding(
                                  padding:
                                      const EdgeInsets.only(left: 6, right: 6),
                                  child: Container(
                                    height: 75,
                                    width: 76,
                                    // padding: EdgeInsets.only(left: 10, right: 10),
                                    // decoration: BoxDecoration(
                                    //   color: kgrey,
                                    //   borderRadius: BorderRadius.circular(20),
                                    //   border: Border(
                                    //     top: BorderSide(
                                    //       //                   <--- right side
                                    //       color: Color(0xffEFEFEF),
                                    //       width: 2.0,
                                    //     ),
                                    //     right: BorderSide(
                                    //       //                   <--- right side
                                    //       color: Color(0xffEFEFEF),
                                    //       width: 2.0,
                                    //     ),
                                    //     left: BorderSide(
                                    //       //                   <--- right side
                                    //       color: Color(0xffEFEFEF),
                                    //       width: 2.0,
                                    //     ),
                                    //     bottom: BorderSide(
                                    //       //                   <--- right side
                                    //       color: Color(0xffEFEFEF),
                                    //       width: 2.0,
                                    //     ),
                                    //   ),
                                    // ),
                                    child:
                                        Image.asset("assets/images/img2.png"),
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: heightApp * 0.02,
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 110,
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xff6F1E51)),
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "الجنس",
                                        style: TextStyle(
                                            color: kwhite.withOpacity(.50),
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      Text("ذكر",  style: TextStyle(
                                            color: kwhite,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 110,
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xff833471)),
                                     child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "العمر",
                                        style: TextStyle(
                                            color: kwhite.withOpacity(.50),
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      Text("سنة",  style: TextStyle(
                                            color: kwhite,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 110,
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xffB53471)),
                                     child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "الوزن",
                                        style: TextStyle(
                                            color: kwhite.withOpacity(.50),
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      Text("1كجم",  style: TextStyle(
                                            color: kwhite,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),  SizedBox(
                          height: heightApp * 0.02,
                        ), Text(
                              "التفاصيل",
                              style: TextStyle(
                                  color: kblack,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ), SizedBox(
                          height: heightApp * 0.01,
                        ),Text(
              "لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ... او نماذج  لوريم ايبسوم ميم لتعرض على العميل ليتصور طريقه  ..",
              style: TextStyle(
                  color: kblack, fontSize: 14, fontWeight: FontWeight.normal),
            ),
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}
