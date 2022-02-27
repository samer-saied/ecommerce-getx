import 'package:flutter/material.dart';
import 'package:foodshop/view/screens/cart/widgets/custom_listtitle_cart_widget.dart';

class CustomListCartWidget extends StatelessWidget {
  const CustomListCartWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: 2,
      itemBuilder: (context, index) {
        return CustomListTitleCart();
      },
    );
  }
}
