import 'package:flutter/material.dart';

import '../../themes/app_text_style.dart';
import '../../widgets/common_widget.dart/app_button_widget.dart';
import '../../widgets/common_widget.dart/app_textfield.dart';

class HolidayAddWidget extends StatelessWidget {
  const HolidayAddWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppTextFieldWidget(
            hintText: "Holiday Name",
            textStyle: AppTextStyle.blackF14FW500TextStyle,
          ),
          const AppTextFieldWidget(
            hintText: "Description",
            textStyle: AppTextStyle.blackF14FW500TextStyle,
          ),
          const AppTextFieldWidget(
            hintText: "HolidayDate",
            textStyle: AppTextStyle.blackF14FW500TextStyle,
          ),
          SizedBox(height: 15),
          AppButtonWidget(
            onTap: () {},
            title: "ADD HOLIDAY",
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
