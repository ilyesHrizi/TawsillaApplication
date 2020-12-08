import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tawsila_app/Views/HomePageView.dart';
import 'package:tawsila_app/Views/RegisterView.dart';

import 'Views/MainGetStarted.dart';
import 'Views/LoginView.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    //This is my main routing
    initialRoute: '/MainGetStarted',
    defaultTransition: Transition.zoom,
  //  translations: Mylanguage(),
    locale: Get.deviceLocale,
      fallbackLocale: Locale('fr'),
    getPages: [GetPage(name: '/MainGetStarted', page: () => MainGetStarted()),
      GetPage(name :'/LoginView', page: () => LoginView()),
      GetPage(name :'/RegisterView', page: () => RegisterView()),
      GetPage(name :'/HomePageView', page: () => HomePageView()),
  ],
  ));
}
