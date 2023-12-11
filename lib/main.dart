import 'package:flutter/material.dart';
import 'package:hrms/views/themes/app_theme.dart';

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
      theme: AppTheme.appTheme,
      home: const SplashScreen(),
      // colorScheme: ColorScheme.fromSeed(seedColor: AppColors.blueColor),
      // useMaterial3: true,
    );
  }
}
