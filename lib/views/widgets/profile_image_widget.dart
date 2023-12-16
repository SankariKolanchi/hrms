import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.onEdit});
  final String title;
  final String subTitle;
  final Function onEdit;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blueColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            SizedBox(
              width: 200,
              height: 120,
              child: Stack(
                children: [
                  Container(
                    width: 200,
                    height: 120,
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.person,
                      size: 100,
                      color: Colors.grey,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 25,
                    child: InkWell(
                      onTap: () => onEdit(),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.orange, shape: BoxShape.circle),
                        padding: const EdgeInsets.all(8),
                        child: const Icon(
                          Icons.edit_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Text(title,
                style: const TextStyle(fontSize: 16, color: Colors.white)),
            const SizedBox(height: 10),
            Text(subTitle,
                style: const TextStyle(fontSize: 13, color: Colors.white)),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
