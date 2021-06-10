import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:test_unico_check_plugin/utils/snackbar.util.dart';
import 'package:unico_check/unico_check.dart';

class AcessoBioCameraController extends StatefulWidget
    implements IAcessoBioCamera  {

  late UnicoCheck _unico;
  String _base64 = "";
  late ValueNotifier<String> base64 ;

  AcessoBioCameraController() {
    _unico = UnicoCheck(context: this, config: Get.find());
    base64 = new ValueNotifier<String>(_base64);
  }

  void openCamera() {
    _unico.camera!.openCamera();
  }

  @override
  void onErrorAcessoBio(ErrorBioResponse error) {
    SnackbarUtil.showSuccess(message: error.description);
  }

  @override
  void onErrorCamera(ErrorBioResponse error) {
    SnackbarUtil.showSuccess(message: error.description);
  }

  @override
  void onErrorDocumentInsert(String error) {
    SnackbarUtil.showSuccess(message: error);
  }

  @override
  void onSuccessCamera(CameraResponse response) {
    _base64 = response.base64;
    SnackbarUtil.showSuccess(message: "success ID: "+response.processID);
  }

  @override
  void onSucessDocumentInsert(String processId, String typed) {
    SnackbarUtil.showSuccess(message: "success ID: "+processId);
  }

  @override
  void userClosedCameraManually() {
    SnackbarUtil.showError(message: "Camera fecheda manualmente");
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }




}
