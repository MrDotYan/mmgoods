import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/coupon_controller.dart';
import '../widget/coupon.dart';

class CouponView extends GetView<CouponController> {
  const CouponView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('优惠券'),
        centerTitle: true,
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          itemCount: 8,
          itemBuilder: (context, int index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: const HorizontalCoupon(),
            );
          }),
    );
  }
}
