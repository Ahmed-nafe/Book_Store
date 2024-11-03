import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.textColor,
    required this.buttonColor,
    required this.borderRadius,
    required this.text,
  });

  final String text;
  final Color textColor;
  final Color buttonColor;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
        backgroundColor: buttonColor,
      ),
      onPressed: () {},
      child: Text(
        text,
        style: AppStyles.textStyle18.copyWith(
          color: textColor,
        ),
      ),
    );
  }
}