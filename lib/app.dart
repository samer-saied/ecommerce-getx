import 'package:flutter/material.dart';
import 'package:foodshop/logic/controller/main_app_controller.dart';
import 'package:foodshop/util/app_colors.dart';
import 'package:foodshop/view/widgets/bottom_navigation_bar.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //   final controller = Get.put(MainAppController());
    final mainAppController = Get.find<MainAppController>();

    return GetBuilder<MainAppController>(
      builder: (controller) => Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(0),
              child: AppBar(
                backgroundColor: AppColors.mainColor,
                elevation: 0,
              )),
          body: controller.getNavigationScreen(),
          bottomNavigationBar:
              getBottomNavigationBar(context, mainAppController)),
    );
  }
}
