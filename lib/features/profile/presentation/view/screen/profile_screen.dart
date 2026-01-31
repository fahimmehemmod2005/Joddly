import 'package:flutter/material.dart';
import 'package:joddly/app/routes/route_name.dart';
import 'package:joddly/app/widgets/custom_dialog_box.dart';
import 'package:joddly/core/constant/app_color.dart';
import 'package:joddly/core/constant/app_images.dart';
import 'package:joddly/core/constant/app_size_box.dart';
import 'package:joddly/core/constant/app_text_styles.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        leading: SizedBox(),
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              AppSizeBox.height20,
              InkWell(
                child: Row(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(AppImages.fahim),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    AppSizeBox.width15,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('MD Fahim Mehemmod',style: AppTextStyles.size18w700(color: Colors.black),),
                        Text('fahim@email.com',style: AppTextStyles.size14w400(color: AppColor.grayBlack),)
                      ],
                    ),
                    const Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),
                onTap: (){
                  Navigator.pushNamed(context, RouteName.editProfile);
                },
              ),
              AppSizeBox.height10,
              ListTile(
                leading: Image.asset(AppImages.settings,color: Colors.black,),
                title: Text('Account Settings'),
                titleTextStyle: AppTextStyles.size16w400(color: AppColor.grayBlack),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
                onTap: (){
                  Navigator.pushNamed(context, RouteName.accountSettings);
                }
              ),
              Divider(color: AppColor.normal,),
              ListTile(
                leading: Image.asset(AppImages.crown,color: Colors.black,),
                title: Text('Manage Subscription'),
                titleTextStyle: AppTextStyles.size16w400(color: AppColor.grayBlack),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
                onTap: (){
                  Navigator.pushNamed(context, RouteName.currentPlan);
                },
              ),
               Divider(color: AppColor.normal,),
              ListTile(
                leading: Image.asset(AppImages.download,color: Colors.black,),
                title: Text('Downloads'),
                titleTextStyle: AppTextStyles.size16w400(color: AppColor.grayBlack),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
                onTap: (){
                  Navigator.pushNamed(context, RouteName.downloadScreen);
                },
              ),
              Divider(color: AppColor.normal,),
              ListTile(
                leading: Image.asset(AppImages.notification,color: Colors.black,),
                title: Text('Push Notification'),
                titleTextStyle: AppTextStyles.size16w400(color: AppColor.grayBlack),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
                onTap: (){},
              ),
              Divider(color: AppColor.normal,),
              ListTile(
                leading: Image.asset(AppImages.logout,color: Colors.red,),
                title: Text('Account Settings'),
                titleTextStyle: AppTextStyles.size16w400(color:Colors.red),
                onTap: (){
                  showCustomDialog(
                      context: context,
                    showImage: false,
                    title: 'Logout',
                    subtitle: 'Are you sure want to logout?',
                    button1: 'Cancel',
                    button2: 'Logout',
                    onConfirm: (){
                        Navigator.pop(context);
                        Navigator.pushReplacementNamed(context, RouteName.login);
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
