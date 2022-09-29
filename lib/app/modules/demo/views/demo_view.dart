import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../routes/app_pages.dart';

import '../controllers/demo_controller.dart';

final List<Map> demos = [
  {
    "title":"lottie",
    "subtitle":'lottie 动画',
    "url":Routes.LOTTIE_DEMO
  }
];

class DemoView extends GetView<DemoController> {
  const DemoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('DemoView'),
        centerTitle: true,
      ),
      body: ListView.builder(itemCount: demos.length,itemBuilder: (context,int index){
        Map item = demos[index];
      return  ListTile(
          title: Text(
            '${item['title']}'.tr,
          ),
          onTap: () => Get.toNamed(item['url']),
          subtitle: Text('${item['subtitle']}'.tr),
          trailing: const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 16.0,
          ),
        );
      }),
    );
  }
}
