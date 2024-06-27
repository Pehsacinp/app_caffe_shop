import 'package:app_caffe_shop/src/core/constants/app_color.dart';
import 'package:app_caffe_shop/src/core/constants/app_constants.dart';
import 'package:app_caffe_shop/src/core/constants/app_images.dart';
import 'package:app_caffe_shop/src/core/constants/app_keys.dart';
import 'package:app_caffe_shop/src/core/constants/app_textstyle.dart';
import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Expanded(
              flex: 5,
              child: Container(
                child: Image.asset(
                  width: MediaQuery.of(context).size.width.w,
                  fit: BoxFit.cover,
                  AppImages.imageOnDegisgnSix,
                ),
              )),
          Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      AppImages.boxShadowContainer,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: AppConstants.emptyBox20.w),
                    _fallLove(),
                    SizedBox(height: AppConstants.emptyBox20.w),
                    _welcome(),
                    SizedBox(height: AppConstants.emptyBox20.w),
                    _getStartedButton(),
                    SizedBox(height: AppConstants.emptyBox20.w),
                    Image.asset(AppImages.indicator),
                  ],
                ),
              ))
        ],
      ),
    ));
  }
}

class _getStartedButton extends StatelessWidget {
  const _getStartedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327.w,
      height: 56.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.tussock,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.w)),
        ),
        onPressed: () {
          context.router.pushNamed('/BottomNavBar');
        },
        child: AutoSizeText(
          Constants.keys.buttonText,
          style: GoogleFonts.sora(
            color: AppColor.fantasy,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class _welcome extends StatelessWidget {
  const _welcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      textAlign: TextAlign.center,
      Constants.keys.onbardingSubtitle,
      style: PhoneTextStyle.semiBoldMineShaft14,
    );
  }
}

class _fallLove extends StatelessWidget {
  const _fallLove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      textAlign: TextAlign.center,
      Constants.keys.onbardingTitle,
      style: GoogleFonts.sora(
        color: AppColor.fantasy,
        fontSize: 32.sp,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
