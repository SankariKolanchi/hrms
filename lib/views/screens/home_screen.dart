import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/custom_card_widget.dart';
import '../widgets/drawer_widget.dart';
import 'profile_screen.dart';
import 'settings_scree.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    final height = MediaQuery.of(context).size.height;
    final topBarHeight = height * (30 / 100);

    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
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
                                // Show the confirmation dialog
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
          toolbarHeight: 150,
        ),
        drawer: const DrawerWidget(),
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
