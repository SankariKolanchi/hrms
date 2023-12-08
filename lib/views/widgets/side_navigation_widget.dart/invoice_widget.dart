import 'package:flutter/material.dart';

import '../../themes/app_text_style.dart';
import '../common_widget.dart/app_button_widget.dart';
import '../common_widget.dart/app_textfield.dart';

class InvoiceSettingsWidget extends StatelessWidget {
  const InvoiceSettingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(18.0),
          margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(color: Colors.grey, blurRadius: 5, spreadRadius: 1),
            ],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Invoice settings'),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    builder: (BuildContext context) {
                      return Builder(
                        builder: (BuildContext context) {
                          return SizedBox(
                            height: MediaQuery.of(context).size.height * 0.6,
                            child: Container(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const AppTextFieldWidget(
                                    hintText: "Invoice logo",
                                    textStyle: AppTextStyle.blackF14FW500TextStyle,
                                  ),
                                  const SizedBox(height: 16.0),
                                  const AppTextFieldWidget(
                                    hintText: "Inv",
                                    textStyle: AppTextStyle.blackF14FW500TextStyle,
                                  ),
                                  const SizedBox(height: 16.0),
                                  const AppTextFieldWidget(
                                    hintText: "No file chosen",
                                    textStyle: AppTextStyle.blackF14FW500TextStyle,
                                  ),
                                  const SizedBox(height: 16.0),
                                  const SizedBox(height: 16.0),
                                  AppButtonWidget(
                                    onTap: () {},
                                    title: "Save",
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  );
                },
                child: const Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: Colors.orange,
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 3), // Add a SizedBox with a height of 3 between items
      ],
    );
  }
}