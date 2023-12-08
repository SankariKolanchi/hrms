import 'package:flutter/material.dart';

import '../widgets/holiday_widgets.dart';

class HolidayListScreen extends StatelessWidget {
  const HolidayListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double topBarHeight = 100.0;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
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
          'Holiday List',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.indigo,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Go to calendar',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              )),
                          Icon(
                            Icons.calendar_view_day_rounded,
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
            ),
            Container(
              color: Colors.indigo,
              height: 60,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 30,
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
             const SizedBox(height: 10),
            const HolidayWidget(),
             const HolidayWidget(),
              const HolidayWidget(),
               const HolidayWidget(),
            
          ],
        ),
      ),
      floatingActionButton: Stack(
        children: [
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
    );
  }
}