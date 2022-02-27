import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodshop/util/app_colors.dart';
import 'package:foodshop/view/screens/profile/widgets/custom_image.dart';
import 'package:foodshop/view/screens/profile/widgets/setting_box_widget.dart';
import 'package:foodshop/view/screens/profile/widgets/setting_item.dart';

class ProfilePageScreen extends StatelessWidget {
  const ProfilePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverAppBar(
            backgroundColor: AppColors.mainColor,
            pinned: true,
            snap: true,
            floating: true,
            title: getHeader()),
        SliverToBoxAdapter(child: getBody())
      ],
    );
  }

  Widget getHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Account",
          style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 24,
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 15, right: 15),
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          ///
          ///
          ///      pic + name
          Column(
            children: const [
              SizedBox(
                height: 10,
              ),
              CustomImage(
                'https://images.unsplash.com/photo-1645906321292-07a671e6deb6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1331&q=80',
                width: 70,
                height: 70,
                radius: 15,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Samer Saied',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),

          ///
          ///
          ///      3 details cards
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: SettingBox(
                title: "12 courses",
                icon: "assets/icons/work.svg",
              )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: SettingBox(
                title: "55 hours",
                icon: "assets/icons/time.svg",
              )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: SettingBox(
                title: "4.8",
                icon: "assets/icons/star.svg",
              )),
            ],
          ),
          const SizedBox(
            height: 20,
          ),

          ///
          ///
          ///      setting - payments- bookmarks
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppColors.whiteColor,
              boxShadow: [
                BoxShadow(
                  color: AppColors.mainColor.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: const Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: Column(children: [
              SettingItem(
                title: "Setting",
                leadingIcon: CupertinoIcons.settings,
                bgIconColor: AppColors.mainColor,
                leadingIconColor: AppColors.whiteColor,
                onTap: () {},
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Divider(
                  height: 0,
                  color: Colors.grey.withOpacity(0.8),
                ),
              ),
              SettingItem(
                title: "Payment",
                leadingIcon: CupertinoIcons.money_dollar,
                bgIconColor: AppColors.main2Color,
                onTap: () {},
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Divider(
                  height: 0,
                  color: Colors.grey.withOpacity(0.8),
                ),
              ),
              SettingItem(
                title: "Bookmark",
                leadingIcon: CupertinoIcons.book,
                bgIconColor: AppColors.main1Color,
                leadingIconColor: AppColors.whiteColor,
                onTap: () {},
              ),
            ]),
          ),
          const SizedBox(
            height: 20,
          ),

          ///
          ///
          ///      notifications - privacy
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppColors.whiteColor,
              boxShadow: [
                BoxShadow(
                  color: AppColors.blackColor.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: Column(children: [
              SettingItem(
                title: "Notification",
                leadingIcon: CupertinoIcons.bell,
                bgIconColor: AppColors.mainColor,
                onTap: () {},
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Divider(
                  height: 0,
                  color: Colors.grey.withOpacity(0.8),
                ),
              ),
              SettingItem(
                title: "Privacy",
                leadingIcon: CupertinoIcons.perspective,
                bgIconColor: AppColors.mainColor,
                onTap: () {},
              ),
            ]),
          ),
          const SizedBox(
            height: 20,
          ),

          ///
          ///
          ///      logout
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppColors.whiteColor,
              boxShadow: [
                BoxShadow(
                  color: AppColors.mainColor.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: const Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: Column(children: [
              SettingItem(
                title: "Log Out",
                leadingIcon: CupertinoIcons.eject,
                bgIconColor: Colors.red,
                onTap: () {},
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
