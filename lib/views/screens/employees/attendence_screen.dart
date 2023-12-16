import 'package:flutter/material.dart';
import 'package:hrms/views/themes/app_text_style.dart';
import 'package:hrms/views/widgets/common_widget.dart/app_button_widget.dart';
import 'package:timelines/timelines.dart';

import '../../themes/app_colors.dart';

import '../../widgets/common_widget.dart/custom_card_widget.dart';
import '../invoices/invoice_screen.dart';

class AttendenceScreen extends StatefulWidget {
  const AttendenceScreen({Key? key}) : super(key: key);

  @override
  State<AttendenceScreen> createState() => _AttendenceScreenState();
}

class _AttendenceScreenState extends State<AttendenceScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final topBarHeight = height * (30 / 100);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Attendance',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: AppColors.blueColor,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '18 December 2019',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 140),
              ],
            ),
          ),
          Positioned(
            top: topBarHeight,
            left: 0,
            right: 0,
            child: Container(
              height: height - topBarHeight,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Logs",
                    style: AppTextStyle.blackF14FW500TextStyle,
                  ),
                  Expanded(
                    child: Timeline.tileBuilder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      theme: TimelineThemeData(
                        indicatorTheme: const IndicatorThemeData(
                          color: AppColors.darkRedColor,
                          size: 18.0,
                        ),
                        connectorTheme:
                            const ConnectorThemeData(color: Colors.grey),
                      ),
                      builder: TimelineTileBuilder.fromStyle(
                        contentsAlign: ContentsAlign.basic,
                        nodePositionBuilder: (context, index) => 0.05,
                        contentsBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: AttendenceItemWidget(),
                        ),
                        itemCount: 5,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ),
          Positioned(
            top: 60,
            left: 30,
            width: 150,
            height: 200,
            child: CustomCardWidget(
              image: "assets/images/punchfinger.png",
              text2: "Punch in",
              text: "00:00:00",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const InvocieScreen()));
              },
            ),
          ),
          Positioned(
            top: 100,
            right: 30,
            width: 150,
            height: 200,
            child: CustomCardWidget(
              image: "assets/images/punchfinger.png",
              text2: "Punch out",
              text: "00:00:00",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const InvocieScreen()));
              },
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                // Background color
                onPrimary: Colors.red, // Text color
                side: BorderSide(color: Colors.orange), // Border color
              ),
              child: Text('09:00:HOURS'),
            ),
          ),
        ],
      ),
    );
  }
}

class AttendenceItemWidget extends StatelessWidget {
  const AttendenceItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(35),
        boxShadow: const [
          BoxShadow(color: Colors.grey, blurRadius: 0.5, spreadRadius: 1),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Punch In'),
                  SizedBox(width: 6),
                ],
              ),
            ],
          ),
          Text('10:00:00 AM'),
        ],
      ),
    );
  }
}
