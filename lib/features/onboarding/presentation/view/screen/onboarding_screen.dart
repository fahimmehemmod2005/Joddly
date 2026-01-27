import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../../app/widgets/primary_button.dart';
import '../../../../../core/constant/app_images.dart';
import '../../viewmodel/onboarding_view_model.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final onboarding = [
    {
      'image': AppImages.onboarding1,
      'title': 'Unleash your creative\npower and ideas',
      'subtitle':
          'Turn your ideas into stunning visuals with AI create and share your art effortlessly.',
    },
    {
      'image': AppImages.onboarding2,
      'title': 'Explore Infinite\ncreations by AI Artists',
      'subtitle':
          'Discover stunning AI-generated art, get inspired, and explore creations from around the world.',
    },
    {
      'image': AppImages.onboarding3,
      'title': 'Unleash your creative\npower and ideas',
      'subtitle':
          'Turn your ideas into stunning visuals with AI create and share your art effortlessly.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<OnboardingViewModel>(
      builder: (context, provider, child) {
        return Scaffold(
          body: Stack(
            children: [
              // Background PageView
              PageView.builder(
                controller: provider.pageController,
                itemCount: onboarding.length,
                onPageChanged: provider.onPageChanged,
                itemBuilder: (context, index) {
                  return Image.asset(
                    onboarding[index]['image']!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  );
                },
              ),

              // Bottom content
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    children: [
                      // this takes remaining space instead of fixed 550
                      const Spacer(flex: 9),

                      Text(
                        onboarding[provider.currentIndex]['title']!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff070707),
                        ),
                      ),

                      10.verticalSpace,

                      Text(
                        onboarding[provider.currentIndex]['subtitle']!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff4A4C56),
                        ),
                      ),

                      20.verticalSpace,

                      // Indicator
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          onboarding.length,
                          (index) => AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: EdgeInsets.symmetric(horizontal: 4.w),
                            height: 8.h,
                            width:
                                provider.currentIndex == index ? 28.w : 8.w,
                            decoration: BoxDecoration(
                              color: provider.currentIndex == index
                                  ? const Color(0xff7C5BFD)
                                  : const Color(0xffE0E0E0),
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                          ),
                        ),
                      ),

                      const Spacer(flex: 2),

                      // Buttons
                      Row(
                        children: [
                          Expanded(
                            child: PrimaryButton(
                              showGradient: false,
                              backgroundColor: Colors.transparent,
                              borderColor: const Color(0xff7C5BFD),
                              textColor: Colors.black,
                              label: 'Skip',
                              onPressed: () {
                                provider.skip(context);
                              },
                            ),
                          ),
                          15.horizontalSpace,
                          Expanded(
                            child: PrimaryButton(
                              textColor: Colors.white,
                              label: provider.currentIndex ==
                                      onboarding.length - 1
                                  ? "Get Started"
                                  : "Continue",
                              onPressed: () {
                                provider.nextPage(onboarding.length, context);
                              },
                            ),
                          ),
                        ],
                      ),

                      10.verticalSpace,
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
