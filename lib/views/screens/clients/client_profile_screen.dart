import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:timelines/timelines.dart';

import '../../themes/app_colors.dart';
import '../../themes/app_text_style.dart';
import '../../widgets/profile_image_widget.dart';
import '../invoices/invoice_screen.dart';
import '../projects/project_details_screen.dart';
import '../projects/projects_screen.dart';

class ClientProfileScreen extends StatelessWidget {
  const ClientProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Client Profile',
            style: AppTextStyle.whiteF15FW500TextStyle),
      ),
      body: DefaultTabController(
          length: 4,
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
                            icon: Icon(Icons.receipt_sharp),
                          ),
                          Tab(
                            icon: Icon(Icons.calculate),
                          ),
                          Tab(
                            icon: Icon(Icons.receipt_long),
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
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                          child: Text('Personal Info'),
                        ),
                        ListView.separated(
                            itemCount: 10,
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            separatorBuilder: (_, i) {
                              return const Divider();
                            },
                            itemBuilder: (_, i) {
                              return const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Client ID'),
                                    Text('10'),
                                  ],
                                ),
                              );
                            }),
                        const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                          child: Text('Additional Info'),
                        ),
                        ListView.separated(
                            itemCount: 10,
                            padding: EdgeInsets.zero,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (_, i) {
                              return const Divider();
                            },
                            itemBuilder: (_, i) {
                              return const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Client ID'),
                                    Text('10'),
                                  ],
                                ),
                              );
                            }),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                        child: Text('Invoices'),
                      ),
                      Expanded(
                          child: Timeline.tileBuilder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
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
                          contentsBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InvoiceItemWidget(onTap: () {}),
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
                            EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                        child: Text('Estimates'),
                      ),
                      Expanded(
                          child: Timeline.tileBuilder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
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
                          contentsBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InvoiceItemWidget(onTap: () {}),
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
                            EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                        child: Text('Projects'),
                      ),
                      Expanded(
                          child: Timeline.tileBuilder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
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
                          contentsBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ProjectItemWidget(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                          builder: (_) =>
                                              const ProjectDetailScreen()));
                                },
                              )),
                          itemCount: 10,
                        ),
                      )),
                      const SizedBox(height: 5)
                    ],
                  ),
                ]),
              ))
            ],
          )),
    );
  }
}
