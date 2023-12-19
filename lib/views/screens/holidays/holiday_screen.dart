import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import '../../../utilis/app_ui_constants.dart';
import '../../themes/app_colors.dart';
import 'add_holidays_widget.dart';

class HolidayScreen extends StatelessWidget {
  const HolidayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Holidays',
          style: TextStyle(color: Colors.white),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AppUiConstants.baseBottomSheet(context, const AddHolidayWidget());
        },
        backgroundColor: Colors.orange,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                      Text('Holidays List',
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
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 26),
            child: Row(
              children: [Text('Sort By'), SizedBox(width: 5), Icon(Icons.sort)],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Timeline.tileBuilder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              theme: TimelineThemeData(
                  indicatorTheme: const IndicatorThemeData(
                    color: AppColors.blueColor,
                    size: 18.0,
                  ),
                  connectorTheme: const ConnectorThemeData(color: Colors.grey)),
              builder: TimelineTileBuilder.fromStyle(
                contentsAlign: ContentsAlign.basic,
                nodePositionBuilder: (context, index) => 0.05,
                contentsBuilder: (context, index) => Container(
                  padding: const EdgeInsets.all(12.0),
                  margin: const EdgeInsets.all(12.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: const [
                        BoxShadow(color: Colors.grey, blurRadius: 0.5)
                      ]),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Children Days'),
                      SizedBox(height: 8),
                      Text(
                        '19 20 May',
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                ),
                itemCount: 10,
              ),
            ),
          )
        ],
      )),
    );
  }
}
