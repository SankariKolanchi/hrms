import 'package:flutter/material.dart';
import 'package:hrms/views/screens/registration_screen.dart';
import 'package:hrms/views/themes/app_text_style.dart';

import 'Button.dart';
import 'input_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          const Center(
            child: Text(
              "Login",
              style: TextStyle(color: Colors.black, fontSize: 25.0),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: const InputField(),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Forgot Password?",
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(
            height: 40,
          ),
          const Button(
            text: 'Login',
          ),
          TextButton(
              onPressed: () {
           
              },
              child: const Text(
                " Dont have account?",
                style: AppTextStyle.blackF14FW500TextStyle,
              )
              ),TextButton(onPressed: (){
                   Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const RegisterScreen();
                        }));
              }, child: Text("SignUp")
      )],
      ),
    );
  }
}
