import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qclinic/Shared/color/colors.dart';
import 'package:qclinic/Shared/widget/constants.dart';
import 'package:qclinic/app/routes/app_pages.dart';
import '../controllers/shop_controller.dart';

class ShopView extends GetView<ShopController> {
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
                                begin: const FractionalOffset(0.0, 0.0),
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
                            Icons.arrow_back_ios_new,
                            color: kwhite,
                            size: 25.0,
                          ))),
                ),
              ],
            ),
      ),
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
            TextField(
                decoration: InputDecoration(
                    hintText: 'البحث..',
                    contentPadding: const EdgeInsets.all(10.0),
                    filled: true,
                    fillColor: const Color(0XFFF2F2F2),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kbordergrey, width: 2),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kbordergrey, width: 2),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    suffixIcon: const Icon(
                      Icons.search,
                      color: Color(0xffBDBDBD),
                      size: 28.0,
                      textDirection: TextDirection.ltr,
                    ),
                    hintStyle: TextStyle(color: Color(0xffBDBDBD))),
                textAlign: TextAlign.start,
                onChanged: (string) {}),
            SizedBox(
              height: heightApp * 0.02,
            ),
            Text(
              "اخر المنتجات",
              style: TextStyle(
                  color: kblack, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 200,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 12,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: (1 / 0.8),
                ),
                itemBuilder: (
                  context,
                  index,
                ) {
                  return GestureDetector(
                    onTap: () {
                        Get.toNamed(Routes.DETIALS_SHOP);
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
                                offset:
                                    Offset(0, 0), // changes position of shadow
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
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'طوق',
                                        style: TextStyle(
                                            color: kblack,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '12 ر.س',
                                        style: TextStyle(
                                            color: kblack,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                      height: 37,
                                      width: 37,
                                      child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            gradient: LinearGradient(
                                                colors: [
                                                  const Color(0xFF628B8C),
                                                  const Color(0xFF9ED0D2),
                                                ],
                                                begin: const FractionalOffset(
                                                    0.0, 0.0),
                                                end: const FractionalOffset(
                                                    1.0, 0.0),
                                                stops: [0.0, 1.0],
                                                tileMode: TileMode.clamp),
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            color: kwhite,
                                            size: 25.0,
                                          ))),
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
            ),
            SizedBox(
              height: heightApp * 0.01,
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 32,
                      width: 70,
                      padding: EdgeInsets.only(left: 10,right: 10),
                      decoration: BoxDecoration(
                          color: kwhite,
                          borderRadius: BorderRadius.circular(20),
                          
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
                          ),
                         child: Center(child: Text("الكل",style: TextStyle(color: kblue),)),
                    )),
              ),
            ), SizedBox(
              height: heightApp * 0.01,
            ),SizedBox(
              height: 200,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 12,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: (1 / 0.7),
                ),
                itemBuilder: (
                  context,
                  index,
                ) {
                  return GestureDetector(
                    onTap: () {
                       
                        Get.toNamed(Routes.DETIALS_SHOP);
               
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
                                offset:
                                    Offset(0, 0), // changes position of shadow
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
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      size: 25,
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'طوق',
                                        style: TextStyle(
                                            color: kblack,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '12 ر.س',
                                        style: TextStyle(
                                            color: kblack,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                      height: 37,
                                      width: 37,
                                      child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            gradient: LinearGradient(
                                                colors: [
                                                  const Color(0xFF628B8C),
                                                  const Color(0xFF9ED0D2),
                                                ],
                                                begin: const FractionalOffset(
                                                    0.0, 0.0),
                                                end: const FractionalOffset(
                                                    1.0, 0.0),
                                                stops: [0.0, 1.0],
                                                tileMode: TileMode.clamp),
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            color: kwhite,
                                            size: 25.0,
                                          ))),
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
            ),
          ],
        ),
      ),
    ));
  }
}
