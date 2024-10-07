import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    required this.fontSize,
    required this.borderRadius,
  });
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final double fontSize;
  final BorderRadius borderRadius;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          )),
      child: Text(
        text,
        style: TextStyle(
            color: textColor, fontSize: fontSize, fontWeight: FontWeight.w900),
      ),
    );
  }
}
