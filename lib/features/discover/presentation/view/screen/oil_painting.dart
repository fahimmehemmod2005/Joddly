import 'package:flutter/material.dart';
import '../../../../../app/widgets/widget_status_bar.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/constant/app_size_box.dart';
import '../widgets/image_card.dart';

class OilPainting extends StatelessWidget {
  const OilPainting({super.key,});

  @override
  Widget build(BuildContext context) {
    var oil = [AppImages.oil1, AppImages.oil2, AppImages.oil3];
    return SizedBox(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSizeBox.height20,
            WidgetStatusBar(title: 'Oil Painting'),
            AppSizeBox.height15,
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: oil.map((photos) {
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