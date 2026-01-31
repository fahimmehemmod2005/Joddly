import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joddly/app/widgets/input_field.dart';
import 'package:joddly/app/widgets/primary_button.dart';
import 'package:joddly/app/widgets/widget_header.dart';
import 'package:joddly/core/constant/app_size_box.dart';

import '../../../../../core/constant/app_color.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/constant/app_text_styles.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              AppSizeBox.height5,
              WidgetHeader(title: 'Profile', width: 103.w),
              AppSizeBox.height20,
              Container(
                padding: const EdgeInsets.all(15.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.normal,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Row(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(AppImages.fahim),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        // Camera Button
                        Positioned(
                          right: -2,
                          bottom: -6,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.camera_alt_outlined,
                                size: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    AppSizeBox.width15,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Profile Picture',
                            style: AppTextStyles.size18w700(
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Click the camera icon to upload or change photo',
                            style: AppTextStyles.size14w400(
                              color: AppColor.grayBlack,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              AppSizeBox.height20,
              Container(
                padding: EdgeInsets.all(15.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.normal,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: InputField(
                  topLabel: 'Name',
                  hintText: 'Enter your name',
                ),
              ),
              AppSizeBox.height20,
              Row(
                children: [
                  Expanded(
                    child: PrimaryButton(
                      label: 'Save',
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  AppSizeBox.width15,
                  Expanded(
                    child: PrimaryButton(
                      showGradient: false,
                      label: 'Cancel',
                      textColor: Colors.black,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
