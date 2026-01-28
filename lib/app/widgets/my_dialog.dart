import 'package:flutter/material.dart';
import 'package:joddly/app/widgets/primary_button.dart';

import '../../core/constant/app_size_box.dart';
import '../../core/constant/app_text_styles.dart';

class MyDialog extends StatelessWidget {
  final String? imagePath;
  final String? title;
  final String? subTitle;
  final String? button1label;
  final String? button2label;
  final BuildContext context;
  final bool showImage;
  final bool showSecondButton;
  final void Function()? button1Pressed;
  final void Function()? button2Pressed;
  const MyDialog({
    super.key,
    required this.context,
    this.imagePath,
    this.title,
    this.subTitle,
    this.showImage = true,
    this.showSecondButton = false,
    this.button1label,
    this.button2label,
    this.button1Pressed,
    this.button2Pressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppSizeBox.height20,
        if (showImage) Image.asset(imagePath ?? '', height: 100, width: 100),
        AppSizeBox.height20,
        Text(
          title ?? '',
          style: AppTextStyles.size20w600(color: Colors.black),
          textAlign: TextAlign.center,
        ),
        AppSizeBox.height10,
        Text(
          subTitle ?? '',
          textAlign: TextAlign.center,
          style: AppTextStyles.size14w400(color: Color(0xff4A4C56)),
        ),
        AppSizeBox.height20,
        PrimaryButton(
            label: button1label,
            onPressed: button1Pressed
        ),
        AppSizeBox.height20,
        if (showSecondButton)
          PrimaryButton(
            showGradient: false,
            backgroundColor: Colors.white,
            label: button2label,
            textColor: Colors.black,
            borderColor: Color(0xffECEFF3),
            onPressed: () {},
          ),
        AppSizeBox.height10,
      ],
    );
  }
}