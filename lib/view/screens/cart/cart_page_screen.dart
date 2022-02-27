import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodshop/util/app_colors.dart';
import 'package:foodshop/view/screens/cart/widgets/custom_list_cart_widget.dart';
import 'package:foodshop/view/screens/cart/widgets/total_cart_widget.dart';

class CartPageScreen extends StatelessWidget {
  const CartPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   centerTitle: true,
        //   title: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [
        //       Icon(
        //         CupertinoIcons.cart,
        //         size: 24,
        //         color: AppColors.whiteColor,
        //       ),
        //       const SizedBox(
        //         width: 5,
        //       ),
        //       Text(
        //         'Cart',
        //         style: Theme.of(context).textTheme.headline4!.copyWith(
        //               color: AppColors.whiteColor,
        //             ),
        //       ),
        //     ],
        //   ),
        // ),

        body: CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: true,
          fillOverscroll: true,
          child: Column(
            children: const <Widget>[
              Expanded(
                child: CustomListCartWidget(),
              ),
              TotalCartWidget()
            ],
          ),
        ),
        // SliverFixedExtentList(
        //   itemExtent: 220.0,
        //   delegate: SliverChildBuilderDelegate(
        //     (BuildContext context, int index) {
        //       return TotalCartWidget();
        //     },
        //     childCount: 1,
        //   ),
        // )
      ],
    ));
  }
}
