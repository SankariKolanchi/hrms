import 'package:flutter/material.dart';
import 'package:hrms/utilis/app_ui_constants.dart';
import 'package:hrms/views/screens/employees/holiday_widget.dart';
import 'package:hrms/views/screens/invoices/invoice_add_widget.dart';
import 'package:timelines/timelines.dart';

import '../../themes/app_colors.dart';

class HolidayScreen extends StatelessWidget {
  const HolidayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Holiday',
          style: TextStyle(color: Colors.black),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AppUiConstants.baseBottomSheet(context, HolidayAddWidget());
        },
        backgroundColor: Colors.orange,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                        Text('Go to calender',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            )),
                        Icon(
                          Icons.calendar_view_day_rounded,
                          size: 30,
                          color: Colors.white,
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            Container(
              color: AppColors.blueColor,
              height: 60,
              child: Stack(
                children: [
                  Text("Sort"),
                  Image.asset(
                    "assets/images/sort.png",
                  ),
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
            Timeline.tileBuilder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              theme: TimelineThemeData(
                  indicatorTheme: const IndicatorThemeData(
                    color: AppColors.orangeColor,
                    size: 18.0,
                  ),
                  connectorTheme: const ConnectorThemeData(color: Colors.grey)),
              builder: TimelineTileBuilder.fromStyle(
                contentsAlign: ContentsAlign.basic,
                nodePositionBuilder: (context, index) => 0.05,
                contentsBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: HolidayItemWidget(),
                ),
                itemCount: 10,
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}

class HolidayItemWidget extends StatelessWidget {
  const HolidayItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(35),
          boxShadow: const [
            BoxShadow(color: Colors.grey, blurRadius: 0.5, spreadRadius: 1)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text('Childrens Day'),
                  const SizedBox(width: 6),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15)),
                  )
                ],
              ),
              const Text(
                '19 Nov 2019',
              ),
            ],
          ),
          const Text('MO')
        ],
      ),
    );
  }
}
