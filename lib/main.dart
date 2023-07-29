import 'package:assignment_test/app_screens/home_screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assignment Task',
      theme: ThemeData(
        androidOverscrollIndicator: AndroidOverscrollIndicator.glow,
        primaryColor: Colors.white,
        fontFamily: 'NotoSans-Regular',
      ),
      home: HomeScreen(),
    );
  }
}
