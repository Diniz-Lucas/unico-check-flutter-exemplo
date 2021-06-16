import 'package:get/get.dart';
import 'package:test_unico_check_plugin/utils/snackbar.util.dart';
import 'package:unico_check/unico_check.dart';


class AcessoBioCameraNormalController extends GetxController implements IAcessoBioCamera {

  late UnicoCheck _unico;

  AcessoBioCameraNormalController() {
    _unico = UnicoCheck(context: this, config: Get.find());
  }

  void openCamera() {
    _unico.camera!.disableSmartFrame();
    _unico.camera!.disableAutoCapture();
    _unico.camera!.openCamera();
  }

  @override
  void onSuccessCamera(CameraResponse response) {
    SnackbarUtil.showSuccess(message: "success");
  }

  @override
  void onErrorCamera(ErrorBioResponse error) {
    SnackbarUtil.showError(message: error.description);
  }

  @override
  void onErrorAcessoBio(ErrorBioResponse error) {
    SnackbarUtil.showError(message: error.description);
  }

  @override
  void userClosedCameraManually() {
    SnackbarUtil.showError(message: "Camera fecheda manualmente");
  }

}
