import 'package:flutter/material.dart';
import '../themes/app_colors.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({
    Key? key,
    this.height,
    this.showIcons = false,
  }) : super(key: key);

  final double? height;
  final bool showIcons;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: const BoxDecoration(
        color: AppColors.blueColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/risolutor.jpg",
            width: 60,
            height: 60,
          ),
          const SizedBox(width: 20),
          const Text(
            "NEW HRMS",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
