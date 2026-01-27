import 'package:flutter/material.dart';

class WidgetStatusBar extends StatelessWidget {
  final String? title;
  final Color? textColor;
  final double? textSize;
  final FontWeight? fontWeight;
  const WidgetStatusBar({
    super.key, 
    this.title, 
    this.textColor = Colors.black, 
    this.textSize = 20, 
    this.fontWeight = FontWeight.w500,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? "",
      style: TextStyle(
        color: textColor,
        fontSize: textSize,
        fontWeight: fontWeight,
        )
      );
  }
}