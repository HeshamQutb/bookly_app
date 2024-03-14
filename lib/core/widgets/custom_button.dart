import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.textStyle,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
    required this.text,
    this.fontWeight,
  });
  final String text;
  final TextStyle textStyle;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(kRadiusValue),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: textStyle.copyWith(
            color: textColor,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
