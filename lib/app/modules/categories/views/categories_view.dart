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
          backgroundColor: Colors.grey[100],
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
            body: TabBarView(
              children: controller.categories.value.map((element){
                return  ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Container(
                      margin: const EdgeInsets.all(12),
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Colors.white),
                      child: GridView.builder(
                          padding: EdgeInsets.zero,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: controller.navs_data.length,
                          shrinkWrap: true,
                          gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 5,
                              mainAxisSpacing: 4,
                              childAspectRatio: 0.80,
                              crossAxisSpacing: 4),
                          itemBuilder: (context, int index) {
                            Map item = controller.navs_data[index];
                            String url =
                                'lib/assets/images/nav_ico${index + 1}.png';
                            return GestureDetector(
                              onTap: () {},
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 46,
                                    height: 46,
                                    child: Image.asset(
                                      url,
                                      fit: BoxFit.cover,
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
                    ),
                    GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.goods_data.length,
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 8,
                            childAspectRatio: 0.70,
                            crossAxisSpacing: 8),
                        itemBuilder: (context, int index) {
                          Map item = controller.goods_data[index];

                          return GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              decoration:  BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                color: Colors.white,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12.0),
                                      child: Image.asset(
                                        item['img'],
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    height: 38,
                                    child: Text(
                                      item['name'],
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '¥${item['price']}',
                                        style: const TextStyle(color: Colors.red),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        '¥${item['vip_price']}',
                                        style: const TextStyle(
                                            color: Color(0xff666666), fontSize: 10),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ],
                );
              }).toList()
            ))));
  }
}
