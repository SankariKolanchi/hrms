import 'package:flutter/material.dart';

import '../../themes/app_text_style.dart';

import 'custom_appbar.dart';

class AppTopBarWidget extends StatelessWidget {
  const AppTopBarWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    final topBarHeight = height * (30 / 100);

    return SizedBox(
      height: topBarHeight,
      child: Stack(
        children: [
          CustomAppBarWidget(
            height: topBarHeight - 10,
            showTitle: true,
            showImage: true,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            top: topBarHeight - 50,
            child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)))),
          ),
          Positioned(
              top: topBarHeight - 75,
              left: 30,
              right: 30,
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                          offset: Offset(0, 8),
                          spreadRadius: 2.0)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  title,
                  style: AppTextStyle.blackF25FW500TextStyle,
                ),
              )),
        ],
      ),
    );
  }
}
