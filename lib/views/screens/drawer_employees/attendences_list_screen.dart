import 'package:flutter/material.dart';

import '../../widgets/common_widget.dart/custom_appbar.dart';
import '../../widgets/side_navigation_widget.dart/employee_card_widget.dart';
import 'holiday_list_screen.dart';

class AttendenceListScreen extends StatelessWidget {
  const AttendenceListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double topBarHeight = 100.0;
 final cardWidth = (MediaQuery.of(context).size.width - 90) / 2;
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.indigo,
            leading: InkWell(
              onTap: () {},
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 19,
              ),
            ),
            title: const Text(
              'Attendance',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: SingleChildScrollView(
            child: SizedBox(
              height: height,
              child: Stack(
                children: [
                  Container(
                    color: Colors.indigo,
                    width: double.infinity,
                    height: topBarHeight,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HolidayListScreen(),
                          ),
                        );
                      },
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            CustomAppBarWidget(
                              height: height * (30 / 100),
                              showTitle: false,
                              showImage: false,
                            ),
                            Container(
                              height: 30,
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
                    ),
                  ),
                 CustomCardWithIconWidget(
                    icon: Icons.person,
                    backgroundColor: Colors.grey,
                    text: "Team leader",
                    text2: "John",
                    position: Offset(30 + cardWidth - 170, topBarHeight +170),
                    width: cardWidth,
                    height: 180,
                      showIcons: false,
                  ),
               
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
