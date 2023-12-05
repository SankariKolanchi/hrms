import 'package:flutter/material.dart';
import 'package:hrms/views/themes/app_colors.dart';


import 'views/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HRMS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.blueColor),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
