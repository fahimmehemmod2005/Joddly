import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joddly/app/routes/route_name.dart';
import 'package:joddly/app/widgets/custom_dialog_box.dart';
import 'package:joddly/app/widgets/widget_header.dart';
import 'package:joddly/core/constant/app_size_box.dart';

import '../../../../../core/constant/app_color.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/constant/app_text_styles.dart';

class AccountSettings extends StatefulWidget {
  const AccountSettings({super.key});

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              AppSizeBox.height5,
              WidgetHeader(title: 'Account Settings', width: 63.w),
              AppSizeBox.height10,
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColor.normal,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Image.asset(
                        AppImages.key,
                        color: Colors.black,
                      ),
                    ),
                    title: Text('Change Password'),
                    titleTextStyle: AppTextStyles.size16w400(
                      color: Colors.black,
                    ),
                    subtitle: Text('Update your account password'),
                    subtitleTextStyle: AppTextStyles.size14w400(
                      color: AppColor.grayBlack,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, RouteName.changePassword);
                },
              ),
              AppSizeBox.height10,
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColor.normal,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Image.asset(
                        AppImages.block,
                        color: Colors.black,
                      ),
                    ),
                    title: Text('Disable Account'),
                    titleTextStyle: AppTextStyles.size16w400(
                      color: Colors.black,
                    ),
                    subtitle: Text('Temporarily disable your account'),
                    subtitleTextStyle: AppTextStyles.size14w400(
                      color: AppColor.grayBlack,
                    ),
                  ),
                ),
                onTap: () {
                  showCustomDialog(
                      context: context,
                      showImage: false,
                      title: 'Disable Account',
                      subtitle: 'Are you sure you want to disable your account? ',
                      button1: 'Cancel',
                      button2: 'Disable',
                      onConfirm: (){
                        Navigator.pop(context);
                        Navigator.pushReplacementNamed(context, RouteName.login);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Your Account is Temporary Disable',
                              style: TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            backgroundColor: Color(0xff7C5BFD),
                            duration: const Duration(seconds: 2),
                            behavior: SnackBarBehavior.floating,
                            margin: const EdgeInsets.all(16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                          ),
                        );
                      }
                  );
                },
              ),
              AppSizeBox.height10,
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColor.normal,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.redAccent.withAlpha(50),
                      ),
                      child: Image.asset(
                        AppImages.delete,
                        color: Colors.red,
                      ),
                    ),
                    title: Text('Delete Account'),
                    titleTextStyle: AppTextStyles.size16w400(
                      color: Colors.red,
                    ),
                    subtitle: Text('Permanently delete your account'),
                    subtitleTextStyle: AppTextStyles.size14w400(
                      color: Colors.red,
                    ),
                  ),
                ),
                onTap: () {
                  showCustomDialog(
                      context: context,
                    showImage: false,
                    title: 'Delete Account',
                    subtitle: 'This action will permanently delete your account and all related data.',
                    button1: 'Cancel',
                    button2: 'Delete',
                    onConfirm: (){
                        Navigator.pop(context);
                        Navigator.pushReplacementNamed(context, RouteName.login);
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Your Account is Deleted',
                                style: TextStyle(fontSize: 16, color: Colors.white),
                              ),
                              backgroundColor: Color(0xff7C5BFD),
                              duration: const Duration(seconds: 2),
                              behavior: SnackBarBehavior.floating,
                              margin: const EdgeInsets.all(16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                            ),
                        );
                    }
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
