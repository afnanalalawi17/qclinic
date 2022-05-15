import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:qclinic/Shared/color/colors.dart';
import 'package:qclinic/Shared/style/Text_style.dart';
import 'package:qclinic/Shared/widget/constants.dart';
import 'package:qclinic/Shared/widget/gradient.dart';
import 'package:qclinic/Shared/widget/main_button.dart';
import 'package:qclinic/app/routes/app_pages.dart';
import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
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
      appBar: AppBar( 
        automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
        title:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "السلة",
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
              ],
            ),
      ),
        body:GetBuilder<CartController>(
                  init: CartController(),
                  initState: (_) {},
                  builder: (_) {
                    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            
            Container(
              width: double.infinity,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(.20),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    Icon(Icons.warning_amber_rounded, color: Colors.red),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, right: 2),
                      child: Text(
                        "لحذف أي عنصر فقط اسحب لليمين",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: heightApp * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Row(
                children: [
                  SizedBox(
                      height: 25,
                      width: 25,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              //                   <--- right side
                              color: kblue,
                              width: 2.0,
                            ),
                            right: BorderSide(
                              //                   <--- right side
                              color: kblue,
                              width: 2.0,
                            ),
                            left: BorderSide(
                              //                   <--- right side
                              color: kblue,
                              width: 2.0,
                            ),
                            bottom: BorderSide(
                              //                   <--- right side
                              color: kblue,
                              width: 2.0,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      )),
                  SizedBox(
                    width: widthApp * 0.03,
                  ),
                  Text(
                    "إختيار الكل",
                    style: TextStyle(
                        color: kblack,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: heightApp * 0.01,
            ),
            ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                      height: 20,
                    ),
                padding: const EdgeInsets.all(4),
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      SizedBox(
                          height: 25,
                          width: 25,
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: kblue),
                              child: Icon(
                                Icons.check,
                                color: kwhite,
                                size: 15.0,
                              ))),
                      SizedBox(
                        width: widthApp * 0.03,
                      ),
                      Expanded(
                        child: Container(
                            width: double.infinity,
                            height: 90,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 6,
                                  offset: Offset(
                                      0, 0), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Slidable(
                                useTextDirection: false,
                                key: const ValueKey(0),
                                endActionPane: ActionPane(
                                  motion: ScrollMotion(),
                                  //dismissible: DismissiblePane(onDismissed: () {}),
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 200,
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(
                                              255, 193, 203, 0.17),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizedBox(width: 60),
                                            GestureDetector(
                                              child: Icon(
                                                Icons.delete,
                                                color: Color(0xffFE3F60),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                child: Container(
                                    width: double.infinity,
                                    padding: EdgeInsets.only(top: 10),
                                    //height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      // boxShadow: [
                                      //   BoxShadow(
                                      //     color: Colors.grey.withOpacity(0.5),
                                      //     spreadRadius: 2,
                                      //     blurRadius: 6,
                                      //     offset: Offset(0, 0), // changes position of shadow
                                      //   ),
                                      // ],
                                    ),
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                            "assets/images/—Pngtree—bone pet color shape_6525136 2.png"),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8, right: 66, left: 10),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Text(
                                                        'طوق',
                                                        style: TextStyle(
                                                            color: kblack,
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Text(
                                                        '12 ر.س',
                                                        style: TextStyle(
                                                            color: kblack,
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      )
                                                    ],
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
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    )))),
                      ),
                    ],
                  );
                }),
            Divider(
              thickness: 02.0,
              color: Color(0xffBDBDBD),
            ),
            SizedBox(
              height: heightApp * 0.01,
            ),
            GestureDetector(
              onTap: () {
                Get.dialog(
                  AlertDialog(
                    // contentPadding: const EdgeInsets.fromLTRB(55.0, 50.0, 55.0, 24.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    scrollable: true,
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ادخل رمز التخفيض',
                          style: TextStyle(
                              color: Color(0xff828282),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: heightApp * 0.01,
                        ),
                        TextField(
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(5.0),
                                filled: true,
                                fillColor: const Color(0XFFF2F2F2),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: kbordergrey, width: 2),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: kbordergrey, width: 2),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                hintStyle: TextStyle(color: Color(0xffBDBDBD))),
                            textAlign: TextAlign.start,
                            onChanged: (string) {}),
                        SizedBox(
                          height: heightApp * 0.03,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  width: widthApp * 0.30,
                                  child:
                                      MainButton(text: "إدخال", press: () {})),
                              SizedBox(
                                width: widthApp * 0.30,
                                height: heightApp * 0.055,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: kwhite,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      side: BorderSide(color: kblue, width: 2)),
                                  onPressed: () {                                          Navigator.of(context).pop();
},
                                  child: Center(
                                    child: Text("إلغاء",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: kblue,
                                        )),
                                  ),
                                ),
                              )
                            ]),
                        20.0.sizedHeight,
                      ],
                    ),
                  ),
                  barrierDismissible: false,
                );
              },
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      colors: [
                        const Color(0xFFC0392B).withOpacity(.77),
                        const Color(0xFFC0392B),
                      ],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(1.0, 0.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("هل لديك كود خصم ؟",
                                style: TextStyle(
                                    color: kwhite,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            Text("إضغط لإدخاله",
                                style: TextStyle(
                                    color: kwhite,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal))
                          ],
                        ),
                      ),
                      Image.asset("assets/images/gift.png")
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: heightApp * 0.02,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("مجموع السلة"), Text("المبلغ الكلي")],
                ),
                SizedBox(
                  height: heightApp * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("3"), Text("50 ر.س")],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: heightApp * 0.07,
            ),
            MainButton(
              text: "شراء الان",
              press: () {},
            )
          ],
        ),
      ),
    );}));
  }
}
