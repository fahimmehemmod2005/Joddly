import 'package:flutter/material.dart';
import '../../core/constant/app_size_box.dart';

class TitleSubtitleBar extends StatelessWidget {
  final String? title;
  final String? subtitle;
  const TitleSubtitleBar({super.key, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? "",
          style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,color: Colors.black)
        ),
        AppSizeBox.height5,
        Text(
          subtitle ?? "",
          style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff4A4C56))
        ),
      ],
    );
  }
}
