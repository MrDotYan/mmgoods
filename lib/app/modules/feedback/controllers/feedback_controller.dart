import 'package:get/get.dart';

class FeedbackController extends GetxController {
  //TODO: Implement FeedbackController

  final count = 0.obs;
  final RxList<String> imageUpload = [
    'lib/assets/images/goods_thumb_01.png',
    'lib/assets/images/goods_thumb_02.png',
    'lib/assets/images/voucher_bg.png',
  ].obs;
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

  void increment() => count.value++;
}
