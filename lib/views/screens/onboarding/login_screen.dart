import 'package:flutter/material.dart';
import 'package:hrms/views/screens/onboarding/forgot_password_screen.dart';
import 'package:hrms/views/screens/onboarding/registration_screen.dart';
import 'package:hrms/views/widgets/common_widget.dart/app_topbar_widget.dart';

import '../../themes/app_text_style.dart';
import '../../widgets/common_widget.dart/app_button_widget.dart';
import '../../widgets/common_widget.dart/app_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AppTopBarWidget(title: "LOGIN"),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 35),
                  const AppTextFieldWidget(
                    prefixIcon: Icons.person,
                    hintText: "UserName or Email",
                    textStyle: AppTextStyle.blackF14FW500TextStyle,
                  ),
                  const SizedBox(height: 25),
                  const AppTextFieldWidget(
                    prefixIcon: Icons.lock,
                    hintText: "Password",
                    textStyle: AppTextStyle.blackF14FW500TextStyle,
                  ),
                  const SizedBox(height: 40),
                  AppButtonWidget(
                    onTap: () {},
                    title: "LOGIN",
                  ),
                  const SizedBox(height: 45),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have account? ',
                        style: AppTextStyle.blackF14FW500TextStyle,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ForgotPasswordScreen()));
                        },
                        child: InkWell(
                            onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const RegisterScreen()));
                  },
                          child: const Text(
                            'Sign Up ',
                            style: AppTextStyle.orangeF11FW500TextStyle,
                          ),
                        ),
                      ),
                      const Text(
                        'Now ',
                        style: AppTextStyle.blackF14FW500TextStyle,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                   Center(
                    child: InkWell(
                      onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgotPasswordScreen()));
                  },
                      child: const Text(
                        'Forgot Password?',
                        style: AppTextStyle.orangeF11FW500TextStyle,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
