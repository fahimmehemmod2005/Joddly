import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeDiscoverCard extends StatelessWidget {
  final String? icon;
  final String? title;
  final String? subtitle;
  final String? sideImage;
  final bool borderColor;
  final void Function()? onTap;

  const HomeDiscoverCard({
    super.key,
    this.icon,
    this.title,
    this.subtitle,
    this.sideImage,
    this.borderColor = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 15.h),
        padding: EdgeInsets.all(15.w),
        width: double.infinity,
        decoration: BoxDecoration(
          border: borderColor
              ? Border.all(color: const Color(0xff7C5BFD), width: 1.2.w)
              : null,
          borderRadius: BorderRadius.circular(12.r),
          gradient: const LinearGradient(
            colors: [
              Color(0xffF2EFFF),
              Color(0xffDFD7FF),
              Color(0xffF2EFFF),
            ],
          ),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 40.w,
                  width: 40.w,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Image.asset(
                      icon ?? "",
                      height: 18.w,
                      width: 18.w,
                      color: Colors.black,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                SizedBox(height: 16.h),

                Text(
                  title ?? "",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                SizedBox(height: 4.h),

                Text(
                  subtitle ?? "",
                  style: TextStyle(
                    color: const Color(0xff4A4C56),
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),

            const Spacer(),

            Image.asset(
              sideImage ?? "",
              width: 90.w,
              fit: BoxFit.contain,
            )
          ],
        ),
      ),
    );
  }
}
