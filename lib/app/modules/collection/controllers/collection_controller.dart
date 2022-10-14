import 'package:get/get.dart';

import '../../../data/goods_data.dart';

class CollectionController extends GetxController {
  //TODO: Implement CollectionController
  final RxList<Map> goods_lists = goodsLists.obs;

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

  void increment() => count.value++;
}
