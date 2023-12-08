import 'package:flutter/material.dart';

import '../../widgets/common_widget.dart/custom_appbar.dart';
import '../../widgets/common_widget.dart/custom_card_widget.dart';

import '../../widgets/side_navigation_widget.dart/tick_widget.dart';

class AttendenceScreen extends StatelessWidget {
  const AttendenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double topBarHeight = 100.0;
    double height = MediaQuery.of(context).size.height;
    bool showTick = true; 

    return Scaffold(
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
        title: const Column(
          children: [
            Text(
              'Attendance',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              '18 December 2019',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
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
                        topLeft: Radius.circular(70),
                        topRight: Radius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: topBarHeight - 80,
              left: 20,
              width: 160,
              height: 200,
              child: const CustomCardWidget(
                image: "assets/images/punchfinger.png",
                text: "00:00:00",
                text2: "Punch in",
              ),
            ),
            Positioned(
              top: 30,
              right: 20,
              child: TickButton(showTick: showTick),
            ),
           
            Positioned(
              top: topBarHeight - 60,
              right: 20,
              width: 160,
              height: 200,
              child: const CustomCardWidget(
                image: "assets/images/punchfinger.png",
                text2: "12:00:00",
                text: "Punch out",
              ),
            ),
            Positioned(
              top: 40,
              right: 30,
              child: TickButton(showTick: showTick),
            ),
               const AttendenceScreen(),
          ],
        ),
       
      ),
        
    );
  }
}

