import 'package:flutter/widgets.dart';

class IsItPhone {
  IsItPhone._();

  static bool getDeviceType() {
    final data = MediaQueryData.fromView(WidgetsBinding.instance.window);
    return data.size.shortestSide < 600 ? true : false;
  }
}
