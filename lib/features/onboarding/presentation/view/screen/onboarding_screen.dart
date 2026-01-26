import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../../app/widgets/primary_button.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/constant/app_size_box.dart';
import '../../viewmodel/onboarding_view_model.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  var onboarding = [
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
              // PageView
              PageView.builder(
                controller: provider.pageController,
                itemCount: onboarding.length,
                onPageChanged: provider.onPageChanged,
                itemBuilder: (context, index) {
                  return Image.asset(
                    onboarding[index]['image']!,
                    fit: BoxFit.cover,
                  );
                },
              ),

              // Bottom content
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const SizedBox(height: 550.0),
                      Text(
                        onboarding[provider.currentIndex]['title']!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff070707),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        onboarding[provider.currentIndex]['subtitle']!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4A4C56),
                        ),
                      ),

                      AppSizeBox.height20,

                      // Indicator
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          onboarding.length,
                          (index) => AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            height: 8.h,
                            width: provider.currentIndex == index ? 30.w : 8.w,
                            decoration: BoxDecoration(
                              color: provider.currentIndex == index
                                  ? Color(0xff7C5BFD)
                                  : Color(0xffE0E0E0),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),

                      const Spacer(),

                      Row(
                        children: [
                          Expanded(
                            child: PrimaryButton(
                              showGradient: false,
                              backgroundColor: Colors.transparent,
                              borderColor: Color(0xff7C5BFD),
                              textColor: Colors.black,
                              label: 'Skip',
                              onPressed: () {
                                provider.skip(context);
                              },
                            ),
                          ),
                          const SizedBox(width: 15.0),
                          Expanded(
                            child: PrimaryButton(
                              textColor: Colors.white,
                              label: provider.currentIndex == onboarding.length - 1
                                  ? "Get Started"
                                  : "Continue",
                              onPressed: () {
                                provider.nextPage(onboarding.length, context);
                              },
                            ),
                          ),
                        ],
                      ),
                      AppSizeBox.height10,
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

