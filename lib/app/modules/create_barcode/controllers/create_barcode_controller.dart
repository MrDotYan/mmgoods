import 'package:get/get.dart';
import 'package:barcode/barcode.dart';

class CreateBarcodeController extends GetxController {
  //TODO: Implement CreateBarcodeController

  final count = 0.obs;

  final RxString barCodeSvg = ''.obs;
  final RxString qrCodeSvg = ''.obs;

  void createBarCode() {
    final bc = Barcode.code128();
    barCodeSvg.value = bc.toSvg(
      'bar code 128',
      width: 300,
      height: 80,
      fontHeight: 12,
    );
    final qr = Barcode.qrCode();
    qrCodeSvg.value = qr.toSvg(
      'bar code 128',
      width: 300,
      height: 300,
      fontHeight: 12,
    );
  }

  @override
  void onInit() {
    createBarCode();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
