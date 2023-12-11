import 'package:flutter/material.dart';

import '../../themes/app_text_style.dart';
import '../../widgets/common_widget.dart/app_button_widget.dart';
import '../../widgets/common_widget.dart/app_textfield.dart';

class InvoiceAddWidget extends StatelessWidget {
  const InvoiceAddWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppTextFieldWidget(
            hintText: "Invoice code",
            textStyle: AppTextStyle.blackF14FW500TextStyle,
          ),
          const AppTextFieldWidget(
            hintText: "Client",
            textStyle: AppTextStyle.blackF14FW500TextStyle,
          ),
          const AppTextFieldWidget(
            hintText: "DueDate",
            textStyle: AppTextStyle.blackF14FW500TextStyle,
          ),
          const AppTextFieldWidget(
            hintText: "Tax",
            textStyle: AppTextStyle.blackF14FW500TextStyle,
          ),
          const AppTextFieldWidget(
            hintText: "Tax2",
            textStyle: AppTextStyle.blackF14FW500TextStyle,
          ),
          const AppTextFieldWidget(
            hintText: "Discount",
            textStyle: AppTextStyle.blackF14FW500TextStyle,
          ),
          const AppTextFieldWidget(
            hintText: "Extra fee",
            textStyle: AppTextStyle.blackF14FW500TextStyle,
          ),
          const AppTextFieldWidget(
            hintText: "Notes",
            textStyle: AppTextStyle.blackF14FW500TextStyle,
          ),
          const AppTextFieldWidget(
            hintText: "Allow Stripe",
            textStyle: AppTextStyle.blackF14FW500TextStyle,
          ),
          const AppTextFieldWidget(
            hintText: "Notes",
            textStyle: AppTextStyle.blackF14FW500TextStyle,
          ),
          const AppTextFieldWidget(
            hintText: "Description ",
            textStyle: AppTextStyle.blackF14FW500TextStyle,
          ),
          const SizedBox(height: 15),
          AppButtonWidget(
            onTap: () {},
            title: "Create Invoice",
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
