import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qclinic/Shared/color/colors.dart';
import 'package:qclinic/Shared/widget/constants.dart';
import 'package:qclinic/Shared/widget/gradient.dart';
import 'package:qclinic/Shared/widget/main_button.dart';
import 'package:qclinic/app/routes/app_pages.dart';

import '../controllers/detials_shop_controller.dart';

class DetialsShopView extends GetView<DetialsShopController> {
  final kInnerDecoration = BoxDecoration(
    color: Colors.white,
    border: Border.all(color: Colors.white),
    borderRadius: BorderRadius.circular(19),
  );

  final kGradientBoxDecoration = BoxDecoration(
    gradient: LinearGradient(
      colors: [
        const Color(0xFF628B8C),
        const Color(0xFF9ED0D2),
      ],
    ),
    border: Border.all(
      color: kblue,
    ),
    borderRadius: BorderRadius.circular(20),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder<DetialsShopController>(
            init: DetialsShopController(),
            initState: (_) {},
            builder: (_) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.CART);
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
                                          begin:
                                              const FractionalOffset(0.0, 0.0),
                                          end: const FractionalOffset(1.0, 0.0),
                                          stops: [0.0, 1.0],
                                          tileMode: TileMode.clamp),
                                    ),
                                    child: Icon(
                                      Icons.shopping_bag_outlined,
                                      color: kwhite,
                                      size: 25.0,
                                    ))),
                          ),
                          Text(
                            "التسوق",
                            style: TextStyle(
                                color: kblack,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
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
                                          begin:
                                              const FractionalOffset(0.0, 0.0),
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
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: SizedBox(
                        child: Image.asset(
                            "assets/images/—Pngtree—bone pet color shape_6525136 1.png"),
                      ),
                    ),
                    SizedBox(
                      height: heightApp * 0.04,
                    ),
                    Center(
                      child: SizedBox(
                        height: 70,
                        child: ListView.builder(
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context, index) => Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Container(
                                height: 73,
                                width: 73,
                                padding: EdgeInsets.only(left: 10, right: 10),
                                decoration: BoxDecoration(
                                  color: kwhite,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border(
                                    top: BorderSide(
                                      //                   <--- right side
                                      color: Color(0xffEFEFEF),
                                      width: 2.0,
                                    ),
                                    right: BorderSide(
                                      //                   <--- right side
                                      color: Color(0xffEFEFEF),
                                      width: 2.0,
                                    ),
                                    left: BorderSide(
                                      //                   <--- right side
                                      color: Color(0xffEFEFEF),
                                      width: 2.0,
                                    ),
                                    bottom: BorderSide(
                                      //                   <--- right side
                                      color: Color(0xffEFEFEF),
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                                child: Center(
                                    child: Image.asset(
                                        "assets/images/—Pngtree—bone pet color shape_6525136 2.png")),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: heightApp * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: Text(
                        " عظام كلاسيكي للألعاب",
                        style: TextStyle(
                            color: kblack,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: heightApp * 0.01,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: Text(
                        "لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ... او نماذج  لوريم ايبسوم ميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ... او نماذج مواقع انترنت ..مواقع انترنت ..",
                        style: TextStyle(
                            color: kblack,
                            fontSize: 14,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25,
                        right: 25,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '12 ر.س',
                            style: TextStyle(
                                color: kblack,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          UnicornOutlineButton(
                              strokeWidth: 2,
                              radius: 20,
                              gradient: LinearGradient(
                                colors: [
                                  const Color(0xFF628B8C),
                                  const Color(0xFF9ED0D2),
                                ],
                              ),
                              child: Container(
                                height: 40,
                                padding: EdgeInsets.only(left: 3, right: 3),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          controller.increment();
                                        },
                                        icon: Icon(Icons.add)),
                                    SizedBox(
                                      width: widthApp * 0.04,
                                    ),
                                    Text(
                                      controller.count.toString(),
                                      style: TextStyle(
                                          color: kblack,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: widthApp * 0.04,
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          controller.decrement();
                                        },
                                        icon: Icon(Icons.remove)),
                                  ],
                                ),
                              ),
                              onPressed: () {})
                          // Container(
                          //   child: Padding(
                          //     padding: const EdgeInsets.all(1.0),
                          //     child: Container(
                          //       child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //         children: [
                          //           IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                          //           Text("1", style: TextStyle(
                          //       color: kblack, fontSize: 20, fontWeight: FontWeight.bold),),
                          //             IconButton(onPressed: (){}, icon: Icon(Icons.remove)),
                          //         ],
                          //       ),
                          //       decoration: kInnerDecoration,
                          //     ),
                          //   ),
                          //   width: 142,
                          //   height: 45.0,
                          //   decoration: kGradientBoxDecoration,
                          // ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: heightApp * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: MainButton(
                          text: "إضافة إلى السلة",
                          press: () {
                            Get.toNamed(Routes.CART);
                          }),
                    )
                  ],
                ),
              );
            }));
  }
}
