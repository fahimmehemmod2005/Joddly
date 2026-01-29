import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joddly/app/widgets/widget_header.dart';
import 'package:joddly/app/widgets/widget_status_bar.dart';
import 'package:joddly/core/constant/app_color.dart';
import 'package:joddly/core/constant/app_images.dart';
import 'package:joddly/core/constant/app_size_box.dart';
import 'package:joddly/core/constant/app_text_styles.dart';

import '../widgets/notification_card.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  var today = [
    {
      'image': AppImages.image,
      'title': "Sports Pick",
      'content':
          "We predict Man City to win based on home advantage, xG, and injuries.",
      'time': "2m",
    },
    {
      'image': AppImages.share,
      'title': "Subscription Activated!",
      'content':
          "We predict Man City to win based on home advantage, xG, and injuries.",
      'time': "1m",
    },
    {
      'image': AppImages.share,
      'title': "Sports Pick",
      'content':
          "We predict Man City to win based on home advantage, xG, and injuries.",
      'time': "2m",
    },
    {
      'image': AppImages.ai,
      'title': "Subscription Activated!",
      'content':
          "We predict Man City to win based on home advantage, xG, and injuries.",
      'time': "1m",
    },
    {
      'image': AppImages.image,
      'title': "Sports Pick",
      'content':
          "We predict Man City to win based on home advantage, xG, and injuries.",
      'time': "3m",
    },
    {
      'image': AppImages.image,
      'title': "Subscription Activated!",
      'content':
          "We predict Man City to win based on home advantage, xG, and injuries.",
      'time': "1m",
    },
  ];
  var yesterday = [
    {
      'image': AppImages.image,
      'title': "Sports Pick",
      'content':
          "We predict Man City to win based on home advantage, xG, and injuries.",
      'time': "1d",
    },
    {
      'image': AppImages.share,
      'title': "Subscription Activated!",
      'content':
          "You have successfully subscribed to Premium PICKS EMPIRE. Enjoy exclusive Picks and win your match! 🎉",
      'time': "2d",
    },
    {
      'image': AppImages.ai,
      'title': "Subscription Activated!",
      'content':
          "We predict Man City to win based on home advantage, xG, and injuries.",
      'time': "7d",
    },
    {
      'image': AppImages.image,
      'title': "Sports Pick",
      'content':
          "We predict Man City to win based on home advantage, xG, and injuries.",
      'time': "2d",
    },
    {
      'image': AppImages.ai,
      'title': "Subscription Activated!",
      'content':
          "We predict Man City to win based on home advantage, xG, and injuries.",
      'time': "1d",
    },
    {
      'image': AppImages.share,
      'title': "Sports Pick",
      'content':
          "We predict Man City to win based on home advantage, xG, and injuries.",
      'time': "2d",
    },
    {
      'image': AppImages.ai,
      'title': "Subscription Activated!",
      'content':
          "We predict Man City to win based on home advantage, xG, and injuries.",
      'time': "1d",
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
              WidgetHeader(title: 'Notifications', width: 80.w),
              AppSizeBox.height20,
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          WidgetStatusBar(title: 'Today'),
                          Text('Mark all as read'),
                        ],
                      ),
                      AppSizeBox.height10,
                      Column(
                        children: today.map((today) {
                          return NotificationCard(
                            image: today['image'],
                            title: today['title'],
                            time: today['time'],
                            content: today['content'],
                          );
                        }).toList(),
                      ),
                      AppSizeBox.height20,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          WidgetStatusBar(title: 'Yesterday'),
                          Text('Mark all as read'),
                        ],
                      ),
                      AppSizeBox.height10,
                      Column(
                        children: yesterday.map((yesterday) {
                          return NotificationCard(
                            image: yesterday['image'],
                            title: yesterday['title'],
                            time: yesterday['time'],
                            content: yesterday['content'],
                          );
                        }).toList(),
                      ),
                      AppSizeBox.height10,
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
