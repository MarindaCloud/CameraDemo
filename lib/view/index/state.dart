import 'package:camera/camera.dart';
import 'package:get/get.dart';
class IndexState {
  CameraController? cameraController;
  List<CameraDescription> cameraDescription = [];
  final flag = false.obs;
  IndexState() {
    ///Initialize variables
  }
}
