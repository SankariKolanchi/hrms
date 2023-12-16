import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import '../../themes/app_colors.dart';
import '../../themes/app_text_style.dart';

class AttendenceDetailsList extends StatelessWidget {
  const AttendenceDetailsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Attendence',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(children: [
          Container(
            color: AppColors.blueColor,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '18 December 2019',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.calendar_view_day_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //  DayDateItem(day: 'Mon', date: '01'),
                    // DayDateItem(day: 'Tue', date: '02'),
                    // DayDateItem(day: 'Wed', date: '03'),
                    // DayDateItem(day: 'Thu', date: '04'),
                    // DayDateItem(day: 'Fri', date: '05'),
                    // DayDateItem(day: 'Sat', date: '06'),
                    // DayDateItem(day: 'Sun', date: '07'),
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/images/leftarow.png",
                      width: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Previous",
                      style: AppTextStyle.blackF14FW500TextStyle,
                    ),
                    SizedBox(width: 200),
                    Text("Next"),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      "assets/images/rightarrow.png",
                      width: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'John doe',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Timeline.tileBuilder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    theme: TimelineThemeData(
                      indicatorTheme: const IndicatorThemeData(
                        color: AppColors.orangeColor,
                        size: 18.0,
                      ),
                      connectorTheme:
                          const ConnectorThemeData(color: Colors.grey),
                    ),
                    builder: TimelineTileBuilder.fromStyle(
                      contentsAlign: ContentsAlign.basic,
                      nodePositionBuilder: (context, index) => 0.05,
                      contentsBuilder: (context, index) => const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: AttendenceDlItemWidget(),
                      ),
                      itemCount: 4,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.red,
                      side: const BorderSide(color: Colors.orange),
                    ),
                    child: const Text('09:00:00 HOURS'),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}

class AttendenceDlItemWidget extends StatelessWidget {
  const AttendenceDlItemWidget({Key? key}) : super(key: key);

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
