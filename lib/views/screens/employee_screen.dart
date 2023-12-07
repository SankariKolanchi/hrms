import 'package:flutter/material.dart';

import '../themes/app_text_style.dart';
import '../widgets/custom_appbar.dart';

class EmployeeScreen extends StatelessWidget {
  const EmployeeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final topBarHeight = height * (25 / 100);
    final cardWidth = (MediaQuery.of(context).size.width - 90) / 2;

    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.indigo,
            leading: InkWell(
              onTap: () {},
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 19,
              ),
            ),
            title: const Text(
              'Employee',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: SingleChildScrollView(
            child: SizedBox(
              height: height,
              child: Stack(
                children: [
                  Container(
                    color: Colors.indigo,
                    width: double.infinity,
                    height: topBarHeight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomAppBarWidget(
                          height: height * (10 / 100),
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
                  ),
                  CustomCardWithIconWidget(
                    icon: Icons.person,
                    backgroundColor: Colors.grey,
                    text: "Team leader",
                    text2: "John",
                    position: Offset(30 + cardWidth - 170, topBarHeight - 130),
                    width: cardWidth,
                    height: 180,
                  ),
                  CustomCardWithIconWidget(
                    icon: Icons.person,
                    backgroundColor: Colors.grey,
                    text2: "Web ",
                    text: "Mike Literous",
                    position: Offset(30 + cardWidth + 30, topBarHeight - 130),
                    width: cardWidth,
                    height: 180,
                  ),
                  CustomCardWithIconWidget(
                    icon: Icons.person,
                    backgroundColor: Colors.grey,
                    text: "Team leader",
                    text2: "John",
                    position: Offset(30, topBarHeight + 140),
                    width: cardWidth,
                    height: 180,
                  ),
                  CustomCardWithIconWidget(
                    icon: Icons.person,
                    backgroundColor: Colors.grey,
                    text2: "Web ",
                    text: "Mike Literous",
                    position: Offset(30 + cardWidth + 30, topBarHeight + 140),
                    width: cardWidth,
                    height: 180,
                  ),
                  CustomCardWithIconWidget(
                    icon: Icons.person,
                    backgroundColor: Colors.grey,
                    text: "Team leader",
                    text2: "John",
                    position: Offset(30, topBarHeight + 400),
                    width: cardWidth,
                    height: 180,
                  ),
                  CustomCardWithIconWidget(
                    icon: Icons.person,
                    backgroundColor: Colors.grey,
                    text2: "Web ",
                    text: "Mike Literous",
                    position: Offset(30 + cardWidth + 30, topBarHeight + 400),
                    width: cardWidth,
                    height: 180,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomCardWithIconWidget extends StatelessWidget {
  final String text;
  final String text2;
  final MaterialColor backgroundColor;
  final IconData icon;
  final Offset position;
  final double width;
  final double height; // Add this line

  const CustomCardWithIconWidget({
    Key? key,
    required this.text,
    required this.text2,
    required this.backgroundColor,
    required this.icon,
    required this.position,
    required this.width,
    required this.height, // Add this line
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: position.dy,
      left: position.dx,
      child: Container(
        width: width,
        height: height, // Add this line
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
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    icon,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 15),
                Text(text2, style: AppTextStyle.blackF25FW500TextStyle),
                Text(text, style: AppTextStyle.blackF18FW400TextStyle),
                const SizedBox(height: 10),
              ],
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle,
              ),
              margin: const EdgeInsets.all(8),
              child: const Icon(
                Icons.edit_outlined,
                color: Colors.white,
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
