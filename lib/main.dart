import 'package:flutter/material.dart';

import 'modules/movies_screen/movies_screen.dart';
import 'modules/profile_screen/profile_screen.dart';
import 'modules/setting_screen/setting_screen.dart';
import 'modules/welcome_screen/splash_screen.dart';

void main() {
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
      home:  const MoviesScreen(),
    );
  }
}

