import 'package:flutter/material.dart';

Widget outlinedButtonWidget({
  required void Function()? onPressed,
  double? height,
  double? width,
  double? borderRadius,
  required String buttonText,
  Color? backgroundColor,
  TextStyle? textStyle,
}) {
  return Container(
    height: height ?? 30,
    width: width ?? 85,
    margin: const EdgeInsets.all(0),
    decoration: ShapeDecoration(
      color: backgroundColor ?? Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 6),
        side: BorderSide(
          width: 1,
          color: Colors.grey.shade800,
        ),
      ),
    ),
    child: OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.all(0),
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
      ),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: textStyle ??
            const TextStyle(
              fontWeight: FontWeight.w400,
            ),
      ),
    ),
  );
}
