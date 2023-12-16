import 'package:flutter/material.dart';

import '../../themes/app_colors.dart';
import '../../widgets/common_widget.dart/leave_tab.dart';
import '../../widgets/profile_image_widget.dart';

class LeaveRequest extends StatelessWidget {
  const LeaveRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Employee Profile',
          style: TextStyle(color: Colors.white),
        ),
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
                            icon: Icon(Icons.pending),
                          ),
                          Tab(
                            icon: Icon(Icons.approval),
                          ),
                          Tab(
                            icon: Icon(Icons.remove),
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
                              EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                          child: Text('Education Info'),
                        ),
                        Expanded(
                          child: ListView.separated(
                            itemCount: 10,
                            separatorBuilder: (_, i) {
                              return const Divider();
                            },
                            itemBuilder: (_, i) {
                              return const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('2003-2007'),
                                    Text(
                                        'International College of Arts & Science (UG)'),
                                    Text('Bsc Computer Science'),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    LeaveTab(),
                    LeaveTab(),
                  ]),
                ),
              ),
            ],
          )),
    );
  }
}
