import 'package:flutter/material.dart';
import 'package:hrms/views/themes/app_text_style.dart';
import '../themes/app_colors.dart';
import 'profile_screen.dart';
import 'settings_scree.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final topBarHeight = height * (30 / 100);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          leading: Builder(
            builder: (BuildContext context) {
              return InkWell(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              );
            },
          ),
          actions: [
            InkWell(
              onTap: () {
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
                                    builder: (context) =>
                                        const MyProfileScreen(),
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
                                    builder: (context) =>
                                        const SettingsScreen(),
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
                                Navigator.pop(context);
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
        ),
        drawer: const DrawerScreen(),
        body: SizedBox(
          height: height,
          child: Stack(
            children: [
              Container(
                color: Colors.indigo,
                width: double.infinity,
                height: topBarHeight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppCustomAppbar(
                      height: height * (20 / 100),
                    ),
                    Container(
                      height: 20,
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
                child: const CustomCardWidget(
                  image: "assets/images/project.png",
                  text: "Projects",
                  text2: "140",
                ),
              ),
              Positioned(
                top: topBarHeight - 80,
                right: 30,
                width: 150,
                height: 200,
                child: const CustomCardWidget(
                  image: "assets/images/clientman.png",
                  text2: "10",
                  text: "Clients",
                ),
              ),
              Positioned(
                top: topBarHeight + 140,
                left: 30,
                width: 150,
                height: 200,
                child: const CustomCardWidget(
                  image: "assets/images/emp.jpg",
                  text: "Employees",
                  text2: "30",
                ),
              ),
              Positioned(
                top: topBarHeight + 260,
                right: 30,
                width: 150,
                height: 200,
                child: const CustomCardWidget(
                  image: "assets/images/invoice.png",
                  text2: "40",
                  text: "Invoices",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppCustomAppbar extends StatelessWidget {
  const AppCustomAppbar({super.key, this.height});
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.indigo,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {},
            child: Image.asset(
              "assets/images/risolutor.jpg",
              width: 50,
              height: 50,
            ),
          ),
          const Text(
            "New HRMS",
            style: AppTextStyle.whiteF22FW500TextStyle,
          )
        ],
      ),
    );
  }
}

class CustomCardWidget extends StatelessWidget {
  final String image;
  final String text;
  final String text2;

  const CustomCardWidget({
    Key? key,
    required this.image,
    required this.text,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10,
            offset: Offset(0, 8),
            spreadRadius: 2.0,
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 60,
            height: 60,
            alignment: Alignment.center,
          ),
          const SizedBox(height: 15),
          Text(text2, style: AppTextStyle.blackF25FW500TextStyle),
          Text(text, style: AppTextStyle.blackF18FW400TextStyle)
        ],
      ),
    );
  }
}

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
            color: AppColors.blueColor,
            child: ListView(padding: EdgeInsets.zero, children: [
              ListTile(
                title: const Text('Dashboard',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
                onTap: () {},
              ),
              ExpansionTile(
                title: const Text('Employees',
                    style: TextStyle(color: Colors.white)),
                leading: const Icon(Icons.arrow_right, color: Colors.white),
                children: [
                  ListTile(
                    title: const Text('All Employees',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Holidays',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Attendence',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Attendence List',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Attendence Details',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Leave Requests',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Departments',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Designations',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {},
                  ),
                ],
              ),
              ListTile(
                title: const Text('Projects',
                    style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ListTile(
                title:
                    const Text('Task', style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ListTile(
                title:
                    const Text('Events', style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Leave List',
                    style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Clients',
                    style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ListTile(
                title:
                    const Text('Email', style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ListTile(
                title:
                    const Text('Chat', style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ExpansionTile(
                title:
                    const Text('Calls', style: TextStyle(color: Colors.white)),
                leading: const Icon(Icons.arrow_right, color: Colors.white),
                children: [
                  ListTile(
                    title: const Text('Voice call',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Video Call',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Incoming  call Page',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {},
                  ),
                ],
              ),
              ExpansionTile(
                  title: const Text('Accounts',
                      style: TextStyle(color: Colors.white)),
                  leading: const Icon(Icons.arrow_right, color: Colors.white),
                  children: [
                    ListTile(
                      title: const Text('Estimation',
                          style: TextStyle(color: Colors.white)),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Invoices',
                          style: TextStyle(color: Colors.white)),
                      onTap: () {},
                    ),
                  ]),
              ExpansionTile(
                  title: const Text('PayRoll',
                      style: TextStyle(color: Colors.white)),
                  leading: const Icon(Icons.arrow_right, color: Colors.white),
                  children: [
                    ListTile(
                      title: const Text('Employee Salary',
                          style: TextStyle(color: Colors.white)),
                      onTap: () {},
                    ),
                  ]),
              ListTile(
                title: const Text('Attendence',
                    style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
            ])));
  }
}
