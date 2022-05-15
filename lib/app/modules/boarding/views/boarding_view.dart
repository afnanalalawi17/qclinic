import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qclinic/Shared/color/colors.dart';
import 'package:qclinic/Shared/style/Text_style.dart';
import 'package:qclinic/Shared/widget/constants.dart';
import 'package:qclinic/Shared/widget/main_button.dart';
import 'package:qclinic/app/data/Model/on_boarding_model.dart';
import 'package:qclinic/app/routes/app_pages.dart';
import '../controllers/boarding_controller.dart';

class BoardingView extends GetView<BoardingController> {
  final controller = Get.put(BoardingController());
  final _controller = BoardingController();

  List<OnBoardingModel> screens = <OnBoardingModel>[
    OnBoardingModel(
      img: 'assets/images/boarding1.png',
      text: "مركز رعاية الحيوانات الأليفة الخاص بك ",

    ),
    OnBoardingModel(
      img: 'assets/images/boarding2.png',
      text: "حيوانك الأليف هو جزء من عائلتنا",
 
    ),
    OnBoardingModel(
      img: 'assets/images/boarding3.png',
      text: "إشتري لحيوانك الأليف كل ما يحتاجه",
   
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9ED0D2),
      body: Stack(
        children: [
          PageView.builder(
              controller: _controller.pageController,
              onPageChanged: _controller.selectedPageIndex,
              itemCount: _controller.screens.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          screens[index].img,
                        ),
                        SizedBox(
                          height: heightApp * 0.05,
                        ),
                        Text(screens[index].text,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: kwhite,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),

                      
                      ],
                    ),
                  ),
                );
              }),
          Align(
            alignment: Alignment.bottomCenter,
            child: Stack(
              children: [
                Container(
                  child: Image.asset("assets/images/Rectangle 2.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      _controller.screens.length,
                      (index) => Obx(() {
                        return Container(
                          margin: const EdgeInsets.all(4),
                          width: _controller.selectedPageIndex.value == index
                              ? 13
                              : 10,
                          height: _controller.selectedPageIndex.value == index
                              ? 13
                              : 10,
                          decoration: BoxDecoration(
                            color: _controller.selectedPageIndex.value == index
                                ? kblue
                                : kblack,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 140, left: 20, right: 20),
                  child: SizedBox(
                    height: heightApp * 0.055,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: kblue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      onPressed: () {
                       Get.toNamed(Routes.SIGNUP);
                      },
                      child: Center(
                        child: Text(
                          "إبداء الان",
                          style: kWhite_text,
                        ),
                      ),
                    ),
                  ),
                ),
               
              ],
            ),
          )
        ],
      ),
    );
  }
}
