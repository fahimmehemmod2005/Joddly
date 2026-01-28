import 'package:flutter/material.dart';
import 'package:joddly/app/routes/route_name.dart';
import 'package:joddly/core/constant/app_size_box.dart';
import 'package:joddly/core/constant/app_text_styles.dart';
import 'package:joddly/core/constant/app_color.dart';
import 'package:joddly/core/constant/app_images.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AppImages.logo1),
        const Spacer(),
        GestureDetector(
          child: Image.asset(AppImages.notification),
          onTap: () {
            Navigator.pushNamed(context, RouteName.notificationScreen);
          },
        ),
        AppSizeBox.width10,
        GestureDetector(
          child: Container(
            height: 32.0,
            width: 60.0,
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              border: Border.all(color: AppColor.deepPrimaryColor),
              borderRadius: BorderRadius.circular(100.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  AppImages.premium,
                  color: AppColor.primaryColor,
                  height: 16.0,
                  width: 16.0,
                ),
                Text('Pro',style: AppTextStyles.size14w400(color: AppColor.deepPrimaryColor),),
              ],
            ),
          ),
          onTap: (){},
        ),
      ],
    );
  }
}
