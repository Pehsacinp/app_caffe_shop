import 'package:app_caffe_shop/src/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

final class PhoneTextStyle {
  //
  PhoneTextStyle._();

  static TextStyle semiBoldMineShaft16 = GoogleFonts.sora(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColor.mineShaft,
  );

  static TextStyle semiBoldMineShaft14 = GoogleFonts.sora(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: AppColor.mineShaft,
  );
  static TextStyle regularSilverChalice12 = GoogleFonts.sora(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColor.Silverchalice,
  );

  static TextStyle semiBoldAlto14 = GoogleFonts.sora(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: AppColor.alto,
  );

  static TextStyle regularSilverChalice14 = GoogleFonts.sora(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColor.Silverchalice,
  );

  static TextStyle regularMercury14 = GoogleFonts.sora(
    color: AppColor.mercury,
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle semiBoldWhite16 = GoogleFonts.sora(
    fontSize: 16.sp,
    color: AppColor.white,
    fontWeight: FontWeight.w600,
  );

  static TextStyle semiBoldWhite8 = GoogleFonts.sora(
    fontSize: 8.sp,
    color: AppColor.white,
    fontWeight: FontWeight.w600,
  );
  static TextStyle regularMineShaft12 = GoogleFonts.sora(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColor.mineShaft,
  );

  static TextStyle semiBoldTussock12 = GoogleFonts.sora(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    color: AppColor.tussock,
  );
}
