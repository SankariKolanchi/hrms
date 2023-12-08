import 'package:flutter/material.dart';
import '../themes/app_text_style.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({
    Key? key,
    this.height, required this.showTitle, required this.showImage,

  }) : super(key: key);

  final double? height;
  final bool showTitle;
  final bool showImage;

 @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: height,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Colors.indigo,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
                visible: showImage,
                child: InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "assets/images/risolutor.jpg",
                    width: 50,
                    height: 50,
                  ),
                )),
            if (showTitle)
              const Text(
                "New HRMS",
                style: AppTextStyle.whiteF22FW500TextStyle,
              )
          ],
        ));
  }
}

