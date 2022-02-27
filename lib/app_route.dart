import 'package:flutter/material.dart';
import 'package:foodshop/logic/binding/main_app_binding.dart';
import 'package:foodshop/app.dart';
import 'package:get/get.dart';

class AppRoute {
  static final String homePage = '/';

  static final pages = [
    GetPage(
      name: homePage,
      page: () => HomeScreen(),
      bindings: [MainAppBininding()],
    ),
    GetPage(
      name: '/Home',
      page: () => const Scaffold(),
    ),
  ];
}
