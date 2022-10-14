import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/collection_controller.dart';

class CollectionView extends GetView<CollectionController> {
  const CollectionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('我的收藏'),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                '编辑',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ))
        ],
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: controller.goods_lists.length,
          itemBuilder: (context, int index) {
            String thumb = controller.goods_lists[index]['img'];
            String title = controller.goods_lists[index]['name'];
            return Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.0),
                  color: Colors.white),
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 108,
                    height: 108,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset(
                          thumb,
                          fit: BoxFit.cover,
                        )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              color: Color(0xff333333),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          '¥89.00',
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
