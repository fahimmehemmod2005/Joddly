import 'package:flutter/material.dart';

class DividerCenterText extends StatelessWidget {
  final String? title;
  const DividerCenterText({
    super.key, this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Color(0xffECEFF3),
            thickness: 1,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            title ?? "",
            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Color(0xff9DA4AE)),
          ),
        ),
        Expanded(
          child: Divider(
            color: Color(0xffECEFF3),
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
