import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(414, 993),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: ( build, child) =>GetMaterialApp(
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        debugShowCheckedModeBanner: false,
        // You can use the library anywhere in the app even in theme
        title: 'First Method',
        theme: ThemeData(
          fontFamily: 'Prompt',
          // textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
        ),
      ),
    );
  }
}
