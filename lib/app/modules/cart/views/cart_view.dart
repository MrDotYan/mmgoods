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
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 30,
                itemBuilder: (context, int index) {
                  return Container(
                    color: Colors.white,
                    margin: const EdgeInsets.only(top: 10),
                    height: 50,
                  );
                }),
            Column(
              children: [
                const ListTile(
                  title: Text('相似推荐'),
                  trailing: TextButton(
                      onPressed:null, child: Text('更多')),
                ),
                ListView.builder(
                  physics:const NeverScrollableScrollPhysics(),
                  itemCount: 20,
                  shrinkWrap: true,
                  itemBuilder: (context, int index) {
                    return Container(
                      height: 60,
                    );
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
