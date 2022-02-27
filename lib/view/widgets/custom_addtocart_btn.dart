import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAddtoCartButton extends StatelessWidget {
  final double btnFontSize;
  final Color btnColor;
  final void Function()? btnOnTap;

  const CustomAddtoCartButton({
    Key? key,
    required this.btnColor,
    required this.btnFontSize,
    this.btnOnTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: btnOnTap,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
        padding: EdgeInsets.all(5),
        child: Row(
          children: [
            Icon(
              CupertinoIcons.shopping_cart,
              color: btnColor,
              size: btnFontSize + 3,
            ),
            SizedBox(
              width: 1.w,
            ),
            Text(
              "Add to Cart",
              style: TextStyle(
                fontSize: btnFontSize,
                color: btnColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
