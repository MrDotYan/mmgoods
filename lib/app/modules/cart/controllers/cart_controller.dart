import 'package:get/get.dart';
import '/app/data/goods_data.dart';
class CartController extends GetxController {
  //TODO: Implement CartController

  final count = 0.obs;

  final RxList<Map> goods_lists = goodsLists.obs;
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
