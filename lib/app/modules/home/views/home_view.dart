import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qclinic/Shared/color/colors.dart';
import 'package:qclinic/Shared/style/Text_style.dart';
import 'package:qclinic/Shared/widget/constants.dart';
import 'package:qclinic/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
   automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
        title:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "محمد عبد الكريم",
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
                  color: kblack, fontSize: 13, fontWeight: FontWeight.bold),
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
                      offset: Offset(0, 0), // changes position of shadow
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
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return SizedBox(
                            width: 60,
                            child: Image.asset("assets/images/cat.png"));
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
                  color: kblue, borderRadius: BorderRadius.circular(20)),
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
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            onPressed: () {},
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
            GridView.builder(
              padding: const EdgeInsets.only(top: 22),
                physics: const ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 6,
                 mainAxisSpacing: 6,
                  childAspectRatio: 2.0 / 2,
                ),
                itemCount: 8,
                itemBuilder: (
                  context,
                  index,
                ) {
                  return GestureDetector(onTap: () {
                      Get.toNamed(Routes.SHOP);
                  },
                    child: Stack(
                      children: [
                        Container(
                          height: 180,
                          width: 180,
                          decoration: BoxDecoration(
                            
                            color: kblue,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 22),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                      height: 90,
                                      width: 84,
                                      child:
                                          Image.asset("assets/images/home.png"))),
                            ),
                            SizedBox(
                              height: heightApp * 0.02,
                            ),
                            Text(
                              "التسوق",
                              style: TextStyle(
                                  color: kwhite,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                }), SizedBox(
                              height: heightApp * 0.10,
                            ),
          ],
        ),
      ),
    ));
  }
}
