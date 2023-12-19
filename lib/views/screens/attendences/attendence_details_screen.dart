import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import '../../themes/app_colors.dart';
import '../../themes/app_text_style.dart';
import 'attendence_screen.dart';

class AttendanceDetailScreen extends StatelessWidget {
  const AttendanceDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance',
            style: AppTextStyle.whiteF15FW500TextStyle),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: AppColors.blueColor,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('JAN 15 2023',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            )),
                        Icon(
                          Icons.receipt_long_outlined,
                          size: 30,
                          color: Colors.white,
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    DatePicker(
                      DateTime.now(),
                      height: 100,
                      initialSelectedDate: DateTime.now(),
                      selectionColor: Colors.white,
                      selectedTextColor: Colors.black,
                      onDateChange: (date) {},
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: AppColors.blueColor,
              height: 60,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 30,
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_circle_left,
                        color: Colors.orange,
                      ),
                      Text("PREVIOUS",
                          textAlign: TextAlign.left,
                          style: AppTextStyle.blackF18FW400TextStyle),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_circle_left,
                        color: Colors.orange,
                      ),
                      Text("NEXT",
                          textAlign: TextAlign.left,
                          style: AppTextStyle.blackF18FW400TextStyle),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                "Logs",
                style: AppTextStyle.blackF18FW400TextStyle,
              ),
            ),
            Timeline.tileBuilder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              theme: TimelineThemeData(
                indicatorTheme: const IndicatorThemeData(
                  color: AppColors.darkRedColor,
                  size: 18.0,
                ),
                connectorTheme: const ConnectorThemeData(color: Colors.grey),
              ),
              builder: TimelineTileBuilder.fromStyle(
                contentsAlign: ContentsAlign.basic,
                nodePositionBuilder: (context, index) => 0.05,
                contentsBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: AttendenceItemWidget(),
                ),
                itemCount: 5,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35),
                border: Border.all(color: Colors.orangeAccent),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.orangeAccent,
                      blurRadius: 0.5,
                      spreadRadius: 1),
                ],
              ),
              child: const Text('09:00:HOURS'),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
