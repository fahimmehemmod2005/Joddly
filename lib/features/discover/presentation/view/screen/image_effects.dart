import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joddly/app/routes/app_routes.dart';
import 'package:joddly/app/routes/route_name.dart';
import 'package:joddly/app/widgets/primary_button.dart';
import 'package:joddly/app/widgets/widget_status_bar.dart';
import 'package:joddly/core/constant/app_color.dart';
import 'package:joddly/core/constant/app_text_styles.dart';
import '../../../../../app/widgets/my_dialog.dart';
import '../../../../../app/widgets/show_white_dialog.dart';
import '../../../../../app/widgets/show_white_model_bottom_sheet.dart';
import '../../../../../app/widgets/widget_header.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/constant/app_size_box.dart';

class ImageEffects extends StatefulWidget {
  const ImageEffects({super.key});

  @override
  State<ImageEffects> createState() => _ImageEffectsState();
}

class _ImageEffectsState extends State<ImageEffects> {
  void onPressed () {
    showWhiteModelBottomSheet(
        context: context,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WidgetStatusBar(title: 'Selected Image',),
                CloseButton()
              ],
            ),
            AppSizeBox.height20,
            Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColor.normal,
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.upload,height: 28,width: 28,),
                    AppSizeBox.height10,
                    Text('Upload Image',style: AppTextStyles.size16w600(color: Colors.black),)
                  ],
                ),
              ),
            ),
            AppSizeBox.height20,
            WidgetStatusBar(title: 'Prompt',),
            AppSizeBox.height20,
            TextFormField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: '''Describe what you want to create... (e.g„ 'A majestic dragon flying over a futuristic city at sunset')''',
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: AppColor.primaryColorSecondary)
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: AppColor.primaryColorSecondary)
                ),
              ),
            ),
            AppSizeBox.height20,
            PrimaryButton(
                showIcon: true,
                icon: AppImages.ai,
                label: 'Try Generate Image',
                onPressed: () {
                  Navigator.pop(context);
                  showWhiteDialog(
                      context: context,
                      child: MyDialog(
                        context: context,
                        imagePath: AppImages.checkColor2,
                        title: 'Premium Features!',
                        subTitle: 'Upgrade plan to unlock premium\nfeatures and content!',
                        button1label: 'Upgrade Plan',
                        button1Pressed: (){
                          Navigator.pop(context);
                          Navigator.pushNamed(context, RouteName.membership);
                        },
                      )
                  );
                }
            ),
            AppSizeBox.height20
          ],
        )
    );
  }
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
              WidgetHeader(title: 'Image Effects', width: 75.w),
              AppSizeBox.height30,
              Container(
                height: 335.0.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  image: DecorationImage(
                    image: AssetImage(AppImages.realistic2),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              AppSizeBox.height20,
              WidgetStatusBar(title: 'Prompt'),
              AppSizeBox.height20,
              Text(
                '''A highly detailed portrait of an elderly woman with expressive wrinkles and wise, soulful eyes. She is adorned in colorful, artistic clothing with intricate patterns, complemented by bright earrings and a vibrant headscarf.''',
                style: AppTextStyles.size16w400(color: AppColor.grayBlack),
              ),
              AppSizeBox.height30,
              PrimaryButton(
                showIcon: true,
                icon: AppImages.ai,
                label: 'Try Generate Image',
                onPressed: onPressed,
              ),
            ],
          ),
        ),
      ),
    );
  }

}
