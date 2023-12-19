import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import '../../../utilis/app_ui_constants.dart';
import '../../themes/app_colors.dart';
import '../../themes/app_text_style.dart';
import 'add_designation_widget.dart';

class DesignationScreen extends StatelessWidget {
  const DesignationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Designation',
            style: AppTextStyle.whiteF15FW500TextStyle),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AppUiConstants.baseBottomSheet(context, const AddDesignationWidget());
        },
        backgroundColor: Colors.orange,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                      Text('Lists of Designation',
                          style: AppTextStyle.whiteF15FW500TextStyle),
                      Icon(
                        Icons.receipt_long_outlined,
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
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Timeline.tileBuilder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              theme: TimelineThemeData(
                  indicatorTheme: const IndicatorThemeData(
                    color: AppColors.blueColor,
                    size: 18.0,
                  ),
                  connectorTheme: const ConnectorThemeData(color: Colors.grey)),
              builder: TimelineTileBuilder.fromStyle(
                contentsAlign: ContentsAlign.basic,
                nodePositionBuilder: (context, index) => 0.05,
                contentsBuilder: (context, index) => Container(
                  padding: const EdgeInsets.all(12.0),
                  margin: const EdgeInsets.all(12.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: const [
                        BoxShadow(color: Colors.grey, blurRadius: 0.5)
                      ]),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mobile Deveploer'),
                    ],
                  ),
                ),
                itemCount: 10,
              ),
            ),
          )
        ],
      )),
    );
  }
}
