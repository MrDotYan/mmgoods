import 'package:flutter_share/flutter_share.dart';
import 'package:get/get.dart';
import '/app/data/goods_data.dart';
import '/app/data/nav_data.dart';
import '/app/data/swiper_data.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;

  final RxList<Map> swiper_data = swiper.obs;
  final RxList<Map> navs_data = navs.obs;
  final RxList<Map> goods_data = goodsLists.obs;
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
