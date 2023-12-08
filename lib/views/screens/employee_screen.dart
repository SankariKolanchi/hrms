import 'package:flutter/material.dart';

import '../widgets/card_widget.dart';
import '../widgets/custom_appbar.dart';
import 'holiday_list_screen.dart';

class EmployeeScreen extends StatelessWidget {
  const EmployeeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final topBarHeight = height * (25 / 100);
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
              'Employee',
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomAppBarWidget(
                            height: height * (10 / 100),
                            showTitle: false,
                            showImage: false,
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
                  ),
                       CustomCardWithIconWidget(
                    icon: Icons.person,
                    backgroundColor: Colors.grey,
                    text: "Team leader",
                    text2: "John",
                    position: Offset(30 + cardWidth - 170, topBarHeight - 130),
                    width: cardWidth,
                    height: 180,
                  ),
                  CustomCardWithIconWidget(
                    icon: Icons.person,
                    backgroundColor: Colors.grey,
                    text2: "Web ",
                    text: "Mike Literous",
                    position: Offset(30 + cardWidth + 30, topBarHeight - 130),
                    width: cardWidth,
                    height: 180,
                  ),
                  CustomCardWithIconWidget(
                    icon: Icons.person,
                    backgroundColor: Colors.grey,
                    text: "Team leader",
                    text2: "John",
                    position: Offset(30, topBarHeight + 140),
                    width: cardWidth,
                    height: 180,
                  ),
                  CustomCardWithIconWidget(
                    icon: Icons.person,
                    backgroundColor: Colors.grey,
                    text2: "Web ",
                    text: "Mike Literous",
                    position: Offset(30 + cardWidth + 30, topBarHeight + 140),
                    width: cardWidth,
                    height: 180,
                  ),
                  CustomCardWithIconWidget(
                    icon: Icons.person,
                    backgroundColor: Colors.grey,
                    text: "Team leader",
                    text2: "John",
                    position: Offset(30, topBarHeight + 400),
                    width: cardWidth,
                    height: 180,
                  ),
                  CustomCardWithIconWidget(
                    icon: Icons.person,
                    backgroundColor: Colors.grey,
                    text2: "Web ",
                    text: "Mike Literous",
                    position: Offset(30 + cardWidth + 30, topBarHeight + 400),
                    width: cardWidth,
                    height: 180,
                  ),
                Positioned(
            bottom: 16,
            right: 16,
            child: FloatingActionButton(
              onPressed: () {
                print('Bottom-right FloatingActionButton pressed!');
              },
              backgroundColor: Colors.orange,
              child: const Icon(Icons.add, color: Colors.white),
            ),
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