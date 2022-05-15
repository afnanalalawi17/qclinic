import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qclinic/app/data/Model/on_boarding_model.dart';
import 'package:qclinic/app/routes/app_pages.dart';

class BoardingController extends GetxController {
  //TODO: Implement BoardingController
var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value ==  screens.length - 1;
  var pageController = PageController();

  forwardAction() {
    if (isLastPage) {
  Get.toNamed(Routes.SIGNUP);
    } else
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.easeIn);
  }
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
  }
  
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


}
