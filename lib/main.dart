import 'package:app_caffe_shop/src/core/constants/app_constants.dart';
import 'package:app_caffe_shop/src/core/constants/is_mobile.dart';
import 'package:app_caffe_shop/src/core/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(Zone());
}

class Zone extends StatelessWidget {
  Zone({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: IsItPhone.getDeviceType()
          ? const Size(375, 812)
          : const Size(768, 1024),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          theme: ThemeData(
            appBarTheme:
                AppBarTheme(systemOverlayStyle: SystemUiOverlayStyle.light),
            useMaterial3: true,
          ),
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
          debugShowCheckedModeBanner: false,
          title: AppConstants.title,
        );
      },
    );
  }
}
