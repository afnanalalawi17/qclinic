import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qclinic/Shared/color/colors.dart';
import 'package:qclinic/Shared/widget/constants.dart';

import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
 Text(
              "الاشعارات",
              style: TextStyle(
                  color: kblack, fontSize: 18, fontWeight: FontWeight.bold),
            ), Text(
              "",
              style: TextStyle(
                  color: kblack, fontSize: 18, fontWeight: FontWeight.bold),
            ),
              ],
            ),
      ),
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
            Container(
                width: double.infinity,
                height: 60,
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
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      " لديك حجز بعد ساعتين الرجاء تأكيد الحجز والا سوف تفقد موعدك",textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 10, fontWeight: FontWeight.normal),
                    ),
                  ),
                )),
            SizedBox(
              height: heightApp * 0.02,
            ),
            Container(
                width: double.infinity,
                height: 60,
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
                child: Align(
                      alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      "تبنى قطة واحصل على خصم 20% لكل الخدمات",
                      style: TextStyle(
                          fontSize: 10, fontWeight: FontWeight.normal),
                    ),
                  ),
                )),
          ],
        ),
      ),
    ));
  }
}
