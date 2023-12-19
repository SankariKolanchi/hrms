import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import '../../themes/app_colors.dart';

class LeaveListScreen extends StatelessWidget {
  const LeaveListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Leave List',
          style: TextStyle(color: Colors.white),
        ),
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
                        Text('List of Leaves',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            )),
                        Icon(
                          Icons.calendar_month,
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
            Timeline.tileBuilder(
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
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(35)),
                  padding: const EdgeInsets.all(12.0),
                  margin: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Arun Paul',
                            style: TextStyle(fontSize: 23),
                          ),
                          const SizedBox(width: 6),
                          Container(
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.orange),
                              child: const Text(
                                'Pending',
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Plain Leave',
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                ),
                itemCount: 10,
              ),
            ),
            const SizedBox(height: 15)
          ],
        ),
      ),
    );
  }
}
