import 'package:flutter/material.dart';

import '../themes/app_text_style.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({
    Key? key,
    required this.onTap,
    required this.image,
    required this.text,
    required this.text2,
  }) : super(key: key);

  final String image;
  final String text;

  ///TODO
  ///given meaningful name always
  final String text2;
  final Function onTap;

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
      child: InkWell(
        onTap: () => onTap(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.orange, width: 1.5)),
                  child: Image.asset(
                    image,
                    width: 60,
                    height: 60,
                    alignment: Alignment.center,
                  ),
                ),
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.check_circle,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Text(text2, style: AppTextStyle.blackF25FW500TextStyle),
            Text(text, style: AppTextStyle.blackF18FW400TextStyle)
          ],
        ),
      ),
    );
  }
}
