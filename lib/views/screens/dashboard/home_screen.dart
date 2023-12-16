import 'package:flutter/material.dart';
import 'package:hrms/views/screens/employees/attendence_screen.dart';
import 'package:hrms/views/screens/employees/holiday_screen.dart';

import '../employees/attendence_details.dart';
import '../employees/leave_request.dart';
import 'profile_screen.dart';
import 'settings_screen.dart';
import '../../themes/app_colors.dart';
import '../../widgets/common_widget.dart/custom_appbar.dart';
import '../../widgets/common_widget.dart/custom_card_widget.dart';
import '../../widgets/common_widget.dart/drawer_widget.dart';
import '../clients/clients_screen.dart';
import '../employees/employee_screen.dart';
import '../invoices/invoice_screen.dart';
import '../projects/projects_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    final height = MediaQuery.of(context).size.height;
    final topBarHeight = height * (30 / 100);

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            scaffoldKey.currentState?.openDrawer();
          },
          child: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              ///TODO
              ///Change dialog box to popupmenubutton
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2),
                          child: ListTile(
                            title: const Text('Profile '),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MyProfileScreen(),
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2),
                          child: ListTile(
                            title: const Text(' Settings'),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SettingsScreen(),
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2),
                          child: ListTile(
                            title: const Text('Logout'),
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text('Confirm Logout'),
                                    content: const Text(
                                        'Are you sure you want to log out?'),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text('Logout'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: const Padding(
              padding: EdgeInsets.all(12),
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ),
        ],
        toolbarHeight: 100,
      ),
      drawer: const DrawerScreen(),
      body: SingleChildScrollView(
        child: SizedBox(
          height: height,
          child: Stack(
            children: [
              Container(
                color: AppColors.blueColor,
                width: double.infinity,
                height: topBarHeight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomAppBarWidget(
                      height: height * (10 / 100),
                      showTitle: true,
                      showImage: true,
                    ),
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: topBarHeight - 130,
                left: 30,
                width: 150,
                height: 200,
                child: CustomCardWidget(
                  image: "assets/images/project.png",
                  text: "Projects",
                  text2: "140",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const AttendenceDetailsList()));
                  },
                ),
              ),
              Positioned(
                top: topBarHeight - 80,
                right: 30,
                width: 150,
                height: 200,
                child: CustomCardWidget(
                  image: "assets/images/clientman.png",
                  text2: "10",
                  text: "Clients",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const ClientsScreen()));
                  },
                ),
              ),
              Positioned(
                top: topBarHeight + 150,
                left: 30,
                width: 150,
                height: 200,
                child: CustomCardWidget(
                  image: "assets/images/emp.jpg",
                  text: "Employees",
                  text2: "30",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const LeaveRequest()));
                  },
                ),
              ),
              Positioned(
                top: topBarHeight + 200,
                right: 30,
                width: 150,
                height: 200,
                child: CustomCardWidget(
                  image: "assets/images/invoice.png",
                  text2: "40",
                  text: "Invoices",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const InvocieScreen()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
