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
      backgroundColor: const Color(0xfff5f5f5),
      appBar: AppBar(
          title: Text('home_page_title'.tr),
          elevation: 0.0,
          actions: [
            IconButton(
                onPressed: controller.share,
                icon: const Icon(Icons.share_sharp))
          ]),
      drawer: const Drawer(
        child: DefaultDrawer(),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                  Map item = controller.swiper_data[index];
                  String url = item['url'];
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      url,
                      fit: BoxFit.fitHeight,
                    ),
                  );
                },
                itemCount: controller.swiper_data.length,
                pagination: const SwiperPagination(),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.white),
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.navs_data.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      mainAxisSpacing: 8,
                      childAspectRatio: 0.75,
                      crossAxisSpacing: 8),
                  itemBuilder: (context, int index) {
                    Map item = controller.navs_data[index];
                    String url = 'lib/assets/images/nav_ico${index + 1}.png';
                    return GestureDetector(
                      onTap: () {},
                      child: Column(
                        children: [
                          SizedBox(
                            width: 58,
                            height: 58,
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
            SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(12.0),
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.goods_data.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 8),
                  itemBuilder: (context, int index) {
                    Map item = controller.goods_data[index];

                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(color: Colors.white),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: Image.asset(
                                item['img'],
                                fit: BoxFit.fill,
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
                                  style: TextStyle(color: Colors.red),
                                ),
                                SizedBox(width: 20,),
                                Text(
                                  '¥${item['vip_price']}',
                                  style: TextStyle(color: Colors.red),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
