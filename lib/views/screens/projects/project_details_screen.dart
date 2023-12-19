import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:timelines/timelines.dart';

import '../../../utilis/app_ui_constants.dart';
import '../../themes/app_colors.dart';
import 'add_task_widget.dart';

class ProjectDetailScreen extends StatelessWidget {
  const ProjectDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Projects',
          style: TextStyle(color: Colors.white),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AppUiConstants.baseBottomSheet(context, const AddTaskWidget());
        },
        backgroundColor: Colors.orange,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                      Text('Office Management',
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
                          icon: Icon(Icons.receipt_sharp),
                        ),
                        Tab(
                          icon: Icon(Icons.calculate),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: TabBarView(children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Text('Overviews'),
                      ),
                      TimelineTile(
                        nodePosition: 0,
                        node: const TimelineNode(
                          indicatorPosition: 0.05,
                          indicator: DotIndicator(
                            color: AppColors.orangeColor,
                          ),
                          startConnector: SolidLineConnector(
                            color: AppColors.lightGreyColor,
                          ),
                          endConnector: SolidLineConnector(
                            color: AppColors.lightGreyColor,
                          ),
                        ),
                        contents: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Descriptions'),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 15),
                                  child: Text(
                                      '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. When an unknown printer took a galley of type and scrambled it...<br></p>'),
                                )
                              ]),
                        ),
                      ),
                      TimelineTile(
                        nodePosition: 0,
                        node: const TimelineNode(
                          indicatorPosition: 0.05,
                          indicator: DotIndicator(
                            color: AppColors.orangeColor,
                          ),
                          startConnector: SolidLineConnector(
                            color: AppColors.lightGreyColor,
                          ),
                          endConnector: SolidLineConnector(
                            color: AppColors.lightGreyColor,
                          ),
                        ),
                        contents: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('TimeLine'),
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.calendar_month),
                                          Text('12 Jun 2023'),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.calendar_month),
                                          Text('12 Jun 2023'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Slider(
                                  max: 100,
                                  value: 50,
                                  label: '50',
                                  activeColor: Colors.blue,
                                  inactiveColor: Colors.grey,
                                  onChanged: (double value) {},
                                )
                              ]),
                        ),
                      ),
                      TimelineTile(
                        nodePosition: 0,
                        node: const TimelineNode(
                          indicatorPosition: 0.05,
                          indicator: DotIndicator(
                            color: AppColors.orangeColor,
                          ),
                          startConnector: SolidLineConnector(
                            color: AppColors.lightGreyColor,
                          ),
                          endConnector: SolidLineConnector(
                            color: AppColors.lightGreyColor,
                          ),
                        ),
                        contents: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Project Owner'),
                                Container(
                                    decoration: const BoxDecoration(
                                        color: Colors.grey,
                                        shape: BoxShape.circle),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 12),
                                    child: const Icon(Icons.person, size: 25))
                              ]),
                        ),
                      ),
                      TimelineTile(
                        nodePosition: 0,
                        node: const TimelineNode(
                          indicatorPosition: 0.2,
                          indicator: DotIndicator(
                            color: AppColors.orangeColor,
                          ),
                          startConnector: SolidLineConnector(
                            color: AppColors.lightGreyColor,
                          ),
                          endConnector: SolidLineConnector(
                            color: AppColors.lightGreyColor,
                          ),
                        ),
                        contents: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 15),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Team'),
                                Row(
                                  children: [
                                    Container(
                                        decoration: const BoxDecoration(
                                            color: Colors.grey,
                                            shape: BoxShape.circle),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 15, horizontal: 12),
                                        child:
                                            const Icon(Icons.person, size: 25)),
                                    const SizedBox(width: 12),
                                    Container(
                                        decoration: const BoxDecoration(
                                            color: Colors.grey,
                                            shape: BoxShape.circle),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 15, horizontal: 12),
                                        child:
                                            const Icon(Icons.person, size: 25)),
                                    const SizedBox(width: 12),
                                    Container(
                                        decoration: const BoxDecoration(
                                            color: Colors.grey,
                                            shape: BoxShape.circle),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 15, horizontal: 12),
                                        child:
                                            const Icon(Icons.person, size: 25)),
                                  ],
                                )
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Text('Tasks'),
                      ),
                      TimelineTile(
                        nodePosition: 0,
                        node: const TimelineNode(
                          indicatorPosition: 0.05,
                          indicator: DotIndicator(
                            color: AppColors.orangeColor,
                          ),
                          startConnector: SolidLineConnector(
                            color: AppColors.lightGreyColor,
                          ),
                          endConnector: SolidLineConnector(
                            color: AppColors.lightGreyColor,
                          ),
                        ),
                        contents: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Reports'),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.rectangle,
                                              size: 15, color: Colors.orange),
                                          SizedBox(width: 4),
                                          Text('2 open tasks,'),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.rectangle,
                                              size: 15, color: Colors.green),
                                          SizedBox(width: 4),
                                          Text('2 completed tasks,'),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ]),
                        ),
                      ),
                      TimelineTile(
                        nodePosition: 0,
                        node: const TimelineNode(
                          indicatorPosition: 0.05,
                          indicator: DotIndicator(
                            color: AppColors.blueColor,
                          ),
                          startConnector: SolidLineConnector(
                            color: AppColors.lightGreyColor,
                          ),
                          endConnector: SolidLineConnector(
                            color: AppColors.lightGreyColor,
                          ),
                        ),
                        contents: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Summary'),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.check_circle_outline),
                                          SizedBox(width: 7),
                                          Text('Patient appointment booking'),
                                        ],
                                      ),
                                      SizedBox(height: 15),
                                      Row(
                                        children: [
                                          Icon(Icons.check_circle_outline),
                                          SizedBox(width: 7),
                                          Text('Patient appointment booking'),
                                        ],
                                      ),
                                      SizedBox(height: 15),
                                      Row(
                                        children: [
                                          Icon(Icons.check_circle_outline),
                                          SizedBox(width: 7),
                                          Text('Patient appointment booking'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(height: 35),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: SizedBox(
                        child: SfDateRangePicker(
                          view: DateRangePickerView.month,
                          selectionMode: DateRangePickerSelectionMode.range,
                        ),
                      ),
                    ),
                    const SizedBox(height: 35)
                  ],
                )
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
