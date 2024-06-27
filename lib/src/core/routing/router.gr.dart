// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    BottomNavBarRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BottomNavBarView(),
      );
    },
    CaffeDetailRoute.name: (routeData) {
      final args = routeData.argsAs<CaffeDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CaffeDetailView(caffeModel: args.caffeModel),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomeView(key: args.key),
      );
    },
    OrderDetailRoute.name: (routeData) {
      final args = routeData.argsAs<OrderDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OrderDetailView(caffeModel: args.caffeModel),
      );
    },
    SplashScreenRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreenView(),
      );
    },
  };
}

/// generated route for
/// [BottomNavBarView]
class BottomNavBarRoute extends PageRouteInfo<void> {
  const BottomNavBarRoute({List<PageRouteInfo>? children})
      : super(
          BottomNavBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavBarRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CaffeDetailView]
class CaffeDetailRoute extends PageRouteInfo<CaffeDetailRouteArgs> {
  CaffeDetailRoute({
    required CaffeModel caffeModel,
    List<PageRouteInfo>? children,
  }) : super(
          CaffeDetailRoute.name,
          args: CaffeDetailRouteArgs(caffeModel: caffeModel),
          initialChildren: children,
        );

  static const String name = 'CaffeDetailRoute';

  static const PageInfo<CaffeDetailRouteArgs> page =
      PageInfo<CaffeDetailRouteArgs>(name);
}

class CaffeDetailRouteArgs {
  const CaffeDetailRouteArgs({required this.caffeModel});

  final CaffeModel caffeModel;

  @override
  String toString() {
    return 'CaffeDetailRouteArgs{caffeModel: $caffeModel}';
  }
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<HomeRouteArgs> page = PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [OrderDetailView]
class OrderDetailRoute extends PageRouteInfo<OrderDetailRouteArgs> {
  OrderDetailRoute({
    required CaffeModel caffeModel,
    List<PageRouteInfo>? children,
  }) : super(
          OrderDetailRoute.name,
          args: OrderDetailRouteArgs(caffeModel: caffeModel),
          initialChildren: children,
        );

  static const String name = 'OrderDetailRoute';

  static const PageInfo<OrderDetailRouteArgs> page =
      PageInfo<OrderDetailRouteArgs>(name);
}

class OrderDetailRouteArgs {
  const OrderDetailRouteArgs({required this.caffeModel});

  final CaffeModel caffeModel;

  @override
  String toString() {
    return 'OrderDetailRouteArgs{caffeModel: $caffeModel}';
  }
}

/// generated route for
/// [SplashScreenView]
class SplashScreenRoute extends PageRouteInfo<void> {
  const SplashScreenRoute({List<PageRouteInfo>? children})
      : super(
          SplashScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreenRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
