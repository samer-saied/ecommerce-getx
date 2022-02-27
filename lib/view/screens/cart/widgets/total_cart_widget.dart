import 'package:flutter/material.dart';
import 'package:foodshop/util/app_colors.dart';

class TotalCartWidget extends StatelessWidget {
  const TotalCartWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(8),
        ),
        height: 220,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal : ',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: AppColors.whiteColor,
                        ),
                  ),
                  Text(
                    '632.65 \$',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: AppColors.whiteColor,
                        ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery charge : ',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: AppColors.whiteColor,
                        ),
                  ),
                  Text(
                    '10.00 \$',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: AppColors.whiteColor,
                        ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tax fees : ',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: AppColors.whiteColor,
                        ),
                  ),
                  Text(
                    '20.00 \$',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: AppColors.whiteColor,
                        ),
                  ),
                ],
              ),
              Divider(
                color: AppColors.whiteColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total : ',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: AppColors.whiteColor,
                        ),
                  ),
                  Text(
                    '662.65 \$',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: AppColors.whiteColor,
                        ),
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.whiteColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: AppColors.whiteColor),
                      ),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        'Place my order',
                        style: TextStyle(
                          color: AppColors.mainColor,
                          fontSize: 18,
                        ),
                      ),
                    )),
              ),
              const SizedBox(
                height: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
