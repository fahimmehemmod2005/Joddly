import 'package:flutter/material.dart';
import 'package:joddly/app/routes/route_name.dart';
import 'package:joddly/features/discover/presentation/view/widgets/image_card.dart';

import '../../../../../app/widgets/widget_status_bar.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/constant/app_size_box.dart';

class AllPhotos extends StatelessWidget {
  const AllPhotos({super.key,});

  @override
  Widget build(BuildContext context) {
    var realistic = [AppImages.realistic1, AppImages.realistic2, AppImages.realistic3,];
    var oil = [AppImages.oil1, AppImages.oil2, AppImages.oil3];
    var abstract = [AppImages.abstrac1, AppImages.abstrac2, AppImages.abstrac3];
    var digital = [AppImages.digital1, AppImages.digital2, AppImages.digital3];
    var sketches = [AppImages.sketches1, AppImages.sketches2, AppImages.sketches3,];
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
                return ImageCard(
                  photos: photos,
                  onTap: (){
                    Navigator.pushNamed(context, RouteName.imageEffects);
                  },
                );
              }).toList(),
            ),
            AppSizeBox.height15,
            WidgetStatusBar(title: 'Oil Painting'),
            AppSizeBox.height15,
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: oil.map((photos) {
                return ImageCard(photos: photos,onTap: (){},);
              }).toList(),
            ),
            AppSizeBox.height15,
            WidgetStatusBar(title: 'Abstract'),
            AppSizeBox.height15,
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: abstract.map((photos) {
                return ImageCard(photos: photos,onTap: (){},);
              }).toList(),
            ),
            AppSizeBox.height15,
            WidgetStatusBar(title: 'Digital Art'),
            AppSizeBox.height15,
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: digital.map((photos) {
                return ImageCard(photos: photos,onTap: (){},);
              }).toList(),
            ),
            AppSizeBox.height15,
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

