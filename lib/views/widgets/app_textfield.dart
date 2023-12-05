import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class AppTextFieldWidget extends StatelessWidget {
  const AppTextFieldWidget({
    Key? key,
    this.textEditingController,
    this.prefixIcon,
    this.hintText,
    this.textStyle,
    this.padding,
  }) : super(key: key);

  final TextEditingController? textEditingController;
  final IconData? prefixIcon;
  final String? hintText;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        controller: textEditingController,
        decoration: InputDecoration(
          alignLabelWithHint: false,
          prefixIcon: prefixIcon != null
              ? Icon(
                  prefixIcon,
                  color: AppColors.orangeColor,
                  size: 30,
                )
              : null,
          hintText: hintText,
          hintStyle: textStyle,
          contentPadding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
          ),
        ),
      );
  }
}
