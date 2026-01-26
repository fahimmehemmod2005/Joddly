import 'package:flutter/material.dart';
import '../../core/constant/app_text_styles.dart';

class WidgetHeader extends StatelessWidget {
  final String? title;
  final double? width;
  final VoidCallback? onTap;
  final bool moreButton;

  const WidgetHeader({
    super.key,
    this.title,
    this.width,
    this.onTap,
    this.moreButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          style: IconButton.styleFrom(
            minimumSize: Size(50, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
              side: BorderSide(color: Color(0xffDFE1E7)),
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined, color:  Color(0xff777980)),
        ),

        SizedBox(width: width),

        if (title != null)
          Text(title!, style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.w500)),

        const Spacer(),

        if (moreButton)
          IconButton(
            onPressed: onTap,
            icon: Icon(Icons.more_vert, color: Colors.black),
          ),
      ],
    );
  }
}
