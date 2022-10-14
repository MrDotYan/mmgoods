import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mmgoods/app/routes/app_pages.dart';

class MineController extends GetxController {
  //TODO: Implement MineController

  final count = 0.obs;

  final RxList<Map> menus = [
    {'number': 1200, 'title': '积分','route':Routes.SIGIN},
    {'number': 1200, 'title': '钱包'},
    {'number': 80, 'title': '收藏','route':Routes.COLLECTION},
    {'number': 8, 'title': '优惠卷', "route": Routes.COUPON}
  ].obs;

  final RxList<Map> reviced_config = [
    {'number': 80, 'title': '待发货'},
    {'number': 1200, 'title': '待收货'},
    {'number': 1200, 'title': '已收货'},
    {'number': 8, 'title': '待评价'}
  ].obs;

  final RxList<Map> helpCenter = [
    {
      'icon': Icons.mobile_friendly_outlined,
      'title': '充话费',
      'route':Routes.PAYMENT_MOBILE
    },
    {
      'icon': Icons.edit_calendar_outlined,
      'title': '问题反馈',
      'route': Routes.FEEDBACK
    },
    {'icon': Icons.person_pin_rounded, 'title': '联系客服'},
    {'icon': Icons.more_horiz_outlined, 'title': '更多'},
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
