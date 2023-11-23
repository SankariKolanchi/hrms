import 'package:flutter/material.dart';

import '../themes/app_text_style.dart';
import '../widgets/Button.dart';
import '../widgets/app_custom_appbar_wrapper.dart';
import '../widgets/header.dart';
import 'login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppCustomAppbarWrapper(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 100,
            ),
            const Header(),
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  )),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(30),
                child: Column(children: [ 
                  const Center(
                    child: Text(
                      "Register",
                      style: TextStyle(color: Colors.black, fontSize: 25.0),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.blue)),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Enter your username",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.blue)),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Enter your email",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.brown)),
                    ),
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter your password",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.brown)),
                    ),
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Confirm your password",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Button(
                    text: 'Register',
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return const LoginPage();
                        }));
                      },
                      child: const Text(
                        "Already have a account",
                        style: AppTextStyle.blackF14FW500TextStyle,
                      )),
                ]),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
