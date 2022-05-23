import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:qclinic/Shared/color/colors.dart';
import 'package:qclinic/Shared/style/Text_style.dart';
import 'package:qclinic/Shared/widget/constants.dart';
import 'package:qclinic/app/data/Services/Login_Stat_Controller.dart';
import 'package:qclinic/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final loginStat = Get.put(LoginStateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (loginStat.loginState == 'Login')
                    Text(
                      GetStorage().read('phoneNo').toString(),
                      style: TextStyle(
                          color: kblack,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  if (loginStat.loginState != 'Login')
                    Text(
                      'مرحباً بك',
                      style: TextStyle(
                          color: kblack,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  Text(
                    " نقدم لك كل ما يخص حيوانك الاليف",
                    style: TextStyle(color: kblack, fontSize: 10),
                  ),
                ],
              ),
              SizedBox(
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
                      Icons.search,
                      color: kwhite,
                      size: 25.0,
                    )),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "حيواناتي الاليفة",
                        style: TextStyle(
                            color: kblack,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: heightApp * 0.02,
                      ),
                      Container(
                          width: double.infinity,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 6,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              ListView.separated(
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    width: 5,
                                  );
                                },
                                scrollDirection: Axis.horizontal,
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                shrinkWrap: true,
                                physics: const ClampingScrollPhysics(),
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return SizedBox(
                                      width: 60,
                                      child:
                                          Image.asset("assets/images/cat.png"));
                                },
                              ),
                              Image.asset("assets/images/arrow.png"),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 15, bottom: 15, left: 4, right: 4),
                                child: Container(
                                  width: 3,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: kblue),
                                ),
                              ),
                              SizedBox(
                                width: widthApp * 0.03,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(Routes.ADD_ANIMALE);
                                },
                                child: SizedBox(
                                  width: 61,
                                  height: 60,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: kgrey),
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        color: kblue,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                      SizedBox(
                        height: heightApp * 0.03,
                      ),
                      Container(
                        width: double.infinity,
                        height: 125,
                        decoration: BoxDecoration(
                            color: kblue,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: heightApp * 0.03,
                                  ),
                                  Container(
                                    width: 180,
                                    child: Text(
                                      "تبني اي حيوان اليف واحصل على تخفيض يصل إلي 20٪ لكل الخدمات ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: kwhite,
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                  SizedBox(
                                    height: heightApp * 0.01,
                                  ),
                                  SizedBox(
                                    height: heightApp * 0.044,
                                    width: widthApp * 0.33,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: kwhite,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      ),
                                      onPressed: () { Get.toNamed(Routes.ADAPTATION);},
                                      child: Center(
                                        child: Text(
                                          "تبني الان",
                                          style: TextStyle(color: kblack),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Image.asset("assets/images/ads.png"),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                       Get.toNamed(Routes.CLINIC);
                                    },
                                    child: Container(
                                      height: 160,
                                      width: 160,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Color(0xff2980B9)),
                                      child: Center(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      top: 22),
                                                  child: Align(
                                                      alignment: Alignment.center,
                                                      child: SizedBox(
                                                          height: 90,
                                                          width: 84,
                                                          child: Image.asset(
                                                              "assets/images/clinic.png"))),
                                                ),
                                                SizedBox(
                                                  height: heightApp * 0.02,
                                                ),
                                                Text(
                                                  "العيادة",
                                                  style: TextStyle(
                                                      color: kwhite,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                       Get.toNamed(Routes.SHOP);
                                    },
                                    child: Container(
                                      height: 160,
                                      width: 160,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Color(0xff9B59B6)),
                                      child: Center(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      top: 22),
                                                  child: Align(
                                                      alignment: Alignment.center,
                                                      child: SizedBox(
                                                          height: 90,
                                                          width: 84,
                                                          child: Image.asset(
                                                              "assets/images/home.png"))),
                                                ),
                                                SizedBox(
                                                  height: heightApp * 0.02,
                                                ),
                                                Text(
                                                  "التسوق",
                                                  style: TextStyle(
                                                      color: kwhite,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: heightApp * 0.02,
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                       
                                     
                                    
                                    },
                                    child: Container(
                                      height: 160,
                                      width: 160,
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.3),
                                              spreadRadius: 2,
                                              blurRadius: 6,
                                              offset: Offset(0,
                                                  0), // changes position of shadow
                                            ),
                                          ],
                                          borderRadius: BorderRadius.circular(20),
                                          color: kwhite),
                                      child: Center(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      top: 22),
                                                  child: Align(
                                                      alignment: Alignment.center,
                                                      child: SizedBox(
                                                          height: 90,
                                                          width: 84,
                                                          child: Image.asset(
                                                              "assets/images/clean.png"))),
                                                ),
                                                SizedBox(
                                                  height: heightApp * 0.02,
                                                ),
                                                Text(
                                                  "الخدمات",
                                                  style: TextStyle(
                                                      color: Colors.green,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                        
                                       Get.toNamed(Routes.ADAPTATION);
                                    
                                    },
                                    child: Container(
                                      height: 160,
                                      width: 160,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Color(0xffC0392B)),
                                      child: Center(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      top: 22),
                                                  child: Align(
                                                      alignment: Alignment.center,
                                                      child: SizedBox(
                                                          height: 90,
                                                          width: 84,
                                                          child: Image.asset(
                                                              "assets/images/hand.png"))),
                                                ),
                                                SizedBox(
                                                  height: heightApp * 0.02,
                                                ),
                                                Text(
                                                  "التبني ",
                                                  style: TextStyle(
                                                      color: kwhite,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // GridView.builder(
                            //   padding: const EdgeInsets.only(top: 22),
                            //     physics: const ClampingScrollPhysics(),
                            //     scrollDirection: Axis.vertical,
                            //     shrinkWrap: true,
                            //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            //       crossAxisCount: 2,
                            //       crossAxisSpacing: 6,
                            //      mainAxisSpacing: 6,
                            //       childAspectRatio: 2.0 / 2,
                            //     ),
                            //     itemCount: 1,
                            //     itemBuilder: (
                            //       context,
                            //       index,
                            //     ) {
                            //       return GestureDetector(onTap: () {
                            //           Get.toNamed(Routes.SHOP);
                            //       },
                            //         child: Stack(
                            //           children: [
                            //             Container(
                            //               height: 180,
                            //               width: 180,
                            //               decoration: BoxDecoration(

                            //                 color: kblue,
                            //                 borderRadius: BorderRadius.circular(20),
                            //               ),
                            //             ),
                            //             Column(
                            //               children: [
                            //                 Padding(
                            //                   padding: const EdgeInsets.only(top: 22),
                            //                   child: Align(
                            //                       alignment: Alignment.center,
                            //                       child: SizedBox(
                            //                           height: 90,
                            //                           width: 84,
                            //                           child:
                            //                               Image.asset("assets/images/home.png"))),
                            //                 ),
                            //                 SizedBox(
                            //                   height: heightApp * 0.02,
                            //                 ),
                            //                 Text(
                            //                   "التسوق",
                            //                   style: TextStyle(
                            //                       color: kwhite,
                            //                       fontSize: 18,
                            //                       fontWeight: FontWeight.bold),
                            //                 ),
                            //               ],
                            //             )
                            //           ],
                            //         ),
                            //       );
                            //     }),
                            SizedBox(
                              height: heightApp * 0.10,
                            ),
                          ],
                        ),
                      ),
                    ]))));
  }
}
