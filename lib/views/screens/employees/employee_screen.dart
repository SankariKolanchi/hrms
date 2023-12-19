import 'package:flutter/material.dart';

import '../../../utilis/app_ui_constants.dart';
import '../../themes/app_text_style.dart';
import '../../widgets/card_widget.dart';
import '../../widgets/top_widget.dart';
import '../profile_screen.dart';
import 'employee_add_widget.dart';

class EmployeeScreen extends StatelessWidget {
  const EmployeeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final topBarHeight = height * (25 / 100);
    final cardWidth = (width - 90) / 2;

    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Employee', style: AppTextStyle.whiteF15FW500TextStyle),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AppUiConstants.baseBottomSheet(context, const EmployeeAddWidget());
        },
        backgroundColor: Colors.orange,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                TopWidget(height1: topBarHeight, height2: height),
                Positioned(
                    top: 40,
                    left: 10,
                    right: 10,
                    bottom: 0,
                    child: GridView.builder(
                        physics: const BouncingScrollPhysics(),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        itemCount: 10,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 0.95,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 20),
                        itemBuilder: (context, i) {
                          return CustomCardWithIconWidget(
                            onDelete: () {},
                            onEdit: () {
                              AppUiConstants.baseBottomSheet(
                                  context, const EmployeeAddWidget());
                            },
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const MyProfileScreen()));
                            },
                            icon: Icons.person,
                            text: "Android Developer",
                            text2: "John Doe",
                            width: cardWidth,
                            height: 220,
                          );
                        })),
              ],
            ),
          ),
          const SizedBox(height: 15)
        ],
      ),
    );
  }
}
