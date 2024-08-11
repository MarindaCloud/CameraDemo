import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class IndexPage extends StatelessWidget {
  final logic = Get.find<IndexLogic>();
  final state = Get
      .find<IndexLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("相机测试",style: TextStyle(
          color: Colors.white
        ),),
        backgroundColor: Colors.blue.shade300,
      ),
      body: Obx(() {
        return Container(
          child: SizedBox(
            width: 500,
            height: 500,
            child: state.flag.value
                ? CameraPreview(state.cameraController!)
                : Container(child: Text("获取摄像头失败！"),),
          ),
        );
      }),
    );
  }
}
