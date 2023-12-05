import 'package:flutter/material.dart';
import 'package:hrms/views/themes/app_text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    final topBarHeight = height * (30 / 100);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: const [
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
      body: SizedBox(
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
                  AppCustomAppbar(
                    height: height * (10 / 100),
                  ),
                  Container(
                      height: 40,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)))),
                ],
              ),
            ),
            Positioned(
                top: topBarHeight - 130,
                left: 30,
                width: 150,
                height: 200,
                child: const CustomCardWidget(
                  image: "assets/images/project.png",
                  text: "Projects",
                  text2: "140",
                )),
            Positioned(
                top: topBarHeight - 80,
                right: 30,
                width: 150,
                height: 200,
                child: const CustomCardWidget(
                  image: "assets/images/clientman.png",
                  text2: "10",
                  text: "Clients",
                )),
            Positioned(
                top: topBarHeight + 170,
                left: 30,
                width: 150,
                height: 200,
                child: const CustomCardWidget(
                  image: "assets/images/emp.jpg",
                  text: "Employees",
                  text2: "30",
                )),
            Positioned(
              top: topBarHeight + 300,
              right: 30,
              width: 150,
              height: 200,
              child: const CustomCardWidget(
                image: "assets/images/invoice.png",
                text2: "40",
                text: "Invoices",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppCustomAppbar extends StatelessWidget {
  const AppCustomAppbar({super.key, this.height});
  final double? height;
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
            Image.asset(
              "assets/images/risolutor.jpg",
              width: 50,
              height: 50,
            ),
            const Text(
              "New HRMS",
              style: AppTextStyle.whiteF22FW500TextStyle,
            )
          ],
        ));
  }
}

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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 25),
          Image.asset(
            image,
            width: 60,
            height: 60,
          ),
          const SizedBox(height: 15),
          Text(text2, style: AppTextStyle.blackF25FW500TextStyle),
          Text(text, style: AppTextStyle.blackF18FW400TextStyle)
        ],
      ),
    );
  }
}
