import 'package:flutter/material.dart';

import '../../themes/app_text_style.dart';
import '../../widgets/app_button_widget.dart';
import '../../widgets/app_textfield.dart';

class AddHolidayWidget extends StatelessWidget {
  const AddHolidayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppTextFieldWidget(
              hintText: "Holiday Name",
              textStyle: AppTextStyle.blackF14FW500TextStyle),
          const AppTextFieldWidget(
              hintText: "Description",
              textStyle: AppTextStyle.blackF14FW500TextStyle),
          const SizedBox(height: 15),
          AppButtonWidget(onTap: () {}, title: "ADD ITEM"),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
