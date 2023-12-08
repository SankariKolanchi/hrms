import 'package:flutter/material.dart';
import 'package:hrms/views/screens/drawer_employees/attendences_list_screen.dart';


import '../../themes/app_text_style.dart';
import '../../widgets/common_widget.dart/app_button_widget.dart';
import '../../widgets/common_widget.dart/app_textfield.dart';
import '../../widgets/common_widget.dart/app_topbar_widget.dart';

import '../home_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const AppTopBarWidget(title: "FORGOT PASSWORD"),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Column(children: [
            const SizedBox(height: 35),
            const AppTextFieldWidget(
              prefixIcon: Icons.person,
              hintText: "UserName or Email",
              textStyle: AppTextStyle.blackF14FW500TextStyle,
            ),
            const SizedBox(
              height: 30,
            ),
            AppButtonWidget(
              onTap: () {},
              title: "RESET PASSWORD",
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AttendenceListScreen()));
                },
                child: const Text(
                  "Back to login",
                  style: AppTextStyle.orangeF11FW500TextStyle,
                ))
          ]),
        ),
      ]),
    );
  }
}
