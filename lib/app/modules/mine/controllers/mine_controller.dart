import 'package:get/get.dart';

class MineController extends GetxController {
  //TODO: Implement MineController

  final count = 0.obs;

  final RxList<Map> menus = [
    {'number': 1200, 'title': '积分'},
    {'number': 1200, 'title': '钱包'},
    {'number': 80, 'title': '收藏'},
    {'number': 8, 'title': '优惠卷'}
  ].obs;

  final RxList<Map> reviced_config = [
    {'number': 80, 'title': '待发货'},
    {'number': 1200, 'title': '待收货'},
    {'number': 1200, 'title': '已收货'},
    {'number': 8, 'title': '待评价'}
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
