import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../core/constant/app_color.dart';
import '../../../../../core/constant/app_images.dart';
import '../../viewmodel/image_selection_provider.dart';

class WidgetImageScroll extends StatelessWidget {
  const WidgetImageScroll({super.key});
  @override
  Widget build(BuildContext context) {
    final images = [
      AppImages.realistic1,
      AppImages.realistic2,
      AppImages.realistic3,
      AppImages.oil1,
      AppImages.oil2,
      AppImages.oil3,
    ];
    return Consumer<ImageSelectionProvider>(
      builder: (context, provider, child) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: images.asMap().entries.map((entry) {
              int index = entry.key;
              String imagePath = entry.value;
              bool isSelected = provider.selectedIndex == index;

              return GestureDetector(
                onTap: () {
                  provider.selectImage(index);
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: isSelected
                          ? AppColor.primaryColorSecondary
                          : Colors.transparent,
                      width: 3
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
