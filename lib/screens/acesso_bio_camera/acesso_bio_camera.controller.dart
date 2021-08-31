import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:test_unico_check_plugin/utils/snackbar.util.dart';
import 'package:unico_check/unico_check.dart';

class AcessoBioCameraController extends GetxController
    implements IAcessoBioSelfie {
  late UnicoCheck _unico;
  late ValueNotifier<String> base64;

  AcessoBioCameraController() {
    _unico = UnicoCheck(context: this, config: Get.find());
  }

  void openCamera() {
    _unico.camera!.openCamera();
  }

  @override
  void onErrorAcessoBio(ErrorBioResponse error) {
    SnackbarUtil.showSuccess(message: error.description);
  }

  @override
  void onErrorSelfie(ErrorBioResponse error) {
    SnackbarUtil.showSuccess(message: error.description);
  }

  @override
  void onSuccessSelfie(CameraResponse response) {
    if (response.base64 != "") {
      SnackbarUtil.showSuccess(message: "Success base64");
    } else {
      SnackbarUtil.showError(message: "Do not return base64");
    }
  }

  @override
  void onSystemChangedTypeCameraTimeoutFaceInference() {
    SnackbarUtil.showError(message: "change camera timeout");
  }

  @override
  void onSystemClosedCameraTimeoutSession() {
    SnackbarUtil.showError(message: "close camera timeout");
  }

  @override
  void onUserClosedCameraManually() {
    SnackbarUtil.showError(message: "user close camera");
  }
}
