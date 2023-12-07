import 'package:flutter/material.dart';


import '../widgets/companyname_listwidget.dart';
import '../widgets/email_widget.dart';
import '../widgets/invoice_widget.dart';
import '../widgets/localizaion_widget.dart';
import '../widgets/password_widget.dart';
import '../widgets/salary_widget.dart';

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
            ChangePasswordSettingsWidget(),
            CompanyNameSettingsWidget(),
            LocalizationSettingsWidget(),
            EmailSettingsWidget(),
            InvoiceSettingsItem(),
            SalaryItem(),
          ],
        ),
      ),
    );
  }
}
