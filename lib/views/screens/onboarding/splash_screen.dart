import 'package:flutter/material.dart';

import 'dart:async';
import '../../themes/app_colors.dart';
import 'registration_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const RegisterScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueColor,
      body: Center(
        child: Hero(
          tag: 'splash_image',
          child: Image.asset(
            'assets/images/risolutor.jpg',
            width: 200.0,
            height: 200.0,
          ),
        ),
      ),
    );
  }
}
