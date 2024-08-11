import 'package:camera_demo/view/index/binding.dart';
import 'package:camera_demo/view/index/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "无纸化会议系统",
      color: Colors.white,
      defaultTransition: Transition.noTransition,
      smartManagement: SmartManagement.full,
      debugShowCheckedModeBanner: false,
      navigatorKey: MyApp.navigatorKey,
      initialRoute: "/index",
      getPages: [
        GetPage(name: "/index", page: ()=>IndexPage(),binding: IndexBinding())
      ],
    );
  }

}