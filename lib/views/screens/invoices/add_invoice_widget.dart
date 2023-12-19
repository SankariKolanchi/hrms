import 'package:flutter/material.dart';

import '../../themes/app_text_style.dart';
import '../../widgets/app_button_widget.dart';
import '../../widgets/app_textfield.dart';

class AddInvoiceWidget extends StatelessWidget {
  const AddInvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppTextFieldWidget(
              hintText: "Invoice Code",
              textStyle: AppTextStyle.blackF14FW500TextStyle),
          const AppTextFieldWidget(
              hintText: "Client",
              textStyle: AppTextStyle.blackF14FW500TextStyle),
          const AppTextFieldWidget(
              hintText: "Due Date",
              textStyle: AppTextStyle.blackF14FW500TextStyle),
          const AppTextFieldWidget(
              hintText: "Tax", textStyle: AppTextStyle.blackF14FW500TextStyle),
          const AppTextFieldWidget(
              hintText: "Tax2", textStyle: AppTextStyle.blackF14FW500TextStyle),
          const AppTextFieldWidget(
              hintText: "Discount",
              textStyle: AppTextStyle.blackF14FW500TextStyle),
          const AppTextFieldWidget(
              hintText: "Extra fees",
              textStyle: AppTextStyle.blackF14FW500TextStyle),
          const AppTextFieldWidget(
              hintText: "Notes",
              textStyle: AppTextStyle.blackF14FW500TextStyle),
          const AppTextFieldWidget(
              hintText: "Allow Stripes",
              textStyle: AppTextStyle.blackF14FW500TextStyle),
          const AppTextFieldWidget(
              hintText: "Item", textStyle: AppTextStyle.blackF14FW500TextStyle),
          const AppTextFieldWidget(
              hintText: "Description",
              textStyle: AppTextStyle.blackF14FW500TextStyle),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: AppTextFieldWidget(
                    hintText: "Quantity",
                    textStyle: AppTextStyle.blackF14FW500TextStyle),
              ),
              SizedBox(width: 20),
              Expanded(
                child: AppTextFieldWidget(
                    hintText: "Unit Price",
                    textStyle: AppTextStyle.blackF14FW500TextStyle),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: AppTextFieldWidget(
                    hintText: "Tax",
                    textStyle: AppTextStyle.blackF14FW500TextStyle),
              ),
              SizedBox(width: 20),
              Expanded(
                child: AppTextFieldWidget(
                    hintText: "Tax Total Count",
                    textStyle: AppTextStyle.blackF14FW500TextStyle),
              ),
            ],
          ),
          const SizedBox(height: 15),
          AppButtonWidget(onTap: () {}, title: "ADD ITEM"),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
