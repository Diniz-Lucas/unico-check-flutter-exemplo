import 'package:get/get.dart';
import 'package:test_unico_check_plugin/utils/snackbar.util.dart';
import 'package:unico_check/unico_check.dart';

class AcessoBioDocumentController extends GetxController
    implements IAcessoBioDocument {
  late UnicoCheck _unico;

  AcessoBioDocumentController() {
    _unico = UnicoCheck(context: this, config: Get.find());
  }

  void openCameraDocument() {
    _unico.document!.openCameraDocument(
      documentType: DocumentsTypeConstants.cnh,
    );
  }

  @override
  void onErrorAcessoBio(ErrorBioResponse error) {
    SnackbarUtil.showError(message: error.description);
  }

  @override
  void onErrorDocument(String error) {
    SnackbarUtil.showError(message: error);
  }

  @override
  void onSuccesstDocument(CameraDocumentResponse response) {
    SnackbarUtil.showSuccess(message: "Success");
  }

  @override
  void userClosedCameraManually() {
    SnackbarUtil.showError(message: "Camera fecheda manualmente");
  }

  @override
  void systemClosedCameraTimeoutSession() {
    SnackbarUtil.showSuccess(message: "systemClosedCameraTimeoutSession");
  }

  @override
  void systemChangedTypeCameraTimeoutFaceInference() {
    SnackbarUtil.showSuccess(
        message: "systemChangedTypeCameraTimeoutFaceInference");
  }
}
