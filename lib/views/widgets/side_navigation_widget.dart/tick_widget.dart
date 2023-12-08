import 'package:flutter/material.dart';

class TickButton extends StatelessWidget {
  final bool showTick;

  const TickButton({Key? key, this.showTick = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: showTick,
      child: Container(
        alignment: Alignment.topRight,
        decoration: const BoxDecoration(
          color: Colors.green,
          shape: BoxShape.circle,
        ),
        margin: const EdgeInsets.all(8),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.check,
            color: Colors.white,
            size: 20,
          ),
        ),
      ),
    );
  }
}
