import 'package:get/get.dart';
import 'package:test_unico_check_plugin/screens/aceeso_bio_document/acesso_bio_document.controller.dart';

class AcessoBioDocumentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AcessoBioDocumentController>(
      () => AcessoBioDocumentController(),
    );
  }
}
