import 'package:flutter/material.dart';

import '../../../../../app/widgets/widget_status_bar.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/constant/app_size_box.dart';
import '../widgets/image_card.dart';

class Sketches extends StatelessWidget {
  const Sketches({super.key,});

  @override
  Widget build(BuildContext context) {
    var sketches = [AppImages.sketches1, AppImages.sketches2, AppImages.sketches3,];
    return SizedBox(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSizeBox.height20,
            WidgetStatusBar(title: 'Sketches'),
            AppSizeBox.height15,
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: sketches.map((photos) {
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