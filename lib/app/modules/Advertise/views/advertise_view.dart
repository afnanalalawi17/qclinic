import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qclinic/Shared/color/colors.dart';
import 'package:qclinic/Shared/widget/constants.dart';
import 'package:qclinic/Shared/widget/main_button.dart';

import '../controllers/advertise_controller.dart';

class AdvertiseView extends GetView<AdvertiseController> {
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
                "طلب إستشارة ",
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
        body: GetBuilder<AdvertiseController>(
            init: AdvertiseController(),
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
                          return GestureDetector(
                            onTap: () {
                                 controller.onSelectCat(index);
                            },
                            child:  controller.selectedCatIndex != index
                                        ? Container(
                                            width: 60,
                                            child: Image.asset(
                                                "assets/images/cat.png"))
                                        : Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SizedBox.fromSize(
                                              size: Size.fromRadius(
                                                  50), // Image radius
                                              child: Image.asset(
                                                  "assets/images/cat.png",
                                                  fit: BoxFit.fill),
                                            ),
                                        )
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: heightApp * 0.02,
                ),
                Text(
                  "نوع  الاستشارة",
                  style: TextStyle(
                      color: kblack, fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: heightApp * 0.01,
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
                      "اختار نوع  الاستشارة",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    isExpanded: true,
                  ),
                ),
                SizedBox(
                  height: heightApp * 0.04,
                ),
                MainButton(text: "طلب إستشارة", press: () { Navigator.of(context).pop();})
              ],
            ),
          ),
        );
        
            }));
  }
}
