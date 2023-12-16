import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import '../../themes/app_colors.dart';

import '../../themes/app_text_style.dart';
import '../../widgets/custom_card_widget.dart';
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

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Attendance',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              color: AppColors.blueColor,
              height: height * 33 / 100,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: const Text(
                      '18 December 2019',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    top: 180,
                    child: Container(
                      height: 20,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 30,
                    width: 150,
                    height: 200,
                    child: CustomCardWidget(
                      image: "assets/images/punchfinger.png",
                      text2: "Punch in",
                      text: "00:00:00",
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const InvocieScreen()));
                      },
                    ),
                  ),
                  Positioned(
                    top: 60,
                    right: 30,
                    width: 150,
                    height: 200,
                    child: CustomCardWidget(
                      image: "assets/images/punchfinger.png",
                      text2: "Punch out",
                      text: "00:00:00",
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const InvocieScreen()));
                      },
                    ),
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
      child: const Row(
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
