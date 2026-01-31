import 'package:flutter/material.dart';

import '../../../../../core/constant/app_color.dart';
import '../../../../../core/constant/app_size_box.dart';
import '../../../../../core/constant/app_text_styles.dart';

class DownloadCard extends StatelessWidget {
  final String? image;
  final String? title;
  final String? date;
  final String? size;
  const DownloadCard({super.key, this.image, this.title, this.date, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 95,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.normal,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              image: DecorationImage(image: AssetImage(image ?? '')),
            ),
          ),
          AppSizeBox.width10,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title ?? '',
                style: AppTextStyles.size16w400(color: Colors.black),
              ),
              AppSizeBox.height5,
              Text(date ?? '', style: AppTextStyles.size14w400()),
            ],
          ),
          const Spacer(),
          Text(size ?? ''),
        ],
      ),
    );
  }
}