import 'package:flutter/material.dart';

import '../../themes/app_text_style.dart';
import '../../widgets/app_button_widget.dart';
import '../../widgets/app_textfield.dart';

class AddTaskWidget extends StatelessWidget {
  const AddTaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppTextFieldWidget(
          hintText: "Task Title",
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
          hintText: "End Date",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "Estimation Hour",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "Description",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "Visible to client",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: AppButtonWidget(
            onTap: () {},
            title: "Add Task",
            color: Colors.orange,
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
