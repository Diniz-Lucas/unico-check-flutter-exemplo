import 'package:get/get.dart';
import 'package:test_unico_check_plugin/screens/acesso_bio_camera_normal/acesso_bio_camera_normal_controller.dart';

class AcessoBioCameraNormalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AcessoBioCameraNormalController>(
          () => AcessoBioCameraNormalController(),
    );
  }
}