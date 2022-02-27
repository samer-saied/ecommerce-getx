import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';

class CustomSmallIconButton extends StatelessWidget {
  final double btnFontSize;
  final Color btnColor;
  final Color btnTxtColor;
  final IconData btnIcon;
  final BuildContext context;
  final void Function()? btnOnTap;

  const CustomSmallIconButton({
    Key? key,
    required this.btnTxtColor,
    required this.btnColor,
    required this.btnFontSize,
    this.btnOnTap,
    required this.context,
    required this.btnIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: btnOnTap,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: btnColor),
        padding: EdgeInsets.all(3),
        child: Icon(
          btnIcon,
          color: btnTxtColor,
          size: context.isLandscape ? btnFontSize + 4 : btnFontSize,
        ),
      ),
    );
  }
}
