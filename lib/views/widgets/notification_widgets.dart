import 'package:flutter/material.dart';

import '../themes/app_text_style.dart';
import 'app_button_widget.dart';
import 'app_textfield.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(15),
      shrinkWrap: true,
      itemCount: 1,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (_, i) {
        return const NotificationItem();
      },
    );
  }
}

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

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
          const Text('Notification'),
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
                                hintText: "Employee",
                                textStyle: AppTextStyle.blackF14FW500TextStyle,
                              ),
                              const SizedBox(height: 16.0),
                              const AppTextFieldWidget(
                                hintText: "Holiday",
                                textStyle: AppTextStyle.blackF14FW500TextStyle,
                              ),
                              const SizedBox(height: 16.0),
                              const AppTextFieldWidget(
                                hintText: "Leave request",
                                textStyle: AppTextStyle.blackF14FW500TextStyle,
                              ),
                              const SizedBox(height: 16.0),
                              const AppTextFieldWidget(
                                hintText: "Events",
                                textStyle: AppTextStyle.blackF14FW500TextStyle,
                              ),
                              const SizedBox(height: 16.0),
                              const AppTextFieldWidget(
                                hintText: "chats",
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
    );
  }
}
