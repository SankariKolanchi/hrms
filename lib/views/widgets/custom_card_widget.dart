import 'package:flutter/material.dart';

import '../themes/app_text_style.dart';

class CustomCardWidget extends StatelessWidget {
  final String image;
  final String text;
  final String text2;

  const CustomCardWidget({
    Key? key,
    required this.image,
    required this.text,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10,
            offset: Offset(0, 8),
            spreadRadius: 2.0,
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 60,
            height: 60,
            alignment: Alignment.center,
          ),
          const SizedBox(height: 15),
          Text(text2, style: AppTextStyle.blackF25FW500TextStyle),
          Text(text, style: AppTextStyle.blackF18FW400TextStyle)
        ],
      ),
    );
  }
}
