import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../themes/app_text_style.dart';

class AppButtonWidget extends StatelessWidget {
  const AppButtonWidget({
    super.key,
    required this.onTap,
    required this.title,
    this.color = AppColors.orangeColor,
  });
  final Function() onTap;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 55,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: color.withOpacity(0.5),
              blurRadius: 10,
              offset: const Offset(-7, 10),
              spreadRadius: 1.0)
        ], color: color, borderRadius: BorderRadius.circular(15.0)),
        child: Text(
          title,
          style: AppTextStyle.whiteF15FW500TextStyle,
        ),
      ),
    );
  }
}
