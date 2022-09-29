import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final AppinioSwiperController appinioSwiperController = AppinioSwiperController();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> share() async {
    await FlutterShare.share(
        title: 'Example share',
        text: 'Example share text',
        linkUrl: 'https://flutter.cn/',
        chooserTitle: 'Example Chooser Title');
  }

  void increment() => count.value++;
}
