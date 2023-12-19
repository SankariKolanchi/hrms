import 'package:flutter/material.dart';

import '../../themes/app_text_style.dart';
import '../../widgets/app_button_widget.dart';
import '../../widgets/app_textfield.dart';

class AddProjectWidget extends StatelessWidget {
  const AddProjectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppTextFieldWidget(
          hintText: "Project code",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "Project Title",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "Client",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "Assign Lead",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "Assign To",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "Start Date",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "Fixed Rate",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "Hourly Rate",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "Estimated Hours",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "Description",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: AppButtonWidget(
            onTap: () {},
            title: "Create Project",
            color: Colors.orange,
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
