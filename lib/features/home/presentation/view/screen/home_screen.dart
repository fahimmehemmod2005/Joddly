import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joddly/app/routes/route_name.dart';
import 'package:joddly/app/widgets/primary_button.dart';
import 'package:joddly/app/widgets/widget_status_bar.dart';
import 'package:joddly/core/constant/app_color.dart';
import 'package:joddly/core/constant/app_images.dart';
import 'package:joddly/core/constant/app_size_box.dart';
import 'package:joddly/core/constant/app_text_styles.dart';
import 'package:joddly/features/home/presentation/view/widgets/home_header.dart';
import 'package:joddly/features/home/presentation/view/widgets/widget_aspect_ratio.dart';
import 'package:joddly/features/home/presentation/view/widgets/widget_dropdown.dart';
import 'package:joddly/features/home/presentation/view/widgets/widget_image_selection.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSizeBox.height5,
              HomeHeader(),
              AppSizeBox.height10,
              WidgetStatusBar(title: 'Type your idea'),
              AppSizeBox.height10,
              Container(
                height: 104.0.h,
                width: double.infinity,
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColor.deepPrimaryColor),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Center(
                  child: Text(
                    "Describe what you want to create...\n(e.g„ 'A majestic dragon flying over a futuristic city at sunset')",
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.size14w600(color: AppColor.grayBlack),
                  ),
                ),
              ),
              AppSizeBox.height10,
              WidgetStatusBar(title: 'Aspect Ratio'),
              AppSizeBox.height10,

              WidgetAspectRatio(),
              AppSizeBox.height20,
              Container(
                padding: EdgeInsets.all(15.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Color(0xffF6F8FA),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    WidgetStatusBar(title: 'Selected Style'),
                    AppSizeBox.height20,
                    WidgetDropdown(),
                  ],
                ),
              ),
              AppSizeBox.height20,
              Row(
                children: [
                  WidgetStatusBar(title: 'Select Style'),
                  const Spacer(),
                  GestureDetector(
                    child: Text(
                      'See all',
                      style: AppTextStyles.size14w600(color: Colors.black),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, RouteName.seeAll);
                    },
                  ),
                ],
              ),
              AppSizeBox.height15,
              WidgetImageScroll(),
              AppSizeBox.height15,
              PrimaryButton(
                label: 'Generate Image',
                icon: AppImages.ai,
                showIcon: true,
                onPressed: () {
                  Navigator.pushNamed(context, RouteName.previewImageScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
