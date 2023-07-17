// ignore: file_names
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return AnimatedSplashScreen(
      backgroundColor: const Color.fromARGB(255, 0, 122, 122),
      splashIconSize: 200,
      centered: true,
      splash: "lib/asset/logo.png",
      nextScreen: const HomePage(),
      duration: 2000,
    );
  }
}
