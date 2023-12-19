import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';

import '../../themes/app_colors.dart';
import '../../themes/app_text_style.dart';

class AttendanceList extends StatelessWidget {
  const AttendanceList({super.key});

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
                            style: AppTextStyle.whiteF15FW500TextStyle),
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
              padding: EdgeInsets.only(left: 16.0),
              child: Text("Employees",
                  textAlign: TextAlign.left,
                  style: AppTextStyle.blackF18FW400TextStyle),
            ),
            GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 1.8),
                mainAxisSpacing: 15.0,
                crossAxisSpacing: 15,
              ),
              itemCount: 20,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 4.0, top: 5),
                          child: Icon(
                            Icons.circle_rounded,
                            size: 15,
                            color: Colors.green,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0, bottom: 10),
                        child: Icon(
                          Icons.person,
                          size: 28,
                        ),
                      ),
                      Text("Jon Doe",
                          style: AppTextStyle.blackF12FW500TextStyle),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
