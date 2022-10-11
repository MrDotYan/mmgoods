import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      appBar: AppBar(
        title: const Text('购物车'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: controller.goods_lists.length,
                itemBuilder: (context, int index) {
                  String thumb = controller.goods_lists[index]['img'];
                  String title = controller.goods_lists[index]['name'];
                  return Container(
                    padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.0),
                        color: Colors.white),
                    margin: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Checkbox(value: true, onChanged: (e) {},shape: const CircleBorder(),activeColor:Colors.red),
                        SizedBox(
                          width: 108,
                          height: 108,
                          child: Image.asset(
                            thumb,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
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
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 4, bottom: 4),
                                color: const Color(0xfff5f5f5),
                                padding: const EdgeInsets.all(4),
                                child: const Text('金色，256G，5G'),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      '¥89.00',
                                      style: TextStyle(color: Colors.red),
                                    ),
                                    SizedBox(
                                      child: Row(
                                        children: [
                                          GestureDetector(
                                              onTap: () {},
                                              child: Container(
                                                padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                                                decoration: BoxDecoration(
                                                  color: Colors.grey[100],
                                                ),
                                                child: Icon(
                                                  Icons.exposure_minus_1,
                                                  size: 18,
                                                ),
                                              )),
                                          Container(
                                            child: Text('666'),
                                            padding: EdgeInsets.all(8),
                                          ),
                                          GestureDetector(
                                              onTap: () {},
                                              child: Container(
                                                padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                                                decoration: BoxDecoration(
                                                  color: Colors.grey[100],
                                                ),
                                                child: Icon(
                                                  Icons.exposure_plus_1,
                                                  size: 18,
                                                ),
                                              )),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
            // Column(
            //   children: [
            //     const ListTile(
            //       title: Text('相似推荐'),
            //       trailing: TextButton(onPressed: null, child: Text('更多')),
            //     ),
            //     ListView.builder(
            //       physics: const NeverScrollableScrollPhysics(),
            //       itemCount: 20,
            //       shrinkWrap: true,
            //       itemBuilder: (context, int index) {
            //         return Container(
            //           height: 60,
            //         );
            //       },
            //     )
            //   ],
            // ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (e) {},shape: const CircleBorder(),activeColor:Colors.red),
                      const Text('全选')
                    ],
                  ),
                 const  SizedBox(
                    width: 20,
                  ),
                  const Text('总价：9999.00')
                ],
              ),
              GestureDetector(
                child: Container(
                  width: 120,
                  height: 60,
                  color: Colors.red,
                  child: const Center(
                    child: Text(
                      '结算',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
