// ignore: file_names
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firstmed/pages/loading_page.dart';
import 'package:flutter/material.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return AnimatedSplashScreen(
      backgroundColor:  Colors.white,
      splashIconSize: 200,
      centered: true,
      splash:"assets/logo.png",
      nextScreen: const LoadingPage(),
      duration: 2000,
    );
  }
}
