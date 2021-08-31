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
  void onErrorDocument(ErrorBioResponse error) {
    SnackbarUtil.showError(message: error.description);
  }

  @override
  void onSuccessDocument(CameraDocumentResponse response) {
    SnackbarUtil.showError(message: "Success");
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
