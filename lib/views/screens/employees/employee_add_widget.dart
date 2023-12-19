import 'package:flutter/material.dart';

import '../../themes/app_text_style.dart';
import '../../widgets/app_button_widget.dart';
import '../../widgets/app_textfield.dart';

class EmployeeAddWidget extends StatelessWidget {
  const EmployeeAddWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppTextFieldWidget(
            hintText: "FullName",
            textStyle: AppTextStyle.blackF14FW500TextStyle,
          ),
          const AppTextFieldWidget(
            hintText: "FullName",
            textStyle: AppTextStyle.blackF14FW500TextStyle,
          ),
          const AppTextFieldWidget(
            hintText: "Password",
            textStyle: AppTextStyle.blackF14FW500TextStyle,
          ),
          const AppTextFieldWidget(
            hintText: "Phone",
            textStyle: AppTextStyle.blackF14FW500TextStyle,
          ),
          const AppTextFieldWidget(
            hintText: "Email",
            textStyle: AppTextStyle.blackF14FW500TextStyle,
          ),
          const AppTextFieldWidget(
            hintText: "Join Date",
            textStyle: AppTextStyle.blackF14FW500TextStyle,
          ),
          const AppTextFieldWidget(
            hintText: "Department",
            textStyle: AppTextStyle.blackF14FW500TextStyle,
          ),
          const SizedBox(height: 15),
          AppButtonWidget(
            onTap: () {},
            title: "ADD EMPLOYEE",
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
