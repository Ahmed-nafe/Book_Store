import 'package:book/core/utils/appcolors.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.textColor,
    required this.buttonColor,
    required this.borderRadius,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final Color textColor;
  final Color buttonColor;
  final BorderRadius borderRadius;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.blackColor,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
        backgroundColor: buttonColor,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: AppStyles.textStyle18.copyWith(
          color: textColor,
        ),
      ),
    );
  }
}
