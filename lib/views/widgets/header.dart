import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Center(
        ///TODO:
        ///logo needed
        child: Text(
          "Risolutor Hrms",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
