import 'package:flutter/material.dart';
import 'package:joddly/app/routes/route_name.dart';
import 'package:joddly/app/widgets/title_subtitle_bar.dart';
import 'package:joddly/app/widgets/widget_status_bar.dart';
import 'package:joddly/core/constant/app_color.dart';
import 'package:joddly/core/constant/app_images.dart';
import 'package:joddly/core/constant/app_size_box.dart';
import 'package:joddly/core/constant/app_text_styles.dart';
import 'package:joddly/features/main/presentation/view/widgets/home_discover_card.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TitleSubtitleBar(
                    title: "Welcome, Fahim",
                    subtitle: "Let's create something smazing",
                  ),
                  Spacer(),
                  IconButton(
                    icon: Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.borderColor,
                        image: DecorationImage(
                          image: AssetImage(AppImages.fahim),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              AppSizeBox.height25,
              WidgetStatusBar(title: 'Discover'),
              AppSizeBox.height25,
              HomeDiscoverCard(
                borderColor: true,
                icon: AppImages.art,
                title: 'AI Art Generator',
                subtitle: 'Create stunning artwork with Al',
                sideImage: AppImages.layer1,
                onTap: () {
                  Navigator.pushReplacementNamed(context, RouteName.bottomNavScreen);
                },
              ),
              HomeDiscoverCard(
                icon: AppImages.ai,
                title: 'AI Sketch',
                subtitle: 'Transform ideas into sketches',
                sideImage: AppImages.layer2,
                onTap: () {
                  Navigator.pushReplacementNamed(context, RouteName.bottomNavScreen);
                },
              ),
              HomeDiscoverCard(
                icon: AppImages.message,
                title: 'AI Friend',
                subtitle: 'Chat with your Al companion',
                sideImage: AppImages.layer3,
                onTap: () {},
              ),
              Container(
                height: 100.0,
                width: double.infinity,
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff9785F5),
                      Color(0xff7C5BFD),
                      Color(0xff24019C),
                    ],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.primaryColor,
                      ),
                      child: Image.asset(
                        AppImages.achive,
                        height: 18.0,
                        width: 18.0,
                        color: Colors.white,
                      ),
                    ),
                    AppSizeBox.width20,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Premium Features',
                          style: AppTextStyles.size16w600(color: Colors.white),
                        ),
                        Text(
                          'Download your creations in high quality',
                          style: AppTextStyles.size14w400(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              AppSizeBox.height10,
            ],
          ),
        ),
      ),
    );
  }
}
