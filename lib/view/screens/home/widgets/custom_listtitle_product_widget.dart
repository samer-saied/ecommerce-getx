import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodshop/util/app_colors.dart';
import 'package:foodshop/view/widgets/custom_addtocart_btn.dart';
import 'package:foodshop/view/widgets/custom_small_icon_btn.dart';
import 'package:get/get.dart';

Widget customListTitleProduct(BuildContext context) {
  Size mQsize = MediaQuery.of(context).size;
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 1.5,
      child: SizedBox(
        height: context.isPortrait ? 120 : 200,
        child: Row(
          children: [
            ///       Image+sale label      ///
            SizedBox(
              width: mQsize.width * 0.30,
              ////// color: Colors.amber,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    left: 0,
                    child: Container(
                      height: context.isPortrait ? 23 : 35,
                      width: (mQsize.width * 0.30) / 2.2,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'assets/images/sale_tag.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: context.isPortrait ? 9 : 12,
                    left: (mQsize.width * .30 / 2.2) / 8,
                    child: Text(
                      "10",
                      style: context.isPortrait
                          ? Theme.of(context).textTheme.headline5!.copyWith(
                                color: AppColors.whiteColor,
                              )
                          : Theme.of(context).textTheme.headline3!.copyWith(
                                color: AppColors.whiteColor,
                              ),
                    ),
                  )
                ],
              ),
            ),

            ///       spacer      ///
            SizedBox(
              width: 10,
            ),

            ///       Title+description+price+like+addtocart      ///
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///       title      ///

                      Text(
                        'Chesse Burger',
                        style: Theme.of(context).textTheme.headline4,
                      ),

                      ///       like      ///

                      CustomSmallIconButton(
                        context: context,
                        btnColor: Colors.transparent,
                        btnTxtColor: AppColors.mainColor,
                        btnFontSize: 22,
                        btnIcon: CupertinoIcons.heart,
                        btnOnTap: () => print('like'),
                      ),
                    ],
                  ),
                  const Text(
                    "Double Cheese burger features two 100% pure beef burger patties seasoned with just a pinch of salt and pepper. It's topped with tangy pickles, chopped onions, ketchup, mustard and two slices of melty American cheese. There are 450 calories in a McDonald's Double Cheeseburger",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Text(
                            '99.98' + ' \$',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '110.98',
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(
                                    color: AppColors.geryColor,
                                    decorationStyle: TextDecorationStyle.solid,
                                    decorationColor: AppColors.geryColor,
                                    decoration: TextDecoration.lineThrough),
                          ),
                        ],
                      ),
                      CustomAddtoCartButton(
                        btnColor: AppColors.mainColor,
                        btnFontSize: 15,
                        btnOnTap: () {
                          print('hello');
                        },
                      )
                    ],
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    ),
  );
}
