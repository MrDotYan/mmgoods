import 'package:get/get.dart';

import '../controllers/payment_mobile_controller.dart';

class PaymentMobileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentMobileController>(
      () => PaymentMobileController(),
    );
  }
}
