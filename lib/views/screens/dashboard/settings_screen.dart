import 'package:flutter/material.dart';

import '../../themes/app_colors.dart';
import '../../themes/app_text_style.dart';

///Important
///TODO
///textStyle need to change. it will come from appTextStyle
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings', style: AppTextStyle.whiteF22FW500TextStyle),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: AppColors.blueColor,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('List of Settings',
                            style: AppTextStyle.whiteF22FW500TextStyle),
                        Icon(
                          Icons.settings,
                          size: 30,
                          color: Colors.white,
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            Container(
              color: AppColors.blueColor,
              height: 60,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 30,
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                children: [
                  SettingItemWidget(title: 'Change Password', onPressed: () {}),
                  SettingItemWidget(
                      title: 'Company Settings', onPressed: () {}),
                  SettingItemWidget(title: 'Localization', onPressed: () {}),
                  SettingItemWidget(title: 'Email Settings', onPressed: () {}),
                  SettingItemWidget(
                      title: 'Invoice Settings', onPressed: () {}),
                  SettingItemWidget(title: 'Salary Settings', onPressed: () {}),
                  SettingItemWidget(title: 'Notification', onPressed: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

///TODO
///TextStyle need to come from appTextStyle.
class SettingItemWidget extends StatelessWidget {
  const SettingItemWidget(
      {super.key, required this.title, required this.onPressed});
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(),
      child: Container(
        padding: const EdgeInsets.all(18.0),
        margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(color: Colors.grey, blurRadius: 5, spreadRadius: 1)
            ],
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title),
            const Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: Colors.orange,
            )
          ],
        ),
      ),
    );
  }
}
