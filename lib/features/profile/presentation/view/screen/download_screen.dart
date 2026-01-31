import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joddly/app/widgets/widget_header.dart';
import 'package:joddly/core/constant/app_color.dart';
import 'package:joddly/core/constant/app_images.dart';
import 'package:joddly/core/constant/app_size_box.dart';
import 'package:joddly/core/constant/app_text_styles.dart';

import '../widgets/download_card.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({super.key});

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  var item = [
    {
      'image': AppImages.digital2,
      'title': 'Timeless Soul',
      'date': 'Oct 20, 2025',
      'size': '2.4 MB',
    },
    {
      'image': AppImages.sketches1,
      'title': 'Timeless Soul',
      'date': 'Oct 20, 2025',
      'size': '2.5 MB',
    },
    {
      'image': AppImages.realistic1,
      'title': 'Timeless Soul',
      'date': 'Oct 20, 2025',
      'size': '2.7 MB',
    },
    {
      'image': AppImages.digital2,
      'title': 'Timeless Soul',
      'date': 'Oct 20, 2025',
      'size': '2.4 MB',
    },
    {
      'image': AppImages.sketches1,
      'title': 'Timeless Soul',
      'date': 'Oct 20, 2025',
      'size': '2.5 MB',
    },
    {
      'image': AppImages.realistic1,
      'title': 'Timeless Soul',
      'date': 'Oct 20, 2025',
      'size': '2.7 MB',
    },
    {
      'image': AppImages.digital2,
      'title': 'Timeless Soul',
      'date': 'Oct 20, 2025',
      'size': '2.4 MB',
    },
    {
      'image': AppImages.sketches1,
      'title': 'Timeless Soul',
      'date': 'Oct 20, 2025',
      'size': '2.5 MB',
    },
    {
      'image': AppImages.realistic1,
      'title': 'Timeless Soul',
      'date': 'Oct 20, 2025',
      'size': '2.7 MB',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              AppSizeBox.height5,
              WidgetHeader(title: 'Downloads', width: 87.w),
              AppSizeBox.height20,
              Expanded(
                child: ListView.separated(
                    itemCount: item.length,
                    separatorBuilder: (context, index) =>  SizedBox(height: 10),
                    itemBuilder: (context, index) {
                      return DownloadCard(
                        image: item[index]['image'],
                        title: item[index]['title'],
                        date: item[index]['date'],
                        size: item[index]['size'],
                      );
                    },
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

