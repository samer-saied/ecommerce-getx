import 'package:flutter/material.dart';

import 'custom_listtitle_product_widget.dart';

class CustomListProductWidget extends StatelessWidget {
  const CustomListProductWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mqSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          return customListTitleProduct(context);
        },
      ),
    );
  }
}
