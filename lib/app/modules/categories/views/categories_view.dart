import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/categories_controller.dart';

class CategoriesView extends GetView<CategoriesController> {
  const CategoriesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: controller.categories.value.length,
        child: Obx(() => Scaffold(
              appBar: AppBar(
                title: const Text('CategoriesView'),
                centerTitle: true,
                bottom: TabBar(
                    indicatorColor: Colors.white,
                    isScrollable: true,
                    tabs: controller.categories.value.map((element) {
                      return Tab(text: element['name']);
                    }).toList()),
              ),
              body: const Center(
                child: Text(
                  'CategoriesView is working',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            )));
  }
}
