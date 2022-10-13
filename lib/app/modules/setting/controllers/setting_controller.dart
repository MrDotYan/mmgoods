import 'package:get/get.dart';
import 'package:mmgoods/app/data/setting_data.dart';

class SettingController extends GetxController {
  //TODO: Implement SettingController

  final RxList<Map> menusConfig = menus.obs;

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
