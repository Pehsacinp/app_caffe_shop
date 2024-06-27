import 'package:app_caffe_shop/src/core/companents/elevatedbutton_small_medium_large/elevatedbutton_large.dart';
import 'package:app_caffe_shop/src/core/companents/elevatedbutton_small_medium_large/elevatedbutton_medium.dart';
import 'package:app_caffe_shop/src/core/companents/elevatedbutton_small_medium_large/elevatedbutton_small.dart';
import 'package:app_caffe_shop/src/core/constants/app_color.dart';
import 'package:app_caffe_shop/src/core/constants/app_images.dart';
import 'package:app_caffe_shop/src/core/constants/app_keys.dart';
import 'package:app_caffe_shop/src/core/constants/app_textstyle.dart';
import 'package:app_caffe_shop/src/core/routing/router.dart';
import 'package:app_caffe_shop/src/feature/home/model/caffe_model.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class CaffeDetailView extends StatefulWidget {
  final CaffeModel caffeModel;
  CaffeDetailView({required this.caffeModel});

  @override
  State<CaffeDetailView> createState() => _CaffeDetailViewState();
}

class _CaffeDetailViewState extends State<CaffeDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.alabaster,
      appBar: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: () {}, icon: Image.asset(AppImages.detailHeartIcon))
        ],
        centerTitle: true,
        title: AutoSizeText(
          Constants.keys.detail,
          style: PhoneTextStyle.semiBoldMineShaft16,
        ),
        leading: IconButton(
          onPressed: () {
            context.router.pop();
          },
          icon: Image.asset(AppImages.detailLeftArrow),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 8,
              child: Container(
                child: Column(
                  children: [
                    _detailImage(widget: widget),
                    SizedBox(height: 5.h),
                    _caffeInformatione(widget: widget),
                    SizedBox(height: 5.h),
                    _description(),
                    SizedBox(height: 20.h),
                    _sizeButtons(),
                  ],
                ),
              )),
          Expanded(
              flex: 2,
              child: Container(
                child: _buyContent(
                  widget: widget,
                ),
              )),
        ],
      ),
    );
  }
}

class _sizeButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0).w,
      child: Column(
        children: [
          Row(
            children: [
              AutoSizeText(
                Constants.keys.size,
                style: PhoneTextStyle.semiBoldMineShaft16,
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButtonCompanent(),
              ElevatedButtonCompanentMedium(),
              ElevatedButtonCompanentLarge(),
            ],
          ),
        ],
      ),
    );
  }
}

class _buyContent extends StatelessWidget {
  const _buyContent({
    super.key,
    required this.widget,
  });
  final CaffeDetailView widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0).h,
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    Constants.keys.price,
                    style: GoogleFonts.sora(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColor.gray,
                    ),
                  ),
                  AutoSizeText(
                    '${widget.caffeModel.price}',
                    style: GoogleFonts.sora(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColor.tussock,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 55.w),
              SizedBox(
                height: 56.h,
                width: 217.w,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.tussock,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16).r,
                      ),
                    ),
                    onPressed: () {
                      context.router.push(
                          OrderDetailRoute(caffeModel: widget.caffeModel));
                      // push diğer sayfaya
                    },
                    child: AutoSizeText(
                      Constants.keys.buyNow,
                      style: GoogleFonts.sora(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColor.white,
                      ),
                    )),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Image.asset(AppImages.blackLine),
        ],
      ),
    );
  }
}

class _description extends StatelessWidget {
  const _description({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Column(
        children: [
          Row(
            children: [
              AutoSizeText(
                Constants.keys.description,
                style: PhoneTextStyle.semiBoldMineShaft16,
              ),
            ],
          ),
          AutoSizeText.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: Constants.keys.longText,
                  style: PhoneTextStyle.regularSilverChalice14,
                ),
                TextSpan(
                  text: Constants.keys.readMore,
                  style: GoogleFonts.sora(
                    fontSize: 14.sp,
                    color: AppColor.tussock,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _caffeInformatione extends StatelessWidget {
  const _caffeInformatione({
    super.key,
    required this.widget,
  });
  final CaffeDetailView widget;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 327.w,
        height: 100.h,
        child: Stack(
          children: [
            Row(
              children: [
                AutoSizeText(
                  '${widget.caffeModel.title}', //'${widget.caffeModel.title}',//
                  style: GoogleFonts.sora(
                    fontSize: 20.sp,
                    color: AppColor.mineShaft,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Center(
              child: Row(
                children: [
                  AutoSizeText(
                    '${widget.caffeModel.subtitle}', //'${widget.caffeModel.subtitle}',//
                    style: GoogleFonts.sora(
                      fontSize: 12.sp,
                      color: AppColor.Silverchalice,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        AppImages.fastDelivery,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(AppImages.qualityBean)),
                  IconButton(
                      onPressed: () {}, icon: Image.asset(AppImages.extraMilk)),
                ],
              ),
            ),
            Positioned(
              bottom: 5,
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      AppImages.starLogo,
                    ),
                    SizedBox(width: 5.w),
                    AutoSizeText(
                      '${widget.caffeModel.price}', //'${widget.caffeModel.price}',//
                      style: GoogleFonts.sora(
                        fontSize: 16,
                        color: AppColor.mineShaft,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 5.w),
                    AutoSizeText(
                      Constants.keys.towTreeZero,
                      style: GoogleFonts.sora(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColor.Silverchalice,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 30,
              child: Center(
                child: Container(
                  width: 295,
                  height: 1,
                  color: AppColor.gallery,
                ),
              ),
            ),
          ],
        ));
  }
}

class _detailImage extends StatelessWidget {
  const _detailImage({
    super.key,
    required this.widget,
  });
  final CaffeDetailView widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 202.h,
      width: 327.w,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                '${widget.caffeModel.imagePath}', //'${widget.caffeModel.imagePath}',//
              ))),
    );
  }
}
