import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:foodshop/util/app_colors.dart';

Widget getMainTitle(List<String> mainTitles) {
  return SizedBox(
    width: 250.0,
    child: DefaultTextStyle(
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: AppColors.mainColor,
      ),
      child: AnimatedTextKit(
        repeatForever: true,
        animatedTexts: [
          FlickerAnimatedText('Flicker Frenzy'),
          FlickerAnimatedText('Night Vibes On'),
          FlickerAnimatedText("C'est La Vie !"),
        ],
        onTap: () {
          print("Tap Event");
        },
      ),
    ),
  );
}




 
        //  [
          
        //   FadeAnimatedText('do it RIGHT!!'),
        //   FadeAnimatedText('do it RIGHT NOW!!!'),
        // ],