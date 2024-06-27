import 'package:app_caffe_shop/src/core/routing/routeromer.dart';
import 'package:app_caffe_shop/src/feature/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:app_caffe_shop/src/feature/home/detail/caffe_detail_view.dart';
import 'package:app_caffe_shop/src/feature/home/detail/order_detail_view.dart';
import 'package:app_caffe_shop/src/feature/home/model/caffe_model.dart';
import 'package:app_caffe_shop/src/feature/home/view/home_view.dart';
import 'package:app_caffe_shop/src/feature/splash_screen/on_boarding_view.dart';
import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        ...routesomer,
      ];
}
