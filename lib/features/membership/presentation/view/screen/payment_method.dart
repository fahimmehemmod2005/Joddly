import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joddly/app/widgets/primary_button.dart';
import 'package:joddly/app/widgets/widget_header.dart';
import 'package:joddly/core/constant/app_images.dart';
import 'package:joddly/core/constant/app_size_box.dart';
import 'package:joddly/features/membership/presentation/viewmodel/payment_method_view_model.dart';
import 'package:provider/provider.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  final methods = [
    {"id": 1, "title": "Credit / Debit", "icon": AppImages.credit},
    {"id": 2, "title": "PayPal", "icon": AppImages.visa},
    {"id": 3, "title": "Apple Pay", "icon": AppImages.master},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              AppSizeBox.height5,
              WidgetHeader(title: 'Select Payment Method', width: 45.w),
              AppSizeBox.height20,
              Consumer<PaymentMethodProvider>(
                builder: (context, provider, child) {
                  final methods = [
                    {
                      "id": 1,
                      "title": "Credit / Debit",
                      "icon": AppImages.credit,
                    },
                    {"id": 2, "title": "PayPal", "icon": AppImages.visa},
                    {"id": 3, "title": "Apple Pay", "icon": AppImages.master},
                  ];

                  return Column(
                    children: methods.map((method) {
                      final int id = method["id"] as int;
                      final String title = method["title"] as String;
                      final String icon = method["icon"] as String;

                      final bool isSelected = provider.selectedMethod == id;

                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: RadioListTile<int>(
                          value: id,
                          groupValue: provider.selectedMethod,
                          onChanged: (val) {
                            provider.selectMethod(val!);
                          },
                          secondary: Image.asset(icon, height: 40, width: 40),
                          title: Text(
                            title,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          activeColor: const Color(0xff7C5BFD),
                          tileColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                            side: BorderSide(
                              color: isSelected
                                  ? const Color(0xff7C5BFD)
                                  : const Color(0xffE5E7EB),
                              width: 1.2,
                            ),
                          ),
                          controlAffinity: ListTileControlAffinity.trailing,
                        ),
                      );
                    }).toList(),
                  );
                },
              ),
              400.verticalSpace,
              PrimaryButton(
                label: 'Continue',
                onPressed: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
