import 'package:app_caffe_shop/src/core/constants/app_color.dart';
import 'package:app_caffe_shop/src/core/constants/app_images.dart';
import 'package:app_caffe_shop/src/core/constants/app_keys.dart';
import 'package:app_caffe_shop/src/core/constants/app_textstyle.dart';
import 'package:app_caffe_shop/src/feature/home/model/caffe_model.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class OrderDetailView extends StatefulWidget {
  OrderDetailView({required this.caffeModel});
  final CaffeModel caffeModel;

  @override
  State<OrderDetailView> createState() => _OrderDetailViewState();
}

class _OrderDetailViewState extends State<OrderDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.alabaster,
      appBar: AppBar(
        backgroundColor: AppColor.alabaster,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        leading: IconButton(
            onPressed: () {
              context.router.pop();
            },
            icon: Image.asset(AppImages.detailLeftArrow)),
        centerTitle: true,
        title: AutoSizeText(
          Constants.keys.order,
          style: PhoneTextStyle.semiBoldMineShaft16,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: 327.w,
              height: 43.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12).r,
                color: AppColor.gallery,
              ),
              child: _delivery(),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: 315.w,
              height: 121.h,
              child: _adress(
                widget: widget,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: 327.w,
              height: 56.h,
              child: _disscount(
                widget: widget,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: 375.w,
              height: 165.h,
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16).r,
                  topRight: Radius.circular(16).r,
                ),
              ),
              child: _order(
                widget: widget,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _order extends StatelessWidget {
  const _order({
    super.key,
    required this.widget,
  });
  final OrderDetailView widget;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 25,
          right: 30,
          child: Image.asset(AppImages.arrowDown),
        ),
        Positioned(
          top: 15,
          left: 50,
          child: AutoSizeText(
            Constants.keys.cashWallet,
            style: PhoneTextStyle.semiBoldMineShaft14,
          ),
        ),
        Positioned(
          top: 35,
          left: 50,
          child: AutoSizeText(
            '${widget.caffeModel.price}', // price
            style: PhoneTextStyle.semiBoldTussock12,
          ),
        ),
        Positioned(
          top: 25,
          left: 20,
          child: Image.asset(AppImages.wallet),
        ),
        Positioned(
          bottom: 10,
          right: 20,
          child: Center(
            child: SizedBox(
              height: 56.h,
              width: 327.w,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.tussock,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16).r)),
                  onPressed: () {},
                  child: AutoSizeText(
                    Constants.keys.order,
                    style: PhoneTextStyle.semiBoldWhite16,
                  )),
            ),
          ),
        ),
      ],
    );
  }
}

class _disscount extends StatelessWidget {
  const _disscount({
    super.key,
    required this.widget,
  });
  final OrderDetailView widget;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AppImages.brownLine),
        SizedBox(height: 15.h),
        Container(
          height: 56.h,
          width: 327.w,
          decoration: BoxDecoration(
            color: AppColor.white,
            border: Border.all(color: AppColor.gallery),
            borderRadius: BorderRadius.circular(16).r,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(AppImages.discountIcon),
              AutoSizeText(
                Constants.keys.discountIsApplies,
                style: PhoneTextStyle.semiBoldMineShaft14,
              ),
              Image.asset(AppImages.arrowRight),
            ],
          ),
        ),
        SizedBox(height: 15.h),
        Row(
          children: [
            AutoSizeText(
              Constants.keys.paymentSummery,
              style: PhoneTextStyle.semiBoldMineShaft16,
            ),
          ],
        ),
        SizedBox(height: 15.h),
        Row(
          children: [
            AutoSizeText(
              '${widget.caffeModel.price}',
              style: PhoneTextStyle.regularMineShaft12,
            ),
            Spacer(),
            AutoSizeText(
              '${widget.caffeModel.price}',
              style: PhoneTextStyle.semiBoldMineShaft14,
            ),
          ],
        ),
        SizedBox(height: 15.h),
        Row(
          children: [
            AutoSizeText(
              Constants.keys.deliveryFee,
              style: PhoneTextStyle.regularMineShaft12,
            ),
            Spacer(),
            AutoSizeText(
              Constants.keys.twoZero,
              style: GoogleFonts.sora(
                decoration: TextDecoration.lineThrough,
                color: AppColor.mineShaft,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 15.w),
            AutoSizeText(
              Constants.keys.oneZero,
              style: PhoneTextStyle.semiBoldMineShaft14,
            ),
          ],
        ),
      ],
    );
  }
}

