import 'package:get/get.dart';

class LottieDemoController extends GetxController {
  //TODO: Implement LottieDemoController

  final RxList<String> types = [
    'loading',
    'file_empty',
    'no_coupon',
    'no_wifi',
    'no_friend_request',
    'no_message',
    'no_search_result',
    'no_login',
    'no_goods',
    'no_search_result_content',
    'no_network_link',
    'no_order_list',
    'get_order_success',
    'no_address',
    'page_refresh_fail',
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
}
