import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:qclinic/Theme.dart';

import 'app/routes/app_pages.dart';

int? onBoarding;

void main() async {
  await GetStorage.init();
  onBoarding = GetStorage().read('onBoardin');
  runApp(GetMaterialApp(
    localizationsDelegates: const [
      GlobalCupertinoLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ],
    supportedLocales: const [
      Locale('ar'),
    ],
    title: "Application",
    initialRoute: onBoarding  == 0 ? Routes.BOARDING : AppPages.INITIAL,
    getPages: AppPages.routes,
    locale: Locale('ar'),
    fallbackLocale: Locale('ar'),
    theme: CustomTheme.lightTheme,
  ));
}
