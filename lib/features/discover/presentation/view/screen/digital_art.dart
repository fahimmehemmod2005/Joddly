import 'package:flutter/material.dart';

import '../../../../../app/widgets/widget_status_bar.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/constant/app_size_box.dart';
import '../widgets/image_card.dart';

class DigitalArt extends StatelessWidget {
  const DigitalArt({super.key,});

  @override
  Widget build(BuildContext context) {
    var digital = [AppImages.digital1, AppImages.digital2, AppImages.digital3];
    return SizedBox(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSizeBox.height20,
            WidgetStatusBar(title: 'Digital Art'),
            AppSizeBox.height15,
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: digital.map((photos) {
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