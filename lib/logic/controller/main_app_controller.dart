import 'package:flutter/material.dart';
import 'package:foodshop/view/screens/cart/cart_page_screen.dart';
import 'package:foodshop/view/screens/home/home_page_screen.dart';
import 'package:foodshop/view/screens/offers/offers_page_screen.dart';
import 'package:foodshop/view/screens/profile/profile_page_screen.dart';
import 'package:foodshop/view/screens/search/search_page_screen.dart';
import 'package:foodshop/view/widgets/not_found_page_screen.dart';
import 'package:get/get.dart';

class MainAppController extends GetxController {
  final List<String> imageList = [
    "https://images.unsplash.com/photo-1533777857889-4be7c70b33f7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    "https://images.unsplash.com/photo-1506354666786-959d6d497f1a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    "https://images.unsplash.com/photo-1530554764233-e79e16c91d08?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
    "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
  ];

  ///
  ///
  ////     Variables     ////
  int selectedScreen = 0;

  ///
  ///
  ////     Funcation     ////
  changeNavigationBar(cahngeValue) {
    selectedScreen = cahngeValue;
    update();
  }

  Widget getNavigationScreen() {
    switch (selectedScreen) {
      case 0:
        return HomePageScreen(imageList: imageList);
      case 1:
        return searchPageScreen();
      case 2:
        return CartPageScreen();
      case 5:
        return OffersPageScreen();
      case 4:
        return ProfilePageScreen();

      default:
        return NotFoundPageScreen();
    }
  }
}
