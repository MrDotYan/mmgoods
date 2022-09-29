import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widget/page_status/lottie_animation.dart';
import '../controllers/lottie_demo_controller.dart';

class LottieDemoView extends GetView<LottieDemoController> {
  const LottieDemoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('LottieDemoView'),
        centerTitle: true,
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
          itemCount: controller.types.length,
          itemBuilder: (context, int index) {
            return Card(
              margin: const EdgeInsets.all(24.0),
              shadowColor: Colors.transparent,
              elevation: 0.6,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
                side: BorderSide(
                  color: Color(0xfff5f5f5),
                  width: 1,
                ),
              ),
              child: LottieAnimation(type: controller.types[index]),
            );
          }),
    );
  }
}
