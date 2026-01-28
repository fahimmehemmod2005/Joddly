import 'package:flutter/material.dart';

import '../../../../../core/constant/app_color.dart';
import '../../../../../core/constant/app_images.dart';

class SearchAndFilterField extends StatelessWidget {
  const SearchAndFilterField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              prefixIcon: Container(
                padding: EdgeInsets.all(15),
                height: 55,
                width: 55,
                child: Image.asset(AppImages.search),
              ),
              filled: true,
              fillColor: AppColor.normal,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100.0),
                borderSide: BorderSide(color: AppColor.normal),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100.0),
                borderSide: BorderSide(color: AppColor.normal),
              ),
            ),
          ),
        ),
        const SizedBox(width: 15.0),
        Container(
          padding: EdgeInsets.all(15),
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            color: AppColor.normal,
            borderRadius: BorderRadius.circular(22),
          ),
          child: Image.asset(AppImages.filter),
        ),
      ],
    );
  }
}
