import 'package:flutter/material.dart';

import '../../themes/app_colors.dart';
import 'custom_appbar.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({
    super.key,
    required this.height1,
    required this.height2,
  });

  final double height1;
  final double height2;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blueColor,
      width: double.infinity,
      height: height1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomAppBarWidget(
            height: height2 * (10 / 100),
            showTitle: false,
            showImage: false,
          ),
          Container(
            height: 20,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
