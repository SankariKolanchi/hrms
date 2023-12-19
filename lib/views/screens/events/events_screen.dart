import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../themes/app_colors.dart';
import '../../themes/app_text_style.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Events', style: AppTextStyle.whiteF15FW500TextStyle),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
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
                      Text('Events',
                          style: AppTextStyle.whiteF15FW500TextStyle),
                      Icon(
                        Icons.calendar_month,
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
          Column(
            children: [
              const SizedBox(height: 35),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                margin: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange),
                    borderRadius: BorderRadius.circular(12)),
                child: SfDateRangePicker(
                  view: DateRangePickerView.month,
                  selectionMode: DateRangePickerSelectionMode.single,
                ),
              ),
              const SizedBox(height: 35)
            ],
          )
        ]),
      ),
    );
  }
}
