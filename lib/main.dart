import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:web/config/pages/app_pages.dart';
import 'package:web/config/routes/AppRoutes.dart';
import 'package:web/constant/commons/app_const.dart';

void main() {
  runApp(const MyApp());
  ///Disable Rotation
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);




}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: AppConst.designSize,
        builder: (context,child)=>GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "UMKM BotoPutih",
          initialRoute: AppRoutes.umkm,
          getPages: AppPages.getPages(),
        )
    );
  }
}

