import 'package:app_caffe_shop/src/core/constants/app_images.dart';
import 'package:app_caffe_shop/src/feature/bag/bag_view.dart';
import 'package:app_caffe_shop/src/feature/heart/heart_view.dart';
import 'package:app_caffe_shop/src/feature/home/view/home_view.dart';
import 'package:app_caffe_shop/src/feature/notification/natification_view.dart';
import 'package:auto_route/annotations.dart';

import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

@RoutePage()
class BottomNavBarView extends StatefulWidget {
  const BottomNavBarView({super.key});

  @override
  State<BottomNavBarView> createState() => _BottomNavBarViewState();
}

class _BottomNavBarViewState extends State<BottomNavBarView> {
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      tabs: [
        PersistentTabConfig(
          screen: HomeView(),
          item: ItemConfig(
            icon: Image.asset(AppImages.iconHome),
          ),
        ),
        PersistentTabConfig(
          screen: BagView(),
          item: ItemConfig(
            icon: Image.asset(AppImages.iconHeart),
          ),
        ),
        PersistentTabConfig(
          screen: HeartView(),
          item: ItemConfig(
            icon: Image.asset(AppImages.iconBag),
          ),
        ),
        PersistentTabConfig(
          screen: natificationView(),
          item: ItemConfig(
            icon: Image.asset(AppImages.iconNatification),
          ),
        ),
      ],
      navBarBuilder: (navBarConfig) => Style10BottomNavBar(
        navBarConfig: navBarConfig,
      ),
    );
  }
}
