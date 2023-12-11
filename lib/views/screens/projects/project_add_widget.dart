import 'package:flutter/material.dart';

import '../../themes/app_text_style.dart';
import '../../widgets/common_widget.dart/app_button_widget.dart';
import '../../widgets/common_widget.dart/app_textfield.dart';

class ProjectAddWidget extends StatelessWidget {
  const ProjectAddWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppTextFieldWidget(
            hintText: "Project code",
            textStyle: AppTextStyle.blackF14FW500TextStyle,
          ),
          const AppTextFieldWidget(
            hintText: "Project title",
            textStyle: AppTextStyle.blackF14FW500TextStyle,
          ),
          const AppTextFieldWidget(
            hintText: "CLient",
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
            hintText: "Fixed Date",
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
            hintText: "Description ",
            textStyle: AppTextStyle.blackF14FW500TextStyle,
          ),
          const SizedBox(height: 15),
          AppButtonWidget(
            onTap: () {},
            title: "Create Project",
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
