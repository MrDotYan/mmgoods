import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'drawer.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('home_page_title'.tr),
        actions: [
          IconButton(onPressed: controller.share, icon: Icon(Icons.share_sharp))
        ],
      ),
      drawer: const Drawer(
        child: DefaultDrawer(),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            alignment: Alignment.center,
            width: Get.width,
            height: 200,
            child: Swiper(
              autoplay: true,
              duration: 1000,
              viewportFraction: 0.9,
              scale: 0.95,
              itemBuilder: (BuildContext context, int index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.network(
                    "https://via.placeholder.com/368x180",
                    fit: BoxFit.fill,
                  ),
                );
              },
              itemCount: 3,
              pagination: const SwiperPagination(),
              // control: SwiperControl(),
            ),
          ),
        ],
      ),
    );
  }
}
