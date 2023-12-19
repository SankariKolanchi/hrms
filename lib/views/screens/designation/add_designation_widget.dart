import 'package:flutter/material.dart';

import '../../themes/app_text_style.dart';
import '../../widgets/app_button_widget.dart';
import '../../widgets/app_textfield.dart';

class AddDesignationWidget extends StatelessWidget {
  const AddDesignationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppTextFieldWidget(
              hintText: "Designation Name",
              textStyle: AppTextStyle.blackF14FW500TextStyle),
          const AppTextFieldWidget(
              hintText: "Select Designation",
              textStyle: AppTextStyle.blackF14FW500TextStyle),
          const SizedBox(height: 15),
          AppButtonWidget(onTap: () {}, title: "ADD DESIGNATIONS"),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
