import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:inrest_app/themes/default_themes.dart';
import 'package:inrest_app/themes/image_themes.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: sizeWidth * 0.35,
          height: sizeHeight * 0.1,
          child: Image.asset(logo)
        ),
      ),
    );
  }
}