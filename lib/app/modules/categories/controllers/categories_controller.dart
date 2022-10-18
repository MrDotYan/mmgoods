import 'package:get/get.dart';
import 'package:mmgoods/app/data/nav_data.dart';

import '../../../data/goods_data.dart';

class CategoriesController extends GetxController {
  //TODO: Implement CategoriesController

  final count = 0.obs;

  final RxList<Map> categories = navs.obs;
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

  void increment() => count.value++;
}
