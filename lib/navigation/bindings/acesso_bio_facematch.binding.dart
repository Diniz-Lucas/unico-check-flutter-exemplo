import 'package:get/get.dart';
import 'package:test_unico_check_plugin/screens/acesso_bio_faceMatch/acesso_bio_facematch.controller.dart';


class AcessoBioFaceMatchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AcessoBioFaceMatchController>(() => AcessoBioFaceMatchController());
  }
}