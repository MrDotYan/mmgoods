import 'package:get/get.dart';

import '../controllers/create_barcode_controller.dart';

class CreateBarcodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateBarcodeController>(
      () => CreateBarcodeController(),
    );
  }
}
