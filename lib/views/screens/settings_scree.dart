import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../themes/app_text_style.dart';
import '../widgets/app_button_widget.dart';
import '../widgets/app_textfield.dart';
import '../widgets/timeline_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.indigo,
        leading: InkWell(
          onTap: () {},
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 19,
          ),
        ),
        title: const Text(
          'Settings',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.indigo,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('List of Settings',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              )),
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
            ),
            Container(
              color: Colors.indigo,
              height: 60,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 30,
                    child: Container(
                      height: 50,
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
            const SizedBox(height: 10),
            InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>TimelineScreen()));
          },
              child: ListView.builder(
                padding: const EdgeInsets.all(15),
                shrinkWrap: true,
                itemCount: 1,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (_, i) {
                  return Container(
                    padding: const EdgeInsets.all(18.0),
                    margin:
                        const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey, blurRadius: 5, spreadRadius: 1)
                      ],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Change Password'),
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
                                      height: MediaQuery.of(context).size.height *
                                          0.6,
                                      child: Container(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            const AppTextFieldWidget(
                                              hintText: "Old password",
                                              textStyle: AppTextStyle
                                                  .blackF14FW500TextStyle,
                                            ),
                                            const SizedBox(height: 16.0),
                                            const AppTextFieldWidget(
                                              hintText: "New password",
                                              textStyle: AppTextStyle
                                                  .blackF14FW500TextStyle,
                                            ),
                                            const SizedBox(height: 16.0),
                                            const AppTextFieldWidget(
                                              hintText: "Confirm password",
                                              textStyle: AppTextStyle
                                                  .blackF14FW500TextStyle,
                                            ),
                                            const SizedBox(height: 16.0),
                                            AppButtonWidget(
                                              onTap: () {},
                                              title: "UPDATE PASSWORD",
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
                },
              ),
            ),
            const SizedBox(height: 3),
            SingleChildScrollView(
              child: ListView.builder(
                padding: const EdgeInsets.all(15),
                shrinkWrap: true,
                itemCount: 1,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (_, i) {
                  return Container(
                    padding: const EdgeInsets.all(18.0),
                    margin: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey, blurRadius: 5, spreadRadius: 1)
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
                                      height:
                                          MediaQuery.of(context).size.height *
                                              70,
                                      child: Container(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            const AppTextFieldWidget(
                                              hintText: "Focus Technologies",
                                              textStyle: AppTextStyle
                                                  .blackF14FW500TextStyle,
                                            ),
                                            const SizedBox(height: 16.0),
                                            const AppTextFieldWidget(
                                              hintText: "Daniel Porter",
                                              textStyle: AppTextStyle
                                                  .blackF14FW500TextStyle,
                                            ),
                                            const SizedBox(height: 16.0),
                                            const AppTextFieldWidget(
                                              hintText:
                                                  "3864 Quiet Valley Lane, Sherman Oaks, CA, 91403",
                                              textStyle: AppTextStyle
                                                  .blackF14FW500TextStyle,
                                            ),
                                            const SizedBox(height: 16.0),
                                            const AppTextFieldWidget(
                                              hintText: "USA",
                                              textStyle: AppTextStyle
                                                  .blackF14FW500TextStyle,
                                            ),
                                            const SizedBox(height: 16.0),
                                            const AppTextFieldWidget(
                                              hintText: "California",
                                              textStyle: AppTextStyle
                                                  .blackF14FW500TextStyle,
                                            ),
                                            const SizedBox(height: 16.0),
                                            const AppTextFieldWidget(
                                              hintText: "Sherman Ooaks",
                                              textStyle: AppTextStyle
                                                  .blackF14FW500TextStyle,
                                            ),
                                            const SizedBox(height: 16.0),
                                            const AppTextFieldWidget(
                                              hintText: "91403",
                                              textStyle: AppTextStyle
                                                  .blackF14FW500TextStyle,
                                            ),
                                            const SizedBox(height: 16.0),
                                            const AppTextFieldWidget(
                                              hintText:
                                                  "danielporter@example.com",
                                              textStyle: AppTextStyle
                                                  .blackF14FW500TextStyle,
                                            ),
                                            const SizedBox(height: 16.0),
                                            const AppTextFieldWidget(
                                              hintText: "818-635-5579",
                                              textStyle: AppTextStyle
                                                  .blackF14FW500TextStyle,
                                            ),
                                            const SizedBox(height: 16.0),
                                            const AppTextFieldWidget(
                                              hintText: "818-635-5579",
                                              textStyle: AppTextStyle
                                                  .blackF14FW500TextStyle,
                                            ),
                                            const SizedBox(height: 16.0),
                                            const AppTextFieldWidget(
                                              hintText:
                                                  "https://www.example.com",
                                              textStyle: AppTextStyle
                                                  .blackF14FW500TextStyle,
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
                },
              ),
            ),
            const SizedBox(height: 3),
            ListView.builder(
              padding: const EdgeInsets.all(15),
              shrinkWrap: true,
              itemCount: 1,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (_, i) {
                return Container(
                  padding: const EdgeInsets.all(18.0),
                  margin:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey, blurRadius: 5, spreadRadius: 1)
                    ],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Localization'),
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
                                    height: MediaQuery.of(context).size.height *
                                        0.6,
                                    child: Container(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const AppTextFieldWidget(
                                            hintText: "USA",
                                            textStyle: AppTextStyle
                                                .blackF14FW500TextStyle,
                                          ),
                                          const SizedBox(height: 16.0),
                                          const AppTextFieldWidget(
                                            hintText: "12/06/2023",
                                            textStyle: AppTextStyle
                                                .blackF14FW500TextStyle,
                                          ),
                                          const SizedBox(height: 16.0),
                                          const AppTextFieldWidget(
                                            hintText:
                                                "(UTC+5.30)Antartica palmer",
                                            textStyle: AppTextStyle
                                                .blackF14FW500TextStyle,
                                          ),
                                          const SizedBox(height: 16.0),
                                          const AppTextFieldWidget(
                                            hintText: "English",
                                            textStyle: AppTextStyle
                                                .blackF14FW500TextStyle,
                                          ),
                                          const SizedBox(height: 16.0),
                                          const AppTextFieldWidget(
                                            hintText: "USD",
                                            textStyle: AppTextStyle
                                                .blackF14FW500TextStyle,
                                          ),
                                          const SizedBox(height: 16.0),
                                          const AppTextFieldWidget(
                                            hintText: "dollar",
                                            textStyle: AppTextStyle
                                                .blackF14FW500TextStyle,
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
                          color: Colors.orange,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
            const SizedBox(height: 3),
            ListView.builder(
              padding: const EdgeInsets.all(15),
              shrinkWrap: true,
              itemCount: 1,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (_, i) {
                return Container(
                  padding: const EdgeInsets.all(18.0),
                  margin:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey, blurRadius: 5, spreadRadius: 1)
                    ],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Email Settings'),
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
                                    height: MediaQuery.of(context).size.height *
                                        0.6,
                                    child: Container(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const AppTextFieldWidget(
                                            hintText: "pHp mail",
                                            textStyle: AppTextStyle
                                                .blackF14FW500TextStyle,
                                          ),
                                          const SizedBox(height: 16.0),
                                          const AppTextFieldWidget(
                                            hintText: "SMIP",
                                            textStyle: AppTextStyle
                                                .blackF14FW500TextStyle,
                                          ),
                                          const SizedBox(height: 16.0),
                                          const AppTextFieldWidget(
                                            hintText: "Email from address",
                                            textStyle: AppTextStyle
                                                .blackF14FW500TextStyle,
                                          ),
                                          const SizedBox(height: 16.0),
                                          const AppTextFieldWidget(
                                            hintText: "Email from name",
                                            textStyle: AppTextStyle
                                                .blackF14FW500TextStyle,
                                          ),
                                          const SizedBox(height: 16.0),
                                          const AppTextFieldWidget(
                                            hintText: "USD",
                                            textStyle: AppTextStyle
                                                .blackF14FW500TextStyle,
                                          ),
                                          const SizedBox(height: 16.0),
                                          const AppTextFieldWidget(
                                            hintText: "SMIP HOST",
                                            textStyle: AppTextStyle
                                                .blackF14FW500TextStyle,
                                          ),
                                          const SizedBox(height: 16.0),
                                          const AppTextFieldWidget(
                                            hintText: "SMIP USER",
                                            textStyle: AppTextStyle
                                                .blackF14FW500TextStyle,
                                          ),
                                          const SizedBox(height: 16.0),
                                          const SizedBox(height: 16.0),
                                          const AppTextFieldWidget(
                                            hintText: "SMIP PASSWORD",
                                            textStyle: AppTextStyle
                                                .blackF14FW500TextStyle,
                                          ),
                                          const SizedBox(height: 16.0),
                                          const AppTextFieldWidget(
                                            hintText: "SMIP Security",
                                            textStyle: AppTextStyle
                                                .blackF14FW500TextStyle,
                                          ),
                                          const SizedBox(height: 16.0),
                                          const SizedBox(height: 16.0),
                                          const AppTextFieldWidget(
                                            hintText: "SMIP USER",
                                            textStyle: AppTextStyle
                                                .blackF14FW500TextStyle,
                                          ),
                                          const SizedBox(height: 16.0),
                                          const AppTextFieldWidget(
                                            hintText: "SMIP Authentication",
                                            textStyle: AppTextStyle
                                                .blackF14FW500TextStyle,
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
                          color: Colors.orange,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
            const SizedBox(height: 3),
            ListView.builder(
              padding: const EdgeInsets.all(15),
              shrinkWrap: true,
              itemCount: 1,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (_, i) {
                return Container(
                  padding: const EdgeInsets.all(18.0),
                  margin:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey, blurRadius: 5, spreadRadius: 1)
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
                                    height: MediaQuery.of(context).size.height *
                                        0.6,
                                    child: Container(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const AppTextFieldWidget(
                                            hintText: "Invoice logo",
                                            textStyle: AppTextStyle
                                                .blackF14FW500TextStyle,
                                          ),
                                          const SizedBox(height: 16.0),
                                          const AppTextFieldWidget(
                                            hintText: "Inv",
                                            textStyle: AppTextStyle
                                                .blackF14FW500TextStyle,
                                          ),
                                          const SizedBox(height: 16.0),
                                          const AppTextFieldWidget(
                                            hintText: "No file chosen",
                                            textStyle: AppTextStyle
                                                .blackF14FW500TextStyle,
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
              },
            ),
            const SizedBox(height: 3),
            ListView.builder(
              padding: const EdgeInsets.all(15),
              shrinkWrap: true,
              itemCount: 1,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (_, i) {
                return Container(
                  padding: const EdgeInsets.all(18.0),
                  margin:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey, blurRadius: 5, spreadRadius: 1)
                    ],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Salary'),
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
                                    height: MediaQuery.of(context).size.height *
                                        0.6,
                                    child: Container(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const AppTextFieldWidget(
                                            hintText: "DA",
                                            textStyle: AppTextStyle
                                                .blackF14FW500TextStyle,
                                          ),
                                          const SizedBox(height: 16.0),
                                          const AppTextFieldWidget(
                                            hintText: "hra",
                                            textStyle: AppTextStyle
                                                .blackF14FW500TextStyle,
                                          ),
                                          const SizedBox(height: 16.0),
                                          const AppTextFieldWidget(
                                            hintText: "Employee share",
                                            textStyle: AppTextStyle
                                                .blackF14FW500TextStyle,
                                          ),
                                          const SizedBox(height: 16.0),
                                          const AppTextFieldWidget(
                                            hintText: "Organization share",
                                            textStyle: AppTextStyle
                                                .blackF14FW500TextStyle,
                                          ),
                                          const SizedBox(height: 16.0),
                                          const AppTextFieldWidget(
                                            hintText: "Employeew share",
                                            textStyle: AppTextStyle
                                                .blackF14FW500TextStyle,
                                          ),
                                          const SizedBox(height: 16.0),
                                          const AppTextFieldWidget(
                                            hintText: "Organization share",
                                            textStyle: AppTextStyle
                                                .blackF14FW500TextStyle,
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
                          color: Colors.orange,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
            const SizedBox(height: 3),
          ],
        ),
      ),
    );
  }
}
