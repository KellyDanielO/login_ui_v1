import 'package:flutter/material.dart';

import '../constants/colors.dart';

class RegularButton extends StatelessWidget {
  final String text;
  final Color? buttonColor;
  final Color? textColor;
  final double? fontSize;
  final void Function()? onPressed;
  const RegularButton(
      {super.key,
      required this.text,
      this.buttonColor,
      this.textColor,
      required this.onPressed,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor:
            MaterialStatePropertyAll(buttonColor ?? AppColors.primaryColor),
        padding: const MaterialStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        ),
      ),
      child: Text(
        text,
        style:
            TextStyle(color: textColor ?? AppColors.mainBg, fontSize: fontSize),
      ),
    );
  }
}
class OutlinedRegularButton extends StatelessWidget {
  final String text;
  final Color? borderColor;
  final Color? textColor;
  final double? fontSize;
  final void Function()? onPressed;
  const OutlinedRegularButton(
      {super.key,
      required this.text,
      this.borderColor,
      this.textColor,
      required this.onPressed,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        foregroundColor:
            MaterialStatePropertyAll(borderColor ?? AppColors.primaryColor),
        padding: const MaterialStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        ),
        visualDensity: VisualDensity.comfortable
      ),
      child: Text(
        text,
        style:
            TextStyle(color: textColor ?? AppColors.color, fontSize: fontSize),
      ),
    );
  }
}
