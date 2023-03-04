import 'package:api_payment_projcet/Ui/SeeAll.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(500, 900),
        builder: (_, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Bank aplication',
            themeMode: ThemeMode.system,
            home: SeeAllPage(),
          );
        });
  }
}
