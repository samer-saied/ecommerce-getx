import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodshop/util/app_colors.dart';

class FeaturedProductWidget extends StatefulWidget {
  const FeaturedProductWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<FeaturedProductWidget> createState() => _FeaturedProductWidgetState();
}

class _FeaturedProductWidgetState extends State<FeaturedProductWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> move;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    move = Tween<double>(begin: -200, end: 0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.bounceInOut))
      ..addListener(() {
        setState(() {});
      });
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;
    return Column(
      children: [
        LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SizedBox(
              height: mediaQuerySize.width > mediaQuerySize.height
                  ? mediaQuerySize.height * 0.75
                  : 240,
              width: mediaQuerySize.width,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Transform.translate(
                        offset: Offset(move.value, 0),
                        child: SizedBox(
                          width: constraints.maxWidth / 2.7,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Let's Try One ".toUpperCase(),
                                    textAlign: TextAlign.left,
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                  Text(
                                    'of these Featured Products'.toUpperCase(),
                                    textAlign: TextAlign.left,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4
                                        ?.copyWith(
                                            textBaseline:
                                                TextBaseline.alphabetic,
                                            fontWeight: FontWeight.bold,
                                            height: 1.25),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }
                    return CustomefeaturedCardWidget(constraints, context);
                  }),
            );
          },
        ),
      ],
    );
  }

//////
  ///
  ///
  ///           Featured Custome Widget       ///////////
  Widget CustomefeaturedCardWidget(
      BoxConstraints constraints, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 5, bottom: 10),
      child: Container(
        width: constraints.maxWidth / 2.2,
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                bottom: 0,
                left: 0,
                right: 0,
                child: Image(
                  image: const NetworkImage(
                    "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=481&q=80",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 0,
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: constraints.maxWidth / 2.2,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.90),
                    ],
                  )),
                ),
              ),
              SizedBox(
                width: constraints.maxWidth / 2.2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'Cheese Burger',
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline4?.copyWith(
                              color: AppColors.whiteColor,
                            ),
                      ),
                      Divider(
                        height: 1,
                        color: AppColors.whiteColor,
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Text(
                        "Double Cheese burger features two 100% pure beef burger patties seasoned with just a pinch of salt and pepper. It's topped with tangy pickles, chopped onions, ketchup, mustard and two slices of melty American cheese. There are 450 calories in a McDonald's Double Cheeseburger",
                        maxLines: 3,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              color: AppColors.whiteColor,
                            ),
                      ),
                      const SizedBox(
                        height: 5,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
