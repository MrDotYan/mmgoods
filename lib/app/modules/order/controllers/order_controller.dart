import 'package:get/get.dart';

class OrderController extends GetxController {
  //TODO: Implement OrderController

  final count = 0.obs;

  final RxList<Map> tab = [
    {'title': '全部', "id": 0},
    {'title': '待付款', "id": 1},
    {'title': '待发货', "id": 2},
    {'title': '待收货', "id": 3},
    {'title': '待评价', "id": 4}
  ].obs;

  void tabOnTap(int index) {
    print(index);
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
