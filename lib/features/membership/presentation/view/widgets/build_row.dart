import 'package:flutter/material.dart';

import '../../../../../core/constant/app_images.dart';
import '../../../../../core/constant/app_size_box.dart';
import '../../../../../core/constant/app_text_styles.dart';

Row buildRow({String? text}) {
  return Row(
    children: [
      Image.asset(AppImages.check,color: Colors.black,),
      AppSizeBox.width10,
      Text(text ?? '', style: AppTextStyles.size14w400(color: Colors.black)),
    ],
  );
}