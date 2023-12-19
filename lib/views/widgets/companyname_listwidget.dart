import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../themes/app_text_style.dart';
import 'app_button_widget.dart';
import 'app_textfield.dart';

class CompanyNameSettingsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
        padding: const EdgeInsets.all(15),
        shrinkWrap: true,
        itemCount: 1,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (_, i) {
          return CompanyNameSettingsItem();
        },
      ),
    );
  }
}

class CompanyNameSettingsItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          const Text('Company Name'),
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
                        height: MediaQuery.of(context).size.height * 70,
                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const AppTextFieldWidget(
                                hintText: "Focus Technologies",
                                textStyle: AppTextStyle.blackF14FW500TextStyle,
                              ),
                              const SizedBox(height: 16.0),
                              const AppTextFieldWidget(
                                hintText: "Daniel Porter",
                                textStyle: AppTextStyle.blackF14FW500TextStyle,
                              ),
                              const SizedBox(height: 16.0),
                              const AppTextFieldWidget(
                                hintText:
                                    "3864 Quiet Valley Lane, Sherman Oaks, CA, 91403",
                                textStyle: AppTextStyle.blackF14FW500TextStyle,
                              ),
                              const SizedBox(height: 16.0),
                              const AppTextFieldWidget(
                                hintText: "USA",
                                textStyle: AppTextStyle.blackF14FW500TextStyle,
                              ),
                              const SizedBox(height: 16.0),
                              const AppTextFieldWidget(
                                hintText: "California",
                                textStyle: AppTextStyle.blackF14FW500TextStyle,
                              ),
                              const SizedBox(height: 16.0),
                              const AppTextFieldWidget(
                                hintText: "Sherman Ooaks",
                                textStyle: AppTextStyle.blackF14FW500TextStyle,
                              ),
                              const SizedBox(height: 16.0),
                              const AppTextFieldWidget(
                                hintText: "91403",
                                textStyle: AppTextStyle.blackF14FW500TextStyle,
                              ),
                              const SizedBox(height: 16.0),
                              const AppTextFieldWidget(
                                hintText: "danielporter@example.com",
                                textStyle: AppTextStyle.blackF14FW500TextStyle,
                              ),
                              const SizedBox(height: 16.0),
                              const AppTextFieldWidget(
                                hintText: "818-635-5579",
                                textStyle: AppTextStyle.blackF14FW500TextStyle,
                              ),
                              const SizedBox(height: 16.0),
                              const AppTextFieldWidget(
                                hintText: "818-635-5579",
                                textStyle: AppTextStyle.blackF14FW500TextStyle,
                              ),
                              const SizedBox(height: 16.0),
                              const AppTextFieldWidget(
                                hintText: "https://www.example.com",
                                textStyle: AppTextStyle.blackF14FW500TextStyle,
                              ),
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
              color: AppColors.orangeColor,
            ),
          )
        ],
      ),
    );
  }
}
