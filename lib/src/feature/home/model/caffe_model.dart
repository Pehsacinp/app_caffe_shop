import 'package:app_caffe_shop/src/core/constants/app_images.dart';
import 'package:app_caffe_shop/src/core/constants/app_keys.dart';

class CaffeModel {
  final String imagePath;
  final String title;
  final String subtitle;
  final String price;

  const CaffeModel({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.price,
  });
}

Future<List<CaffeModel>> urunleriYukle() async {
  await Future.delayed(
      Duration(seconds: 2)); // Verileri almak için bekleme simülasyonu

  var urunlerListesi = <CaffeModel>[];
  var u1 = CaffeModel(
    price: Constants.keys.fourFiveThree,
    imagePath: AppImages.caffeMochaContentImage,
    title: Constants.keys.caffeMocha,
    subtitle: Constants.keys.deepFoam,
  );
  var u2 = CaffeModel(
    price: Constants.keys.dolarThreeFiveThree,
    imagePath: AppImages.caffeFlatWhite,
    title: Constants.keys.flatWhite,
    subtitle: Constants.keys.espresso,
  );
  var u3 = CaffeModel(
    price: Constants.keys.dolarSevenFiveThree,
    imagePath: AppImages.caffeMochaFusi,
    title: Constants.keys.mochaFusi,
    subtitle: Constants.keys.iceHot,
  );
  var u4 = CaffeModel(
    price: Constants.keys.dolarFiveFiveThree,
    imagePath: AppImages.caffePanna,
    title: Constants.keys.caffePanna,
    subtitle: Constants.keys.iceHot,
  );

  urunlerListesi.add(u1);
  urunlerListesi.add(u2);
  urunlerListesi.add(u3);
  urunlerListesi.add(u4);
  return urunlerListesi;
}
