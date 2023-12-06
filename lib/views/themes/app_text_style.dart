import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppTextStyle {
  const AppTextStyle._();

  static const blackF14FW500TextStyle =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black);

  static const orangeF12FW500TextStyle = TextStyle(
      fontSize: 20, fontWeight: FontWeight.w500, color: Colors.orange);

  static const orangeF11FW500TextStyle = TextStyle(
      fontSize: 11, fontWeight: FontWeight.w500, color: Colors.orange);

  static const blackF18FW400TextStyle =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black);

  static const blackF25FW500TextStyle =
      TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black);

  static const mediumGreyW500TextStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.mediumGreyColor);

  static const whiteF22FW500TextStyle =
      TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: Colors.white);
}
