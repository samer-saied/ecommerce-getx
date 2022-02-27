import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodshop/util/app_colors.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';

class CarsoulBannerWidget extends StatelessWidget {
  const CarsoulBannerWidget({
    Key? key,
    required this.imageList,
  }) : super(key: key);

  final List<String> imageList;

  @override
  Widget build(BuildContext context) {
    return GFCarousel(
      height: 450.h >= 270 ? 250 : 500.h, // L 280 // P 200
      reverse: true,
      items: imageList.map(
        (url) {
          return Container(
            clipBehavior: Clip.antiAlias,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                image: NetworkImage(url),
                fit: BoxFit.cover,
              ),
            ),
            margin: const EdgeInsets.all(4.0),
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: AppColors.blackColor.withOpacity(.30),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Special Offer',
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(color: AppColors.whiteColor),
                        ),
                        Text(
                          'Almost before we knew it, we had left the ground.',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(
                                  color: AppColors.whiteColor,
                                  fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          height: 8.w,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ).toList(),
      activeIndicator: Theme.of(context).primaryColor,
      scrollPhysics: const BouncingScrollPhysics(),
      passiveIndicator: Colors.white,
      pagination: true,
      aspectRatio: 16 / 10,
      pagerSize: 8,
      autoPlay: true,
      pauseAutoPlayOnTouch: const Duration(seconds: 10),
      viewportFraction: 0.92,
      onPageChanged: (index) {
        // setState(() {
        //   index;
        // });
      },
    );
  }
}
