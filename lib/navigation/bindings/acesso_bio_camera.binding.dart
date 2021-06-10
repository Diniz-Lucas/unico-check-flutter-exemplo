import 'package:get/get.dart';
import 'package:test_unico_check_plugin/screens/acesso_bio_camera/acesso_bio_camera.controller.dart';

class AcessoBioCameraBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AcessoBioCameraController>(() => AcessoBioCameraController());
  }
}
