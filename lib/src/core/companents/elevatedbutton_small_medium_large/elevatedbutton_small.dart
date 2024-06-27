import 'package:app_caffe_shop/src/core/constants/app_color.dart';
import 'package:app_caffe_shop/src/core/constants/app_keys.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ElevatedButtonCompanent extends StatefulWidget {
  @override
  State<ElevatedButtonCompanent> createState() =>
      _ElevatedButtonCompanentState();
}

bool _isPressed = true;

class _ElevatedButtonCompanentState extends State<ElevatedButtonCompanent> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 96.w,
        height: 41.h,
        child: ElevatedButton(
          style: _isPressed
              ? ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.r),
                      side: BorderSide(color: AppColor.gallery)),
                  backgroundColor: AppColor.white)
              : ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.r),
                      side: BorderSide(color: AppColor.tussock)),
                  backgroundColor: AppColor.fantasy),
          onPressed: () {
            setState(() {
              _isPressed = !_isPressed;
            });
          },
          child: AutoSizeText(
            Constants.keys.s,
            style: GoogleFonts.sora(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: _isPressed ? AppColor.mineShaft : AppColor.tussock,
            ),
          ),
        ));
  }
}
