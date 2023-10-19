import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'Pages/Splash/Splash_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Future.delayed(Duration.zero, () {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
    );

    return GetMaterialApp(
      //  GetMaterialApp for navigation
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.white, brightness: Brightness.light),
        useMaterial3: true,
      ),
      home: SplashPage(),
    );
  }
}
