import 'package:flutter/material.dart';
import 'package:joddly/core/constant/app_color.dart';
import 'package:joddly/core/constant/app_size_box.dart';
import 'package:joddly/features/discover/presentation/view/screen/digital_art.dart';
import 'package:joddly/features/discover/presentation/view/screen/oil_painting.dart';
import 'package:joddly/features/discover/presentation/view/screen/realistic_portraits.dart';
import 'package:joddly/features/discover/presentation/view/screen/sketches.dart';
import 'all_photos.dart';
import '../widgets/search_and_filter_field.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppSizeBox.height10,
                SearchAndFilterField(),
                AppSizeBox.height15,
                TabBar(
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    gradient: AppColor.primaryGradient,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: const Color(0xFF6B7280),
                  labelStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  unselectedLabelStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  splashBorderRadius: BorderRadius.circular(14),
                  tabs: [
                    pillTab('All'),
                    pillTab('Realistic'),
                    pillTab('Sketches'),
                    pillTab('Oil Painting'),
                    pillTab('Digital Art'),
                  ],
                ),
                AppSizeBox.height20,
                Expanded(
                  child: TabBarView(
                    children: [
                      AllPhotos(),
                      RealisticPortraits(),
                      Sketches(),
                      OilPainting(),
                      DigitalArt()
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

Tab pillTab(String text) {
  return Tab(
    child: Container(
      padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14)
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
    ),
  );
}