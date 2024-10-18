import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.color,
    required this.borderRadiusGeometry,
    required this.textColor,
    this.funtion,
  });
  final Color color;
  final BorderRadiusGeometry borderRadiusGeometry;
  final Color textColor;
  final void Function()? funtion;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: funtion,
          style: TextButton.styleFrom(
              backgroundColor: color,
              shape:
                  RoundedRectangleBorder(borderRadius: borderRadiusGeometry)),
          child: Text("19.99\$",
              style: Styles.textStyle16.copyWith(
                color: textColor,
                fontWeight: FontWeight.w900,
              ))),
    );
  }
}
