import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodshop/util/app_colors.dart';
import 'package:foodshop/view/widgets/custom_small_icon_btn.dart';
import 'package:get/get.dart';

class CustomListTitleCart extends StatelessWidget {
  const CustomListTitleCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int quntity = 2;
    Size mQsize = MediaQuery.of(context).size;
    return Dismissible(
      key: UniqueKey(), //ValueKey<int>(1),
      direction: DismissDirection.endToStart,
      onDismissed: (DismissDirection direction) {
        // setState(() {
        //   items.removeAt(index);
      },
      background: Card(
        color: AppColors.redColor,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
        ),
        elevation: 1.5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            RotatedBox(
              quarterTurns: 45,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Delete",
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: AppColors.whiteColor,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 1.5,
        child: SizedBox(
          height: context.isPortrait ? 100 : 150,
          child: Row(
            children: [
              ///       Image+sale label      ///
              SizedBox(
                width: mQsize.width * 0.30,
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
                          image: const DecorationImage(
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
              const SizedBox(
                width: 10,
              ),

              ///       Title+price    ///
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
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
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '109.98' + ' \$',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Row(
                          children: [
                            CustomSmallIconButton(
                              context: context,
                              btnColor: AppColors.mainColor.withOpacity(0.70),
                              btnFontSize: 22,
                              btnIcon: CupertinoIcons.add,
                              btnTxtColor: AppColors.whiteColor,
                              btnOnTap: () => print(' plus '),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                quntity.toString(),
                                style: Theme.of(context).textTheme.headline5,
                              ),
                            ),
                            CustomSmallIconButton(
                              context: context,
                              btnColor: AppColors.mainColor.withOpacity(0.80),
                              btnTxtColor: AppColors.whiteColor,
                              btnFontSize: 22,
                              btnIcon: CupertinoIcons.minus,
                              btnOnTap: () => print(' - '),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Total ',
                                style: Theme.of(context).textTheme.headline5,
                              ),
                              TextSpan(
                                text: ': ',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(
                                      color: AppColors.mainColor,
                                    ),
                              ),
                              TextSpan(
                                text: '218.96',
                                style: Theme.of(context).textTheme.headline5,
                              ),
                            ],
                          ),
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
}
