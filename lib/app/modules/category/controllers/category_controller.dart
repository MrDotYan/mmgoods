import 'package:get/get.dart';
import '/app/data/nav_data.dart';

class CategoryController extends GetxController {
  //TODO: Implement CategoryController

  final RxList<Map> navs_data = navs.obs;
  final RxInt activeCategoryIndex = 0.obs;
  final count = 0.obs;

  void selectCategory(index) {
    activeCategoryIndex.value  = index;
  }

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
