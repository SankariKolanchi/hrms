import 'package:flutter/material.dart';
import 'package:hrms/views/themes/app_text_style.dart';

import 'lib/views/themes/app_colors.dart';

class AttendenceList extends StatelessWidget {
  const AttendenceList({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendence',
            style: AppTextStyle.whiteF15FW500TextStyle),
      ),
      body: Column(
        children: [
          Container(
            color: AppColors.blueColor,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('December 2023',
                          style: AppTextStyle.whiteF15FW500TextStyle),
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
                      DayDateItem(day: 'Mon', date: '01'),
                      DayDateItem(day: 'Tue', date: '02'),
                      DayDateItem(day: 'Wed', date: '03'),
                      DayDateItem(day: 'Thu', date: '04'),
                      DayDateItem(day: 'Fri', date: '05'),
                      DayDateItem(day: 'Sat', date: '06'),
                      DayDateItem(day: 'Sun', date: '07'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Employee",
                  style: AppTextStyle.blackF14FW500TextStyle,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  bool isRed = (index ~/ 2) % 2 == 0;
                  Color circleColor = isRed ? Colors.red : Colors.green;
                  Color lineColor = isRed ? Colors.red : Colors.green;

                  return Stack(
                    children: [
                      Container(
                        width: 80,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Icon(
                                Icons.person,
                                size: 50,
                                color: Colors.grey,
                              ),
                              Text("John doe"),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 2,
                        child: Container(
                          width: 30,
                          height: 15,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: circleColor,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 15,
                        right: 2,
                        child: Container(
                          width: 30,
                          height: 1,
                          color: lineColor,
                        ),
                      ),
                    ],
                  );
                },
                itemCount: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DayDateItem extends StatelessWidget {
  final String day;
  final String date;

  const DayDateItem({required this.day, required this.date});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(day, style: AppTextStyle.whiteF15FW500TextStyle),
        Text(date, style: AppTextStyle.whiteF15FW500TextStyle),
      ],
    );
  }
}
