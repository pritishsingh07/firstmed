import 'package:firstmed/pages/home_screen.dart';
import 'package:firstmed/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      key: GlobalKey(),
      home: MaterialApp(
        debugShowMaterialGrid: false,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Roboto',
        ),
        initialRoute: 'SplashScreen',
        routes: {
          'SplashScreen': (context) => const SplashScreen(),
          'HomeScreen': (context) => const HomePage(),
        },
      ),
    ),
  );
}