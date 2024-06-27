import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppConstants {
  AppConstants._();
  static const String typography = 'Sora';
  static const double emptyBox20 = 20;
  static const String title = 'CaffeShop';
  static String baseUrl = '';
  static EdgeInsets paddingPhone = EdgeInsets.symmetric(horizontal: 20.w);
  static BoxShadow shadow = BoxShadow(
    color: Color(0xFF050505).withOpacity(0.5),
    spreadRadius: 1,
    blurRadius: 1,
    offset: const Offset(0, 0), // changes position of shadow
  );
}
