import 'package:flutter/material.dart';

import '../../../../../app/widgets/widget_status_bar.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/constant/app_size_box.dart';
import '../widgets/image_card.dart';

class RealisticPortraits extends StatelessWidget {
  const RealisticPortraits({super.key,});

  @override
  Widget build(BuildContext context) {
    var realistic = [AppImages.realistic1, AppImages.realistic2, AppImages.realistic3,];
    return SizedBox(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSizeBox.height20,
            WidgetStatusBar(title: 'Realistic Portraits'),
            AppSizeBox.height15,
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: realistic.map((photos) {
                return ImageCard(photos: photos,onTap: (){},);
              }).toList(),
            ),
            AppSizeBox.height10,
          ],
        ),
      ),
    );
  }
}