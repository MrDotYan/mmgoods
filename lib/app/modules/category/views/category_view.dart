import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/category_controller.dart';

class CategoryView extends GetView<CategoryController> {
  const CategoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('分类'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Get.toNamed(Routes.SEARCH);
            },
          ),
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 3,
              child: Container(
                color: Color(0xfff5f5f5),
                height: Get.height,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.navs_data.length,
                    itemBuilder: (context, int index) {
                      String name = controller.navs_data[index]['name'];
                      return Obx(() => ListTile(
                          contentPadding: EdgeInsets.zero,
                          onTap: () => controller.selectCategory(index),
                          selected:
                              controller.activeCategoryIndex.value == index,
                          selectedColor: Colors.red,
                          selectedTileColor: Colors.white,
                          title: Center(
                              child: Row(
                            children: [
                              Container(
                                width: 4,
                                height: 18,
                                color: controller.activeCategoryIndex.value == index
                                    ? Colors.red
                                    : Colors.transparent,
                              ),
                             const SizedBox(
                                width: 12,
                              ),
                              Text(name),
                            ],
                          ))));
                    }),
              )),
          Expanded(
              flex: 9,
              child: Container(
                height: Get.height,
                color: Color(0xfff5f5f5),
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, int index) {
                      return Container(
                        margin: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.white),
                        child: Column(
                          children: [
                            ListTile(
                              tileColor: Colors.white,
                              title: Text('二级分类$index'),
                              trailing: IconButton(
                                icon: const Icon(Icons.arrow_forward_ios_rounded,size: 14,),
                                onPressed: () {},
                              ),
                            ),
                            GridView.builder(
                                padding: EdgeInsets.zero,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: controller.navs_data.length,
                                shrinkWrap: true,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                        mainAxisSpacing: 8,
                                        childAspectRatio: 0.8,
                                        crossAxisSpacing: 8),
                                itemBuilder: (context, int index) {
                                  Map item = controller.navs_data[index];
                                  String url = index >= 9 ? 'lib/assets/images/goods_thumb_${index + 1}.png' :
                                      'lib/assets/images/goods_thumb_0${index + 1}.png';
                                  return GestureDetector(
                                    onTap: () {},
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          width: 58,
                                          height: 58,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(8),
                                            child: Image.asset(
                                              url,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(item['name'])
                                      ],
                                    ),
                                  );
                                }),
                          ],
                        ),
                      );
                    }),
              ))
        ],
      ),
    );
  }
}
