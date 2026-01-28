import 'package:flutter/material.dart';
import 'package:joddly/core/constant/app_color.dart';
import 'package:joddly/core/constant/app_images.dart';
import 'package:joddly/core/constant/app_size_box.dart';

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
                AppSizeBox.height5,
                SearchAndFilterField(),
                AppSizeBox.height15,
                TabBar(
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    gradient: AppColor.primaryGradient,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  dividerColor: Colors.transparent,
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
                  tabs: const [
                    _PillTab(text: 'All'),
                    _PillTab(text: 'Realistic'),
                    _PillTab(text: 'Sketches'),
                    _PillTab(text: 'Oil Painting'),
                  ],
                ),

                Expanded(
                  child: TabBarView(
                    children: [
                      Container(
                        color: Colors.white,
                        child: Icon(Icons.settings),
                      ),
                      Container(color: Colors.white, child: Icon(Icons.person)),
                      Container(color: Colors.white, child: Icon(Icons.home)),
                      Container(
                        color: Colors.white,
                        child: Icon(Icons.settings),
                      ),
                      Container(color: Colors.white, child: Icon(Icons.person)),
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

class _PillTab extends StatelessWidget {
  final String text;
  const _PillTab({required this.text});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(14)),
        child: Text(text,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
      ),
    );
  }
}
