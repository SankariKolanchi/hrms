import 'package:flutter/material.dart';

class CustomCardWithIconWidget extends StatelessWidget {
  final String text;
  final String text2;
  final MaterialColor backgroundColor;
  final IconData icon;
  final Offset position;
  final double width;
  final double height;

  const CustomCardWithIconWidget({
    Key? key,
    required this.text,
    required this.text2,
    required this.backgroundColor,
    required this.icon,
    required this.position,
    required this.width,
    required this.height, required bool showIcons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: position.dy,
      left: position.dx,
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              offset: Offset(10, 8),
              spreadRadius: 2.0,
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: _CardContent(
          backgroundColor: backgroundColor,
          icon: icon,
          text: text,
          text2: text2,
        ),
      ),
    );
  }
}

class _CardContent extends StatelessWidget {
  final String text;
  final String text2;
  final MaterialColor backgroundColor;
  final IconData icon;

  const _CardContent({
    Key? key,
    required this.text,
    required this.text2,
    required this.backgroundColor,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: backgroundColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                size: 40,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 15),
            Text(text2, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
            Text(text, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
            const SizedBox(height: 10),
          ],
        ),
        Positioned(
          top: 0,
          right: 0,
          child: const _EditButton(),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: const _DeleteButton(),
        ),
      ],
    );
  }
}

class _EditButton extends StatelessWidget {
  const _EditButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      decoration: const BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.circle,
      ),
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.only(left: 0,right: 0,top: 0),
        child: const Icon(
          Icons.edit_outlined,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
 
  }
}

class _DeleteButton extends StatelessWidget {
  const _DeleteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.circle,
      ),
      margin: const EdgeInsets.all(8),
      child: const Icon(
        Icons.delete,
        color: Colors.white,
        size: 20,
      ),
    );
  }
}
