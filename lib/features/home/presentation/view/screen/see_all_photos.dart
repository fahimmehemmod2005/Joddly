import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joddly/app/widgets/widget_status_bar.dart';
import 'package:joddly/core/constant/app_images.dart';
import 'package:joddly/core/constant/app_size_box.dart';
import 'package:joddly/features/home/presentation/view/widgets/home_header.dart';

import '../../../../../core/constant/app_color.dart';

class SeeAllPhotos extends StatefulWidget {
  const SeeAllPhotos({super.key});

  @override
  State<SeeAllPhotos> createState() => _SeeAllPhotosState();
}

class _SeeAllPhotosState extends State<SeeAllPhotos> {
  var realistic = [AppImages.realistic1, AppImages.realistic2, AppImages.realistic3,];
  var oil = [AppImages.oil1, AppImages.oil2, AppImages.oil3];
  var abstract = [AppImages.abstrac1, AppImages.abstrac2, AppImages.abstrac3];
  var digital = [AppImages.digital1, AppImages.digital2, AppImages.digital3];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSizeBox.height5,
              HomeHeader(),
              AppSizeBox.height20,
              WidgetStatusBar(title: 'Realistic Portraits'),
              AppSizeBox.height15,
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: realistic.map((photos) {
                  return Container(
                    height: 116.5,
                    width: 116.5,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      image: DecorationImage(
                        image: AssetImage(photos),
                        fit: BoxFit.cover,
                      ),
                    ),
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
                  return Container(
                    height: 116.5,
                    width: 116.5,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      image: DecorationImage(
                        image: AssetImage(photos),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }).toList(),
              ),
              AppSizeBox.height15,
              WidgetStatusBar(title: 'Abstract'),
              AppSizeBox.height15,
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: abstract.map((photos) {
                  return Container(
                    height: 116.5,
                    width: 116.5,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      image: DecorationImage(
                        image: AssetImage(photos),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }).toList(),
              ),
              AppSizeBox.height15,
              WidgetStatusBar(title: 'Digital Art'),
              AppSizeBox.height15,
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: digital.map((photos) {
                  return Container(
                    height: 116.5,
                    width: 116.5,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      image: DecorationImage(
                        image: AssetImage(photos),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }).toList(),
              ),
              AppSizeBox.height10,
            ],
          ),
        ),
      ),
    );
  }
}
