import 'package:flutter/material.dart';

import 'package:hrms/views/widgets/common_widget.dart/app_button_widget.dart';

import '../../themes/app_text_style.dart';

import '../../widgets/common_widget.dart/app_textfield.dart';
import '../../widgets/common_widget.dart/app_topbar_widget.dart';
import 'login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      const AppTopBarWidget(title: "REGISTER"),
      Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Column(children: [
            const SizedBox(height: 35),
            const AppTextFieldWidget(
              hintText: "UserName ",
              prefixIcon: Icons.person,
              textStyle: AppTextStyle.blackF14FW500TextStyle,
            ),
            const AppTextFieldWidget(
              hintText: "Email ",
              prefixIcon: Icons.email,
              textStyle: AppTextStyle.blackF14FW500TextStyle,
            ),
            const SizedBox(height: 25),
            const AppTextFieldWidget(
              hintText: "Password",
              prefixIcon: Icons.password,
              textStyle: AppTextStyle.blackF14FW500TextStyle,
            ),
            const SizedBox(height: 40),
            const AppTextFieldWidget(
              hintText: "Confirm Password",
              prefixIcon: Icons.confirmation_num,
              textStyle: AppTextStyle.blackF14FW500TextStyle,
            ),
            const SizedBox(
              height: 30,
            ),
            AppButtonWidget(
              onTap: () {},
              title: "REGISTER",
            ),
            const SizedBox(height: 45),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account? ",
                  style: AppTextStyle.blackF14FW500TextStyle,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                  },
                  child: const Text(
                    "Login",
                    style: AppTextStyle.orangeF11FW500TextStyle,
                  ),
                ),
                const SizedBox(width: 5,),
                const Text(
                  "Now",
                  style: AppTextStyle.blackF14FW500TextStyle,
                ),
              ],
            )
          ]))
    ]));
  }
}
