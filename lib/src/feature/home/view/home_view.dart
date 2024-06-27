import 'package:app_caffe_shop/src/core/constants/app_color.dart';
import 'package:app_caffe_shop/src/core/constants/app_constants.dart';
import 'package:app_caffe_shop/src/core/constants/app_images.dart';
import 'package:app_caffe_shop/src/core/constants/app_keys.dart';
import 'package:app_caffe_shop/src/core/constants/app_textstyle.dart';
import 'package:app_caffe_shop/src/core/routing/router.dart';
import 'package:app_caffe_shop/src/feature/home/model/caffe_model.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColor.alabaster,
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Stack(
              clipBehavior: Clip.none,
              fit: StackFit.expand,
              alignment: Alignment.center,
              children: [
                _homeAppBarBackgroundContainer(),
                _homeLocaText(),
                _homeBilzenText(),
                _homeTextField(),
                _homeTextfielRightButton(),
                _homeBanner(),
                _homeBannerText(),
                _homeBannerPromo(),
              ],
            ),
          ),
          SizedBox(
            height: 70.w,
          ),
          Expanded(flex: 1, child: Buttons()),
          Expanded(
            flex: 4,
            child: FutureBuilder<List<CaffeModel>>(
              future: urunleriYukle(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  var urunlerListesi = snapshot.data;
                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemCount: urunlerListesi!.length,
                    itemBuilder: (context, index) {
                      var urun = urunlerListesi[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14.0).w,
                        child: GestureDetector(
                          onTap: () {
                            context.router
                                .push(CaffeDetailRoute(caffeModel: urun));
                          },
                          child: _content(urun: urun),
                        ),
                      );
                    },
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _content extends StatelessWidget {
  const _content({
    super.key,
    required this.urun,
  });

  final CaffeModel urun;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              height: 238.h,
              width: 158.w,
              child: Card(
                elevation: 5,
                color: AppColor.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0).w,
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 128.h,
                        width: 140.w,
                        child: Card(
                          child: Image.asset(
                            '${urun.imagePath}',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0).w,
                          child: Row(
                            children: [
                              Image.asset(AppImages.starLogo),
                              SizedBox(width: 4.w),
                              AutoSizeText(
                                Constants.keys.fourEgith,
                                style: PhoneTextStyle.semiBoldWhite8,
                              ),
                            ],
                          ),
                        ),
                        margin: EdgeInsets.only(
                          left: 80,
                          top: 4,
                        ).w,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.topRight,
                            colors: [
                              Color(0xFF111111),
                              Color(0xFF313131),
                            ],
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(0).r,
                            topRight: Radius.circular(12).r,
                            bottomLeft: Radius.circular(24).r,
                            bottomRight: Radius.circular(0).r,
                          ),
                        ),
                        width: 51.w,
                        height: 28.h,
                      ),
                      Positioned(
                        bottom: 50,
                        left: 6,
                        child: AutoSizeText(
                          '${urun.title}',
                          style: PhoneTextStyle.semiBoldMineShaft16,
                        ),
                      ),
                      Positioned(
                        bottom: 30,
                        left: 8,
                        child: AutoSizeText(
                          '${urun.subtitle}',
                          style: PhoneTextStyle.regularSilverChalice12,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 8,
                        child: AutoSizeText(
                          '${urun.price}',
                          style: GoogleFonts.sora(
                            color: AppColor.mineShaft,
                            fontWeight: FontWeight.w600,
                            fontSize: 18.sp,
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: -8,
                          right: -5,
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset(AppImages.addIcon))),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 20.w),
            _allCoffe(),
            SizedBox(width: 20.w),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.w)),
                backgroundColor: Color.fromRGBO(237, 237, 237, 35),
              ),
              onPressed: () {},
              child: AutoSizeText(
                Constants.keys.mochiato,
                style: PhoneTextStyle.semiBoldMineShaft16,
              ),
            ),
            SizedBox(width: 20.w),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.w)),
                backgroundColor: Color.fromRGBO(237, 237, 237, 35),
              ),
              onPressed: () {},
              child: AutoSizeText(
                Constants.keys.latte,
                style: PhoneTextStyle.semiBoldMineShaft16,
              ),
            ),
            SizedBox(width: 20.w),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.w)),
                backgroundColor: Color.fromRGBO(237, 237, 237, 35),
              ),
              onPressed: () {},
              child: AutoSizeText(
                Constants.keys.americano,
                style: PhoneTextStyle.semiBoldMineShaft16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _allCoffe extends StatelessWidget {
  const _allCoffe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.w).r),
        backgroundColor: AppColor.tussock,
      ),
      onPressed: () {},
      child: AutoSizeText(
        Constants.keys.allCoffee,
        style: PhoneTextStyle.regularMercury14,
      ),
    );
  }
}

class _homeBannerPromo extends StatelessWidget {
  const _homeBannerPromo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30.w,
      left: 50.w,
      child: Image.asset(AppImages.homeBannerPromo),
    );
  }
}

class _homeBannerText extends StatelessWidget {
  const _homeBannerText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 50.w,
      bottom: -45.w,
      child: Image.asset(AppImages.homeBannerText),
    );
  }
}

class _homeBanner extends StatelessWidget {
  const _homeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 30.r,
      bottom: -50.w,
      child: SizedBox(
        height: 140.h,
        width: 327.w,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.w).r,
              image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage(
                    AppImages.homeBanner,
                  ))),
        ),
      ),
    );
  }
}

class _homeTextfielRightButton extends StatelessWidget {
  const _homeTextfielRightButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -35.w,
      right: 35.w,
      top: 0.w,
      child: Center(
        child: IconButton(
            onPressed: () {},
            icon: Image.asset(AppImages.homeTextfiledRightIcon)),
      ),
    );
  }
}

class _homeTextField extends StatelessWidget {
  const _homeTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 100.w, left: 15.w),
      margin: EdgeInsets.only(top: 50.r),
      child: Center(
        child: Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF2A2A2A))),
              prefixIcon: Image.asset(AppImages.homeSearchIcon),
              label: AutoSizeText(
                Constants.keys.searchCoffe,
                style: PhoneTextStyle.semiBoldMineShaft16,
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.w).r),
            ),
          ),
        ),
      ),
    );
  }
}

class _homeBilzenText extends StatelessWidget {
  const _homeBilzenText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 90.w,
      left: 8.w,
      child: Row(
        children: [
          AutoSizeText(
            Constants.keys.homeBilzen,
            style: PhoneTextStyle.semiBoldAlto14,
          ),
          IconButton(
              onPressed: null, icon: Image.asset(AppImages.arrowDownWhite))
        ],
      ),
    );
  }
}

class _homeLocaText extends StatelessWidget {
  const _homeLocaText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 60.w,
      left: 8.w,
      child: AutoSizeText(
        Constants.keys.homeLoca,
        style: PhoneTextStyle.regularSilverChalice12,
      ),
    );
  }
}

class _homeAppBarBackgroundContainer extends StatelessWidget {
  const _homeAppBarBackgroundContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: 280.h,
      decoration: BoxDecoration(
          boxShadow: [
            AppConstants.shadow,
          ],
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AppImages.homeContainer),
          )),
    );
  }
}
