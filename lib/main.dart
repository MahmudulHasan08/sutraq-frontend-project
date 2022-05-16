import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/const/appcolors.dart';
import 'package:sutraq/ui/nav_page/dashboard/viewall.dart';
import 'package:sutraq/ui/nav_page/mainpage.dart';
import 'package:sutraq/ui/screens/home_page.dart';
import 'package:sutraq/ui/screens/identityScreen/checkmail.dart';
import 'package:sutraq/ui/screens/identityScreen/forgot_password.dart';
import 'package:sutraq/ui/screens/identityScreen/login_page.dart';
import 'package:sutraq/ui/screens/splash_page.dart';
import 'package:sutraq/ui/screens/test1.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: AppColors.backgroundDashboardColor,
    statusBarBrightness: Brightness.light,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Color(0xFFE5E5E5),
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
