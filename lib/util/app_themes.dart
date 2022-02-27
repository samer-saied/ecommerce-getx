import 'package:flutter/material.dart';
import 'package:foodshop/util/app_colors.dart';
import 'package:foodshop/util/convert_color.dart';

class AppThemes {
  static ThemeData lightThemes = ThemeData(
      primarySwatch:
          ConvertColor.generateMaterialColorFromColor(AppColors.mainColor),
      textTheme: TextTheme(
          headline2: TextStyle(
            fontSize: 26,
            color: AppColors.blackColor,
            fontWeight: FontWeight.bold,
            fontFamily: 'Arimo',
          ),
          headline3: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: AppColors.blackColor,
            fontFamily: 'Arimo',
          ),
          headline4: TextStyle(
            fontSize: 20,
            // fontWeight: FontWeight.w800,
            color: AppColors.blackColor,
            fontFamily: 'Arimo',
          ),
          headline5: TextStyle(
            fontSize: 18,
            color: AppColors.blackColor,
            fontFamily: 'Arimo',
            // fontWeight: FontWeight.bold,
          ),
          headline6: TextStyle(
            fontSize: 15,
            color: AppColors.blackColor,
            fontFamily: 'Arimo',
          )

          ///
          ));
}
