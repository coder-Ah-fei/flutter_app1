import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // 默认设置宽度1080px，高度1920px（oppo R11）
      // designSize: Size(392.7, 759.3),
      allowFontScaling: false,
        builder: ()=> MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.cyan,
          ),
          home: HomePage(title: 'Flutter Demo Home Page'),
        ),
    );


  }
}
