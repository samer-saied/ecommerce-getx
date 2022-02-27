import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodshop/app_route.dart';
import 'package:foodshop/logic/binding/main_app_binding.dart';
import 'package:foodshop/util/app_colors.dart';
import 'package:foodshop/app.dart';
import 'package:foodshop/util/app_themes.dart';
import 'package:foodshop/util/convert_color.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: () => GetMaterialApp(
        title: 'Food Shop',
        debugShowCheckedModeBanner: false,
        theme: AppThemes.lightThemes,
        home: HomeScreen(),
        getPages: AppRoute.pages,
        initialRoute: AppRoute.homePage,
        initialBinding: MainAppBininding(),
      ),
    );
  }
}
