import 'package:flutter/material.dart';
import 'package:foodshop/view/screens/home/widgets/carsoul_widget.dart';
import 'package:foodshop/view/screens/home/widgets/custom_list_products_widget.dart';
import 'package:foodshop/view/screens/cart/widgets/custom_listtitle_cart_widget.dart';
import 'package:foodshop/view/screens/home/widgets/featured_widget.dart';
import 'package:foodshop/view/screens/home/widgets/trending_widget.dart';
import 'package:foodshop/view/widgets/custom_main_title.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({
    Key? key,
    required this.imageList,
  }) : super(key: key);

  final List<String> imageList;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(children: [
          //  getMainTitle(['Food Shop', 'all you need and more']),
          CarsoulBannerWidget(imageList: imageList),
          const TrendingProductWidget(),
          const FeaturedProductWidget(),
          const CustomListProductWidget()
        ]),
      ),
    );
  }
}
