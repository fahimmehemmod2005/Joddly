import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joddly/app/widgets/widget_header.dart';
import 'package:joddly/core/constant/app_color.dart';
import 'package:joddly/core/constant/app_size_box.dart';
import 'package:joddly/features/discover/presentation/view/screen/discover_screen.dart';
import 'package:joddly/features/membership/presentation/view/screen/yearly.dart';

import 'monthly.dart';

class Membership extends StatefulWidget {
  const Membership({super.key});

  @override
  State<Membership> createState() => _MembershipState();
}

class _MembershipState extends State<Membership> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                AppSizeBox.height5,
                WidgetHeader(title: 'Choose Plan', width: 82.w),
                AppSizeBox.height20,
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 56,
                      width: double.infinity,
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: AppColor.normal,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: TabBar(
                        dividerColor: Colors.transparent,
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.black,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: BoxDecoration(
                          gradient: AppColor.primaryGradient,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        tabs: [pillTab('Monthly'), pillTab('Yearly')],
                      ),
                    ),

                    Positioned(
                      top: -10,
                      right: 12,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: AppColor.green,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Text(
                          'Save 33%',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                AppSizeBox.height10,
                Expanded(
                  child: TabBarView(
                    children: [
                      Monthly(),
                      Yearly(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


