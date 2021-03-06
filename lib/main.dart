import 'package:flutter/material.dart';
import 'package:mao_app/shared/network/remote/dio_helper.dart';
import 'package:mao_app/test.dart';

import 'modules/movies_screen/movies_screen.dart';
import 'modules/profile_screen/profile_screen.dart';
import 'modules/setting_screen/setting_screen.dart';
import 'modules/tv_screen/tv_screen.dart';
import 'modules/welcome_screen/splash_screen.dart';

void main() {
  DioHelper.init();
  DioHelper.getData();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:   TestScreen(),
    );
  }
}

