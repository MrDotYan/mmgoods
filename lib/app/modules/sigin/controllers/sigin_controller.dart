import 'package:get/get.dart';
import 'package:moment_dart/moment_dart.dart';

import '../../../data/goods_data.dart';

class SiginController extends GetxController {
  //TODO: Implement SiginController

  final count = 0.obs;
  final RxList<String> siginDates = [''].obs;
  final RxList<Map> goods_data = goodsLists.obs;

  String dateFormat(DateTime dateTime) {
    return Moment(dateTime).format('YYYY/MM/DD');
  }

  List<String> setSiginDays() {
    List<String> siginDates = [];
    for (int i = 1; i <= 7; i++) {
      final String currentDateTimeString = Moment(Moment.now() - Duration(days: i)).format('YYYY/MM/DD');
      siginDates.add(currentDateTimeString);
    }
    return siginDates;
  }

  @override
  void onInit() {
    siginDates.value = setSiginDays();
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
