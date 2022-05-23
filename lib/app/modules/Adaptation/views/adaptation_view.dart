import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qclinic/Shared/color/colors.dart';
import 'package:qclinic/Shared/widget/constants.dart';
import 'package:qclinic/Shared/widget/main_button.dart';
import 'package:qclinic/app/modules/Clinic/controllers/clinic_controller.dart';
import 'package:qclinic/app/routes/app_pages.dart';

import '../controllers/adaptation_controller.dart';

class AdaptationView extends GetView<AdaptationController> {
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
              Text(
                "التبني",
                style: TextStyle(
                    color: kblack, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {
                Get.toNamed(Routes.BASIC);
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
            ],
          ),
        ),
        body: GetBuilder<AdaptationController>(
            init: AdaptationController(),
            initState: (_) {},
            builder: (_) {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, right: 5),
                                child: GestureDetector(
                                    onTap: () {
                                      controller.onSelectCat(index);
                                    },
                                    child: controller.selectedCatIndex != index
                                        ? SizedBox(
                                            height: 100,
                                            width: 50,
                                            child: Container(
                                                // padding: const EdgeInsets.all(4),

                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: kwhite,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.5),
                                                      spreadRadius: 2,
                                                      blurRadius: 6,
                                                      offset: Offset(0,
                                                          0), // changes position of shadow
                                                    ),
                                                  ],
                                                ),
                                                child: Column(
                                                  children: [
                                                    SizedBox(
                                                      height: heightApp * 0.02,
                                                    ),
                                                    Image.asset(
                                                        "assets/images/DOG  1.png"),
                                                    SizedBox(
                                                      height: heightApp * 0.01,
                                                    ),
                                                    Text("كلاب")
                                                  ],
                                                )))
                                        : SizedBox(
                                            height: 100,
                                            width: 50,
                                            child: Container(
                                                // padding: const EdgeInsets.all(4),

                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: kblue,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.5),
                                                      spreadRadius: 2,
                                                      blurRadius: 6,
                                                      offset: Offset(0,
                                                          0), // changes position of shadow
                                                    ),
                                                  ],
                                                ),
                                                child: Column(
                                                  children: [
                                                    SizedBox(
                                                      height: heightApp * 0.02,
                                                    ),
                                                    Image.asset(
                                                        "assets/images/DOG  1.png"),
                                                    SizedBox(
                                                      height: heightApp * 0.01,
                                                    ),
                                                    Text("كلاب")
                                                  ],
                                                )))),
                              );
                            }),
                      ),
                      SizedBox(
                        height: heightApp * 0.03,
                      ),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemCount: 12,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 2,
                          mainAxisSpacing: 2,
                          childAspectRatio: (2 / 2.3),
                        ),
                        itemBuilder: (
                          context,
                          index,
                        ) {
                          return GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.DETIALS_ADAPTATION);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: kwhite,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 6,
                                        offset: Offset(
                                            0, 0), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 10, right: 10),
                                      child: Stack(children: [
                                        Image.asset(
                                            "assets/images/—Pngtree—dog collar color care ring_6577658 1.png"),
                                      ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'طوق',
                                            style: TextStyle(
                                                color: kblack,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                            size: 25,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                
              );
              
            }),
          floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.ADD_ADAPTATION);
        },
        child: SizedBox(
                    height: 57,
                    width: 57,
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
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
                          Icons.add,
                          color: kwhite,
                          size: 25.0,
                        ))),
        backgroundColor:kblue,
        tooltip: 'Capture Picture',
        elevation: 5,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked
            
            );
  }
}
