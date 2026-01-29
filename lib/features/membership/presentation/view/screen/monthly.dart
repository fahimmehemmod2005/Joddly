import 'package:flutter/material.dart';
import 'package:joddly/app/widgets/primary_button.dart';

import '../../../../../app/routes/route_name.dart';
import '../../../../../app/widgets/custom_rich_text.dart';
import '../../../../../core/constant/app_color.dart';
import '../../../../../core/constant/app_size_box.dart';
import '../../../../../core/constant/app_text_styles.dart';
import '../widgets/build_row.dart';

class Monthly extends StatelessWidget {
  const Monthly({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        child: Column(
          children: [
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
                    AppSizeBox.height20,
                    PrimaryButton(
                      label: 'Get Premium - \$4.99/month',
                      onPressed: (){
                        Navigator.pushNamed(context, RouteName.paymentMethod);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}