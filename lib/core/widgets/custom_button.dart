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
    this.onPressed,
  });
  final String text;
  final TextStyle textStyle;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final FontWeight? fontWeight;
  final Function()? onPressed;
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
        onPressed: onPressed,
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
