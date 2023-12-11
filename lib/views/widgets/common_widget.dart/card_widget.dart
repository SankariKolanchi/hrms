import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCardWithIconWidget extends StatelessWidget {
  ///TODO
  ///need to give meaningful name
  final String text;
  final String text2;
  final String? text3;
  final IconData icon;
  final double width;
  final double height;
  final Function onTap;
  final Function onDelete;
  final Function onEdit;

  const CustomCardWithIconWidget({
    Key? key,
    required this.text,
    required this.text2,
    this.text3,
    required this.icon,
    required this.width,
    required this.height,
    required this.onTap,
    required this.onEdit,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10,
            offset: Offset(0, 8),
            spreadRadius: 2.0,
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        onTap: () => onTap(),

        ///TODO
        ///naming is need to change.
        child: _CardContent(
          icon: icon,
          text: text,
          text2: text2,
          text3: text3,
          onEdit: () => onEdit(),
          onDelete: () => onDelete(),
        ),
      ),
    );
  }
}

class _CardContent extends StatelessWidget {
  const _CardContent({
    Key? key,
    required this.text,
    required this.text2,
    this.text3,
    required this.icon,
    required this.onDelete,
    required this.onEdit,
  }) : super(key: key);

  ///TODO
  ///rename and give meaningful names
  final String text;
  final String text2;
  final String? text3;
  final IconData icon;
  final Function onDelete;
  final Function onEdit;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _EditWidget(
                onTap: () => onDelete(),
                icon: CupertinoIcons.delete,
                color: Colors.red),
            _EditWidget(
                onTap: () => onEdit(),
                icon: Icons.edit_outlined,
                color: Colors.orange),
          ],
        ),
        Icon(icon, size: 50, color: Colors.grey),
        const SizedBox(height: 10),
        Container(
            width: (MediaQuery.of(context).size.width - 50) / 2,
            padding: const EdgeInsets.symmetric(horizontal: 3.0),
            child: Text(text,
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w500))),
        Text(text2,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
        if (text3 != null)
          Text(text3!,
              style:
                  const TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
        const SizedBox(height: 10),
      ],
    );
  }
}

class _EditWidget extends StatelessWidget {
  const _EditWidget(
      {Key? key, required this.onTap, required this.icon, required this.color})
      : super(key: key);
  final IconData icon;
  final Color color;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: color), shape: BoxShape.circle),
        margin: const EdgeInsets.all(4),
        padding: const EdgeInsets.all(4),
        child: Icon(icon, color: color, size: 20),
      ),
    );
  }
}
