import 'package:app_caffe_shop/src/core/routing/router.dart';
import 'package:auto_route/auto_route.dart';

List<AutoRoute> get routesomer => [
      /* CustomRoute(
          page: QuestionsRoute.page,
          transitionsBuilder: TransitionsBuilders.slideBottom), */

      CustomRoute(
        page: SplashScreenRoute.page,
        initial: true,
        path: '/Splash',
      ),
      CustomRoute(
          page: BottomNavBarRoute.page,
          path: '/BottomNavBar',
          transitionsBuilder: TransitionsBuilders.slideBottom),
      CustomRoute(
          page: OrderDetailRoute.page,
          path: '/OrderDetail',
          transitionsBuilder: TransitionsBuilders.slideBottom),
      CustomRoute(
          page: CaffeDetailRoute.page,
          path: '/CaffeDetail',
          transitionsBuilder: TransitionsBuilders.slideBottom),
    ];
