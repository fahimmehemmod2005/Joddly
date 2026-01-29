import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joddly/app/routes/route_name.dart';
import 'package:joddly/app/widgets/custom_rich_text.dart';
import 'package:joddly/app/widgets/my_dialog.dart';
import 'package:joddly/app/widgets/primary_button.dart';
import 'package:joddly/app/widgets/show_white_dialog.dart';
import 'package:joddly/app/widgets/widget_header.dart';
import 'package:joddly/app/widgets/widget_status_bar.dart';
import 'package:joddly/core/constant/app_color.dart';
import 'package:joddly/core/constant/app_images.dart';
import 'package:joddly/core/constant/app_size_box.dart';
import 'package:joddly/core/constant/app_text_styles.dart';

import '../widgets/build_row.dart';

class CurrentPlan extends StatefulWidget {
  const CurrentPlan({super.key});

  @override
  State<CurrentPlan> createState() => _CurrentPlanState();
}

class _CurrentPlanState extends State<CurrentPlan> {
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
              WidgetHeader(title: 'Current Plan', width: 80.w),
              AppSizeBox.height20,
              WidgetStatusBar(title: 'Current Plan'),
              Card(
                elevation: 1,
                color: AppColor.normal,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomRichText(
                        text1: '\$9.44/',
                        style1: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.w700,
                          color: AppColor.primaryColorSecondary,
                        ),
                        text2: 'month',
                        style2: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          color: AppColor.primaryColorSecondary,
                        ),
                      ),
                      AppSizeBox.height20,
                      Text(
                        'Upgrade to Premium',
                        style: AppTextStyles.size24w700(color: Colors.black),
                      ),
                      AppSizeBox.height10,
                      buildRow(text: 'Unlimited Al generations'),
                      AppSizeBox.height10,
                      buildRow(text: 'High-quality downloads'),
                      AppSizeBox.height10,
                      buildRow(text: 'Priority support'),
                      AppSizeBox.height10,
                      buildRow(text: 'No watermarks'),
                      AppSizeBox.height10,
                    ],
                  ),
                ),
              ),
              AppSizeBox.height20,
            Card(
              elevation: 0,
              color: AppColor.normal,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("You're currently on the Premium Monthly Plan",
                    style: AppTextStyles.size16w600(color: Colors.black),
                    ),
                    AppSizeBox.height10,
                    Text("Next billing date: 25 November 2025",
                      style: AppTextStyles.size14w400(color: AppColor.grayBlack),),
                    AppSizeBox.height20,
                    Row(
                      children: [
                        Expanded(
                          child: PrimaryButton(
                            showGradient: false,
                            backgroundColor: Colors.transparent,
                            borderColor: Colors.black,
                            label: 'Change Plan',
                            textColor: Colors.black,
                            onPressed:  (){
                              showWhiteDialog(
                                  context: context,
                                  child: MyDialog(
                                    context: context,
                                    showImage: false,
                                    title: 'Change Plan',
                                    subTitle: 'Select a new plan below to update. Changes apply next billing cycle.',
                                    button1label: 'Change Subscription',
                                    button1Pressed: (){
                                      Navigator.pop(context);
                                      Navigator.pushNamed(context, RouteName.membership);
                                    },
                                    showSecondButton: true,
                                    button2label: 'Close',
                                    button2Pressed: (){
                                      Navigator.pop(context);
                                    },
                                  )
                              );
                            },
                          ),
                        ),
                        AppSizeBox.width10,
                        Expanded(
                          child: PrimaryButton(
                            showGradient: false,
                            backgroundColor: Colors.transparent,
                            borderColor: Colors.red,
                            label: 'Cancel',
                            textColor: Colors.red,
                            onPressed: (){
                              showWhiteDialog(
                                  context: context,
                                  child: MyDialog(
                                    context: context,
                                    showImage: false,
                                    title: 'Cancel Subscription',
                                    subTitle: 'Cancel subscription? Premium access ends after this billing period.',
                                    button1label: 'Yes, Cancel',
                                    button1Pressed: (){
                                      Navigator.pop(context);
                                      Navigator.pushNamed(context, RouteName.membership);
                                    },
                                    showSecondButton: true,
                                    button2label: 'No, Keep Subscription',
                                    button2Pressed: (){
                                      Navigator.pop(context);
                                    },
                                  )
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
