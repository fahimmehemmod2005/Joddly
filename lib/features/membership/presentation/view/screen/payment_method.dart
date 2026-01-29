import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joddly/app/widgets/widget_header.dart';
import 'package:joddly/core/constant/app_size_box.dart';
import 'package:provider/provider.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {

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
              Consumer(
                builder: (context, provider, child) {
                  int selectedMethod = 1;
                  return Column(
                    children: [
                      RadioListTile(
                        value: 1,
                        groupValue: selectedMethod,
                        onChanged: (val) {
                          setState(() {
                            selectedMethod = val!;
                          });
                        },
                        secondary: Image.asset('assets/icons/master.png', height: 40,width: 40,),
                        title: const Text(
                          "Master",
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                        activeColor: const Color(0xff7C5BFD),
                        tileColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                          side: BorderSide(
                            color: selectedMethod == 1
                                ? const Color(0xff7C5BFD)
                                : const Color(0xffE5E7EB),
                            width: 1.2,
                          ),
                        ),
                        controlAffinity: ListTileControlAffinity.trailing, // radio right side
                      ),
                    ],
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
