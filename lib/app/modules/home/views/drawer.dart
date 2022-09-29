import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

final List<Map> silders = [
  {
    "title": "home_page_drawer_category_title",
    "subtitle": "home_page_drawer_category_subtitle",
    "url": Routes.CATEGORY
  },
  {"title": "购物车", "subtitle": "查看购物车", "url": Routes.CART},
  {"title": "个人中心", "subtitle": "查看订单和修改个人信息", "url": Routes.MINE},
  {"title": "demo", "subtitle": "app组件和demo", "url": Routes.DEMO},
];

class DefaultDrawer extends StatelessWidget {
  const DefaultDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: Get.mediaQuery.padding.top,
          color:const Color(0xfff5f5f5),
        ),
        Container(
          height: 108.0,
          color:const Color(0xfff5f5f5),
          padding: const EdgeInsets.all(14.0),
          child: Row(
            children: [
              const SizedBox(
                width: 88.0,
                height: 88.0,
                child: CircleAvatar(
                  child: Text("M"),
                ),
              ),
              const SizedBox(width: 10.0),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'MrDotYan',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 12.0),
                    child: const Text('449107144@qq.com'),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 6.0),
                    child: const Text(
                      "这个人很懒，什么也没留下",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(fontSize: 12.0),
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: silders.length,
            itemBuilder: (BuildContext context, int index) {
              Map item = silders[index];
              return ListTile(
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
            },
          ),
        )
      ],
    );
  }
}
