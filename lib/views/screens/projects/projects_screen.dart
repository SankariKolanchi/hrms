import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import '../../../utilis/app_ui_constants.dart';
import '../../themes/app_colors.dart';
import 'add_project_widget.dart';
import 'project_details_screen.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

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
          AppUiConstants.baseBottomSheet(context, const AddProjectWidget());
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
                      Text('Projects List',
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
                contentsBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ProjectItemWidget(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (_) => const ProjectDetailScreen()));
                    },
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

class ProjectItemWidget extends StatelessWidget {
  const ProjectItemWidget({super.key, required this.onTap});
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey, spreadRadius: 0.4, blurRadius: 1.5)
                ]),
            child: Stack(
              children: [
                Positioned(
                    top: 0,
                    right: 150,
                    bottom: 0,
                    left: 0,
                    child: Container(
                        decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.35),
                      borderRadius: BorderRadius.circular(35),
                    ))),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Office Management'),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.calendar_month),
                              Text('12 Jun 2018')
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.message_outlined),
                              Text('12')
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
