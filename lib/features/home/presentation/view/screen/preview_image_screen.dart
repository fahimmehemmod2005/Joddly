import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joddly/app/routes/route_name.dart';
import 'package:joddly/app/widgets/custom_dialog_box.dart';
import 'package:joddly/app/widgets/my_dialog.dart';
import 'package:joddly/app/widgets/primary_button.dart';
import 'package:joddly/app/widgets/show_white_dialog.dart';
import 'package:joddly/app/widgets/widget_header.dart';
import 'package:joddly/core/constant/app_color.dart';
import 'package:joddly/core/constant/app_images.dart';
import 'package:joddly/core/constant/app_size_box.dart';

class PreviewImageScreen extends StatefulWidget {
  const PreviewImageScreen({super.key});

  @override
  State<PreviewImageScreen> createState() => _PreviewImageScreenState();
}

class _PreviewImageScreenState extends State<PreviewImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppSizeBox.height5,
              WidgetHeader(title: 'Preview', width: 96.w),
              AppSizeBox.height30,
              Container(
                height: 335.0.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  image: DecorationImage(
                    image: AssetImage(AppImages.digital2),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              AppSizeBox.height30,
              PrimaryButton(
                showIcon: true,
                label: 'Regenerate Image',
                icon: AppImages.ai,
                onPressed: () {
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
                },
              ),
              AppSizeBox.height20,
              PrimaryButton(
                showGradient: false,
                label: 'Download',
                textColor: Colors.black,
                borderColor: AppColor.primaryColorSecondary,
                backgroundColor: Colors.white,
                onPressed: () {
                  showWhiteDialog(
                      context: context,
                      child: MyDialog(
                        context: context,
                        imagePath: AppImages.checkColor,
                        title: 'Image downloaded\nsuccessfully.',
                        subTitle: 'Your artwork has been successfully',
                        button1label: 'Go to Home',
                        button1Pressed: (){
                          Navigator.pushNamed(context, RouteName.bottomNavScreen);
                        },
                      )
                  );
                },
              ),
              AppSizeBox.height40,
              GestureDetector(
                child: Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.normal,
                  ),
                  child: Image.asset(
                    AppImages.delete,
                    height: 18.0,
                    width: 18.0,
                    color: Colors.black,
                  ),
                ),
                onTap: (){
                  showCustomDialog(
                      context: context,
                    image: AppImages.digital2,
                    title: 'Are you sure you want to\ndelete this creation?',
                    subtitle: 'Once deleted, it can not be recovered again.',
                    button1: 'Cancel',
                    button2: 'Delete',
                    onConfirm: (){}
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
