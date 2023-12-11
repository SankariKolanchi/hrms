import 'package:flutter/material.dart';

import '../../themes/app_colors.dart';

import '../../widgets/common_widget.dart/profile_image_widget.dart';
import '../invoices/invoice_screen.dart';
import '../projects/projects_screen.dart';

class ClientProfileScreen extends StatelessWidget {
  const ClientProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Client Profile',
          style: TextStyle(color: Colors.white),
        ),
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
                          child: ListView.builder(
                              itemCount: 10,
                              itemBuilder: (_, i) {
                                return const InvoiceItemWidget();
                              })),
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
                          child: ListView.builder(
                              itemCount: 10,
                              itemBuilder: (_, i) {
                                return const InvoiceItemWidget();
                              })),
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
                          child: ListView.builder(
                              itemCount: 10,
                              itemBuilder: (_, i) {
                                return const ProjectItemWidget();
                              })),
                    ],
                  ),
                ]),
              ))
            ],
          )),
    );
  }
}
