import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/payment_mobile_controller.dart';

class PaymentMobileView extends GetView<PaymentMobileController> {
  const PaymentMobileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('手机充值'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(16)),
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: '请输入手机号',
                    focusColor: Colors.white,
                    hoverColor: Colors.white),
              ),
            ),
            GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 4,
                    childAspectRatio: 1,
                    crossAxisSpacing: 4),
                itemCount: 8,
                itemBuilder: (context, int index) {
                  return Container(
                      decoration: const BoxDecoration(color: Colors.white),
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '¥1${index + 1}.00',
                                style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 4.0,
                              ),
                              Text('¥${index + 1 - 0.1}')
                            ],
                          )));
                }),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              padding:
              const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(16.0)),
              child: ListTile(
                title: const Text(
                  '选择支付方式',
                  style: TextStyle(fontSize: 14),
                ),
                trailing: SizedBox(
                  width: 100,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        '钱包支付',
                        style: TextStyle(fontSize: 14),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 14,
                      )
                    ],
                  ),
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
