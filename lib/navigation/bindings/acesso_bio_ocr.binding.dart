import 'package:get/get.dart';
import 'package:test_unico_check_plugin/screens/aceeso_bio_ocr/acesso_bio_ocr.controller.dart';


class AcessoBioOcrBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AcessoBioOcrController>(
          () => AcessoBioOcrController(),
    );
  }
}