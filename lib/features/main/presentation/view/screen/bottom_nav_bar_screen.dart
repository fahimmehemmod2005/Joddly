import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joddly/core/constant/app_color.dart';
import 'package:joddly/core/constant/app_images.dart';
import 'package:joddly/features/ai/presentation/view/screen/ai_friend_chat.dart';
import 'package:joddly/features/discover/presentation/view/screen/discover_screen.dart';
import 'package:joddly/features/home/presentation/view/screen/home_screen.dart';
import 'package:joddly/features/profile/presentation/view/screen/profile_screen.dart';
import 'package:provider/provider.dart';
import '../../viewmodel/bottom_nav_view_model.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  var screens = const [
    HomeScreen(),
    DiscoverScreen(),
    HomeScreen(),
    AiFriendChat(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavViewModel>(
      builder: (context, provider, child) {
        return Scaffold(
          body: screens[provider.currentIndex],
          bottomNavigationBar: SafeArea(
            bottom: true,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 14),
              child: Container(
                height: 85.h,
                padding: const EdgeInsets.symmetric(horizontal: 18),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColor.borderColor),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _navItem(provider, AppImages.home, "Home", 0),
                    _navItem(provider, AppImages.discover, "Discover", 1),
                    _centerButton(provider, () => provider.changeIndex(2)),
                    _navItem(provider, AppImages.message, "Chat", 3),
                    _navItem(provider, AppImages.profile, "Profile", 4),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

Widget _navItem(
  BottomNavViewModel provider,
  String icon,
  String label,
  int index,
) {
  final isActive = provider.currentIndex == index;

  return GestureDetector(
    onTap: () => provider.changeIndex(index),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          icon,
          height: 24,
          width: 24,
          color: isActive ? const Color(0xff6C4BFF) : Colors.grey,
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: isActive ? const Color(0xff6C4BFF) : Colors.grey,
          ),
        ),
      ],
    ),
  );
}

Widget _centerButton(BottomNavViewModel provider, void Function()? onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 46,
      width: 66,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(99),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xff9785F5), Color(0xff24019C)],
        ),
      ),
      child: Center(
        child: Image.asset(
          AppImages.ai,
          height: 28,
          width: 28,
          color: Colors.white,
        ),
      ),
    ),
  );
}
