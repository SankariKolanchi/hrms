import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import '../../themes/app_colors.dart';
import '../../widgets/profile_image_widget.dart';

class LeaveRequestScreens extends StatelessWidget {
  const LeaveRequestScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Leaves', style: TextStyle(color: Colors.white)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // AppUiConstants.baseBottomSheet(context, const EmployeeAddWidget());
        },
        backgroundColor: Colors.orange,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            ProfileImageWidget(
                title: 'John Doe',
                subTitle: 'Android Developer',
                onEdit: () {}),
            Container(
              color: AppColors.blueColor,
              height: 60,
              child: Stack(children: [
                Positioned(
                  left: 0,
                  right: 0,
                  top: 30,
                  child: Container(
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                  ),
                ),
                Positioned(
                  left: 30,
                  right: 30,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 0.5,
                            blurRadius: 0.5)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: const TabBar(
                      tabs: [
                        Tab(
                          icon: Icon(Icons.person),
                        ),
                        Tab(
                          icon: Icon(Icons.book_sharp),
                        ),
                        Tab(
                          icon: Icon(Icons.work),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: TabBarView(children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 4),
                        child: Text('Personal Info'),
                      ),
                      Expanded(
                          child: Timeline.tileBuilder(
                        shrinkWrap: true,
                        theme: TimelineThemeData(
                            indicatorTheme: const IndicatorThemeData(
                              color: AppColors.blueColor,
                              size: 18.0,
                            ),
                            connectorTheme:
                                const ConnectorThemeData(color: Colors.grey)),
                        builder: TimelineTileBuilder.fromStyle(
                          contentsAlign: ContentsAlign.basic,
                          nodePositionBuilder: (context, index) => 0.0,
                          contentsBuilder: (context, index) => const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('EmployeeId'),
                                Text('102'),
                              ],
                            ),
                          ),
                          itemCount: 10,
                        ),
                      )),
                      const SizedBox(height: 5)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10.0, horizontal: 8),
                        child: Text('Education Info'),
                      ),
                      Expanded(
                          child: Timeline.tileBuilder(
                        shrinkWrap: true,
                        theme: TimelineThemeData(
                            indicatorTheme: const IndicatorThemeData(
                              color: AppColors.blueColor,
                              size: 18.0,
                            ),
                            connectorTheme:
                                const ConnectorThemeData(color: Colors.grey)),
                        builder: TimelineTileBuilder.fromStyle(
                          contentsAlign: ContentsAlign.basic,
                          nodePositionBuilder: (context, index) => 0.0,
                          contentsBuilder: (context, index) => const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('2003-2007'),
                                Text(
                                    'International College of Arts & Science (UG)'),
                                Text('Bsc Computer Science'),
                              ],
                            ),
                          ),
                          itemCount: 10,
                        ),
                      )),
                      const SizedBox(height: 5),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 15.0, horizontal: 3),
                        child: Text('Education Info'),
                      ),
                      Expanded(
                          child: Timeline.tileBuilder(
                        shrinkWrap: true,
                        theme: TimelineThemeData(
                            indicatorTheme: const IndicatorThemeData(
                              color: AppColors.blueColor,
                              size: 18.0,
                            ),
                            connectorTheme:
                                const ConnectorThemeData(color: Colors.grey)),
                        builder: TimelineTileBuilder.fromStyle(
                          contentsAlign: ContentsAlign.basic,
                          nodePositionBuilder: (context, index) => 0.0,
                          contentsBuilder: (context, index) => const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('2003-2007'),
                                Text(
                                    'International College of Arts & Science (UG)'),
                                Text('Bsc Computer Science'),
                              ],
                            ),
                          ),
                          itemCount: 10,
                        ),
                      )),
                      const SizedBox(height: 5),
                    ],
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
