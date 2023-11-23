import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container( 
      padding: const EdgeInsets.all(20),
      child: const Center( 
        child: Text(
          "Risolutor Hrms",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
