import 'package:flutter/material.dart';

class AppCustomAppbarWrapper extends StatelessWidget {
  const AppCustomAppbarWrapper({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.blue,
          Colors.blue,
          Colors.blue,
        ]),
      ),
      child: child,
    );
  }
}
