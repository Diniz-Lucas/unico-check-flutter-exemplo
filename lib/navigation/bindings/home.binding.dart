import 'package:get/get.dart';
import 'package:test_unico_check_plugin/screens/home/home.controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
