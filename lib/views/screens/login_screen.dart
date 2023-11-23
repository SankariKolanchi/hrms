import 'package:flutter/material.dart';

import '../widgets/app_custom_appbar_wrapper.dart';
import '../widgets/header.dart';
import '../widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              child: const LoginForm(),
            ))
          ],
        ),
      ),
    );
  }
}
