import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodshop/logic/controller/main_app_controller.dart';
import 'package:foodshop/util/app_colors.dart';

///
///
///
////     Bottom Navigation Bar Funcaion    ////

Widget getBottomNavigationBar(
    BuildContext context, MainAppController controller) {
  return BottomNavigationBar(
    showSelectedLabels: true,
    showUnselectedLabels: true,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.search),
        label: 'Explore',
      ),
      BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.cart),
        label: 'Cart',
      ),
      BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.tag),
        label: 'Offer',
      ),
      BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.person),
        label: 'Profile',
      ),
    ],
    currentIndex: controller.selectedScreen,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Theme.of(context).colorScheme.primary,
    unselectedItemColor: AppColors.geryColor,
    unselectedLabelStyle: TextStyle(
      fontStyle: FontStyle.normal,
      color: AppColors.geryColor,
      //decorationColor: AppColors.geryColor,
    ),
    onTap: (value) {
      controller.changeNavigationBar(value);
    },
  );
}
