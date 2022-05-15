import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qclinic/Shared/color/colors.dart';
import 'package:qclinic/app/modules/Chat/views/chat_view.dart';
import 'package:qclinic/app/modules/Favorite/views/favorite_view.dart';
import 'package:qclinic/app/modules/Notification/views/notification_view.dart';
import 'package:qclinic/app/modules/Setting/views/setting_view.dart';
import 'package:qclinic/app/modules/home/views/home_view.dart';

import '../controllers/basic_controller.dart';

class BasicView extends GetView<BasicController> {

  

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BasicController>(builder: (controller) {
      return Scaffold(
        extendBody: true,
        backgroundColor: kwhite,
        body: IndexedStack(
          index: controller.tabIndex,
          children: [
                HomeView(), 
            ChatView(),
            NotificationView(),
            FavoriteView(),
                       SettingView(), 

          ],
        ),
        bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: kwhite,
            color: kblue,
            buttonBackgroundColor: kblue,
            items: <Widget>[
              Icon(
                Icons.home,
                size: 30,
                color: kwhite,
              ),
              Icon(
                Icons.chat,
                size: 30,
                color: kwhite,
              ),
              Icon(
                Icons.notifications,
                size: 30,
                color: kwhite,
              ),
              Icon(
                Icons.favorite_border,
                size: 30,
                color: kwhite,
              ),
              Icon(
                Icons.settings,
                size: 30,
                color: kwhite,
              ),
            ],
            onTap: controller.changeTabIndex),
      );
    });
  }
}
