import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../controllers/create_barcode_controller.dart';

class CreateBarcodeView extends GetView<CreateBarcodeController> {
  const CreateBarcodeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('付款码'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: Get.width,
            margin: const EdgeInsets.all(16.0),
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(16.0)),
            child: const Center(
              child: Text(
                '我的付款码',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: Get.width,
            margin: const EdgeInsets.all(16.0),
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(16.0)),
            child: Obx(() => SvgPicture.string(controller.barCodeSvg.value)),
          ),
          Container(
            width: Get.width,
            margin: const EdgeInsets.all(16.0),
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(16.0)),
            child: Obx(() => SvgPicture.string(controller.qrCodeSvg.value)),
          ),
          Container(
            width: Get.width,
            margin: const EdgeInsets.all(16.0),
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
    );
  }
}
