import 'package:get/get.dart';

import '../controllers/lottie_demo_controller.dart';

class LottieDemoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LottieDemoController>(
      () => LottieDemoController(),
    );
  }
}
