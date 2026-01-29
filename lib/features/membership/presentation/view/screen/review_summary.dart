import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joddly/app/routes/route_name.dart';
import 'package:joddly/app/widgets/my_dialog.dart';
import 'package:joddly/app/widgets/primary_button.dart';
import 'package:joddly/app/widgets/show_white_dialog.dart';
import 'package:joddly/app/widgets/widget_header.dart';
import 'package:joddly/app/widgets/widget_status_bar.dart';
import 'package:joddly/core/constant/app_color.dart';
import 'package:joddly/core/constant/app_images.dart';
import 'package:joddly/core/constant/app_size_box.dart';
import 'package:joddly/core/constant/app_text_styles.dart';

class ReviewSummary extends StatefulWidget {
  const ReviewSummary({super.key});

  @override
  State<ReviewSummary> createState() => _ReviewSummaryState();
}

class _ReviewSummaryState extends State<ReviewSummary> {
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
                WidgetHeader(
                  title: 'Review Summary',
                  width: 50.w,
                ),
                AppSizeBox.height10,
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: AppColor.normal,
                    borderRadius: BorderRadius.circular(12.0)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Order Summary',style: AppTextStyles.size20w600(color: AppColor.primaryColorSecondary),),
                      AppSizeBox.height15,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Pro Plan'),
                          Text('\$4.99'),
                        ],
                      ),
                      AppSizeBox.height15,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Building Cycle'),
                          Text('Monthly'),
                        ],
                      ),
                      AppSizeBox.height5,
                      const Divider(color: Colors.grey,),
                      AppSizeBox.height15,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total'),
                          Text('\$4.99',style: AppTextStyles.size16w700(color: AppColor.primaryColorSecondary),),
                        ],
                      ),
                    ],
                  ),
                ),
                AppSizeBox.height20,
                WidgetStatusBar(title: 'Selected Payment Method',),
                AppSizeBox.height20,
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColor.normal,
                      borderRadius: BorderRadius.circular(12.0)
                  ),
                  child: ListTile(
                    leading: Image.asset(AppImages.credit,height: 40,width: 40,),
                    title: Text('Credit / Debit Card'),
                    trailing: Text('Change',style: AppTextStyles.size16w700(color: AppColor.primaryColorSecondary),),
                    onTap: (){
                      Navigator.pushNamed(context, RouteName.paymentMethod);
                    },
                  ),
                ),
                300.verticalSpace,
                PrimaryButton(
                  label: 'Confirm Payment',
                  onPressed: (){
                    showWhiteDialog(
                        context: context,
                      child: MyDialog(
                          context: context,
                        imagePath: AppImages.checkColor,
                        title: 'Welcome to PRO Plan!',
                        subTitle: '''You have successfully subscribed Pro for 6 months! E-Receipt has been sent to your email address. Enjoy all the benefits!''',
                        button1label: 'Close',
                        button1Pressed: (){
                            Navigator.pop(context);
                            Navigator.pushReplacementNamed(context, RouteName.bottomNavScreen);
                        },
                      )
                    );
                  },
                ),
              ],
            ),
          )
      ),
    );
  }
}
