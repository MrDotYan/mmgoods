import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/setting_controller.dart';

class SettingView extends GetView<SettingController> {
  const SettingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('设置中心'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child:  Obx(() =>ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: controller.menusConfig.value.length,
            itemBuilder: (context, int index) {
              Map item = controller.menusConfig.value[index];
              return Container(
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.0)),
                child: Column(
                  children: [
                    // ListTile(
                    //     contentPadding: EdgeInsets.zero,
                    //     title: Text('${item["title"]}')),
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: item['children'].length,
                        itemBuilder:
                            (BuildContext childrenContext, int childrenIndex) {
                          Map childrenItem = item['children'][childrenIndex];
                          return ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: Icon(
                              childrenItem['icon'],
                              size: 24,
                            ),
                            title: Text('${childrenItem['title']}'),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                            ),
                          );
                        })
                  ],
                ),
              );
            })),
      ),
    );
  }
}