class _counter extends StatelessWidget {
  const _counter({
    super.key,
    required this.widget,
  });
  final OrderDetailView widget;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 54.w,
          height: 54.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('${widget.caffeModel.imagePath}'))),
        ),
        SizedBox(width: 5.w),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              '${widget.caffeModel.title}',
              style: PhoneTextStyle.semiBoldMineShaft16,
            ),
            AutoSizeText(
              '${widget.caffeModel.subtitle}',
              style: PhoneTextStyle.regularSilverChalice12,
            ),
          ],
        ),
        Spacer(),
        IconButton(
            onPressed: () {}, icon: Image.asset(AppImages.deliverAddRemove)),
        AutoSizeText(
          Constants.keys.one,
          style: PhoneTextStyle.semiBoldMineShaft14,
        ),
        IconButton(
            onPressed: () {}, icon: Image.asset(AppImages.deliverAddIcon)),
      ],
    );
  }
}

class _adress extends StatelessWidget {
  const _adress({
    super.key,
    required this.widget,
  });
  final OrderDetailView widget;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 15.h),
        AutoSizeText(
          Constants.keys.deliveryAdress,
          style: PhoneTextStyle.semiBoldMineShaft16,
        ),
        SizedBox(height: 15.h),
        AutoSizeText(
          Constants.keys.kpgSutoyo,
          style: PhoneTextStyle.semiBoldMineShaft16,
        ),
        AutoSizeText(
          Constants.keys.mediumAdressText,
          style: PhoneTextStyle.regularSilverChalice14,
        ),
        SizedBox(height: 15.h),
        Row(
          children: [
            SizedBox(
              height: 26.h,
              width: 140.w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: AppColor.Silverchalice),
                    borderRadius: BorderRadius.circular(16).r,
                  ),
                  backgroundColor: AppColor.white,
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Image.asset(AppImages.editSquare),
                    SizedBox(width: 5.w),
                    AutoSizeText(
                      Constants.keys.editAdress,
                      style: PhoneTextStyle.regularMineShaft12,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 10.w),
            SizedBox(
              height: 26.h,
              width: 120.w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: AppColor.Silverchalice),
                    borderRadius: BorderRadius.circular(16).r,
                  ),
                  backgroundColor: AppColor.white,
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Image.asset(AppImages.note),
                    SizedBox(width: 5.w),
                    AutoSizeText(
                      Constants.keys.addNote,
                      style: PhoneTextStyle.regularMineShaft12,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15.h),
        Image.asset(AppImages.line),
        SizedBox(height: 15.h),
        _counter(widget: widget),
      ],
    );
  }
}

class _delivery extends StatelessWidget {
  const _delivery({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0).h,
          child: SizedBox(
            height: 50.h,
            width: 153.w,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.tussock,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8).r),
                ),
                onPressed: () {},
                child: AutoSizeText(
                  Constants.keys.deliver,
                  style: PhoneTextStyle.semiBoldWhite16,
                )),
          ),
        ),
        SizedBox(
          height: 50.h,
          width: 153.w,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.gallery,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8).r),
              ),
              onPressed: () {},
              child: AutoSizeText(
                Constants.keys.pickUp,
                style: PhoneTextStyle.semiBoldMineShaft16,
              )),
        )
      ],
    );
  }
}
