import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

import 'state.dart';
import 'package:camera/camera.dart';
class IndexLogic extends GetxController {
  final IndexState state = IndexState();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  /*
   * @Author Marinda
   * @Description 初始化摄像头权限
   * @Date 1:36 2024/8/11
   **/
  initPermissionRequest() async{
    var status = Permission.camera.request();
    bool flag = await status.isGranted;
    if(flag){
      print('同意！');
      await initCamera();
    }
  }

  initCamera() async{
    state.cameraDescription = await availableCameras();
    state.cameraController = CameraController(state.cameraDescription[1], ResolutionPreset.max);
    await state.cameraController!.initialize();
    state.flag.value = true;
  }



  @override
  void onReady() async{

    await initPermissionRequest();
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void dispose() {
    state.cameraController!.dispose();
    // TODO: implement dispose
    super.dispose();
  }
}
