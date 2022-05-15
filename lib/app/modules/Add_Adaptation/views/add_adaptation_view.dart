import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:qclinic/Shared/color/colors.dart';
import 'package:qclinic/Shared/widget/box_Text_Field.dart';
import 'package:qclinic/Shared/widget/constants.dart';
import 'package:qclinic/Shared/widget/main_button.dart';
import 'package:qclinic/app/routes/app_pages.dart';

import '../controllers/add_adaptation_controller.dart';

class AddAdaptationView extends GetView<AddAdaptationController> {
  List<String> valueList = ['A', 'B', 'C', 'D'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         automaticallyImplyLeading: false,
        shadowColor: Colors.transparent,
        backgroundColor: kwhite,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "إضافة حيوان للتبني ",
              style: TextStyle(
                  color: kblack, fontSize: 18, fontWeight: FontWeight.bold),
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
                      Icons.arrow_forward_ios_rounded,
                      color: kwhite,
                      size: 25.0,
                    ))),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BoxTextField(text: "إسم حيوانك للتبني"),
              Text(
                "نوع حيوانك الأليف",
                style: TextStyle(
                    color: kblack, fontSize: 12, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 60.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color(0xffF2F2F2)),
                child: DropdownButtonFormField(
                  isDense: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (val) {
                    // return controller.validateZone(val.toString());
                  },
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kbordergrey, width: 2),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    //
                  ),
                  items: valueList.map((value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                      onTap: () {},
                    );
                  }).toList(),
                  // value: controller.selectedVendor2,
                  onChanged: (newValue) {},
                  hint: Text(
                    "اختار نوع حيوانك الأليف",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  isExpanded: true,
                ),
              ),
              SizedBox(
                height: heightApp * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Row(
                            children: [
                              Text(
                                "عمر حيوانك الأليف",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: kblack,
                                    fontSize: 12),
                              ), SizedBox(
                    width: widthApp * 0.01,
                  ), 
                              Text(
                                "(بالأشهر)",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        TextField(
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(15.0),
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
                      ],
                    ),
                  ),
                  SizedBox(
                    width: widthApp * 0.02,
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Text(
                            "وزن حيوانك الأليف",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kblack,
                                fontSize: 12),
                          ),
                        ),
                        TextField(
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(15.0),
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
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: heightApp * 0.02,
              ),
              Row(
                children: [
                  Text(
                    "الجنس",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: kblack,
                        fontSize: 12),
                  ),
                  Obx(() => Radio(
                      activeColor: kblue,
                      value: "ذكر",
                      groupValue: controller.selectedGender.value,
                      onChanged: (value) {
                        controller.onChangeGender(value);
                      })),
                  Text(
                    "ذكر",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: kblack,
                        fontSize: 12),
                  ),
                  SizedBox(
                    width: widthApp * 0.03,
                  ),
                  Obx(() => Radio(
                      activeColor: kblue,
                      value: "أنثى",
                      groupValue: controller.selectedGender.value,
                      onChanged: (value) {
                        controller.onChangeGender(value);
                      })),
                  Text(
                    "أنثى",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: kblack,
                        fontSize: 12),
                  ),
                ],
              ),
              SizedBox(
                height: heightApp * 0.02,
              ),
              Text(
                "معلومة مختصر",
                style: TextStyle(
                    color: kblack, fontSize: 12, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: heightApp * 0.01,
              ),
              TextField(
                  maxLines: 3,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(5.0),
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
                      hintStyle: TextStyle(color: Color(0xffBDBDBD))),
                  textAlign: TextAlign.start,
                  onChanged: (string) {}),
              SizedBox(
                height: heightApp * 0.01,
              ),
              Container(
                height: 160,
                width: 374,
                decoration: BoxDecoration(
                    color: kgrey, borderRadius: BorderRadius.circular(20)),
                child: GestureDetector(
                  onTap: () {},
                  child: DottedBorder(
                    strokeWidth: 3,
                    dashPattern: [9, 9],
                    color: kbordergrey.withOpacity(.3),
                    borderType: BorderType.RRect,
                    radius: Radius.circular(20),
                    padding: EdgeInsets.all(5),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 5 * 2,
                        right: 5 * 2,
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Center(
                                child: Image.asset(
                                    "assets/images/upload-cloud.png")),
                            Text(
                              "الرجاء إضافة 4 صور ",
                              style: TextStyle(
                                  color: Color(0xffBDBDBD),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: heightApp * 0.01,
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
                        padding: const EdgeInsets.only(left: 2, right: 2),
                        child: Container(
                          height: 75,
                          width: 76,
                          // padding: EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                            color: kgrey,
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
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: heightApp * 0.01,
              ),
              Text(
                "بيانات السكن ",
                style: TextStyle(
                    color: kblack, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: heightApp * 0.01,
              ),
              Row(
                children: [
                  Expanded(child: BoxTextField(text: "تفاصيل السكن")),      SizedBox(
                width: widthApp * 0.01,
              ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.GET_LOCATION);
                    },
                    child: SizedBox(
                      width: 110,
                      height: 55,
                      child: Container(
                        decoration: BoxDecoration( 
                          borderRadius: BorderRadius.circular(20),
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
                        child: Stack(
                          children: [
                            Center(child: Image.asset("assets/images/map.png")),
                            Center(
                              child: Text(
                                "الخريطة",
                                style: TextStyle(
                                    color: kblack,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ), SizedBox(
                height: heightApp * 0.04,
              ),

              MainButton(text: "حجز كشفية", press: (){}),SizedBox(
                height: heightApp * 0.04,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
