import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joddly/app/widgets/widget_header.dart';
import 'package:joddly/core/constant/app_color.dart';
import 'package:joddly/core/constant/app_images.dart';
import 'package:joddly/core/constant/app_size_box.dart';
import 'package:joddly/core/constant/app_text_styles.dart';

class AiFriendChat extends StatefulWidget {
  const AiFriendChat({super.key});

  @override
  State<AiFriendChat> createState() => _AiFriendChatState();
}

class _AiFriendChatState extends State<AiFriendChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ai Friend'),
        centerTitle: true,
        leading: SizedBox(),
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSizeBox.height5,
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColor.normal,
                            ),
                            child: Center(
                              child: Image.asset(
                                AppImages.logo1,
                                height: 18,
                                width: 18,
                                color: AppColor.primaryColorSecondary,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          AppSizeBox.width15,
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(15.0),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    color: AppColor.normal,
                                  ),
                                  child: Text(
                                    '''Hi! I'm your AI assistant. I can help you create amazing images, answer questions about AI art, and provide tips for better prompts. How can I help you today?''',
                                    style: AppTextStyles.size14w400(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Text('10:20 AM'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      AppSizeBox.height20,
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(15.0),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    color: Color(0xff9785F5).withAlpha(70),
                                  ),
                                  child: Text(
                                    '''Hi! I'm your AI assistant. I can help you create amazing images, answer questions about AI art, and provide tips for better prompts. How can I help you today?''',
                                    style: AppTextStyles.size14w400(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Text('10:21 AM'),
                              ],
                            ),
                          ),
                          AppSizeBox.width15,
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: AppColor.primaryGradient,
                            ),
                            child: Center(
                              child: Image.asset(
                                AppImages.profile,
                                height: 18,
                                width: 18,
                                color: Colors.white,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ],
                      ),
                      AppSizeBox.height5,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            padding: EdgeInsets.only(left: 15.0),
            width: double.infinity,
            decoration: BoxDecoration(
                color: AppColor.normal,
                borderRadius: BorderRadius.circular(10.0)
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: TextFormField(
                    maxLines: 10,
                    minLines: 1,
                    decoration: InputDecoration(
                        hintText: 'Type your Message...',
                        border: InputBorder.none
                    ),
                  ),
                ),
                IconButton(
                  icon: Image.asset(AppImages.attach,
                    height: 24,
                    width: 24,),
                  onPressed: (){},
                ),
                IconButton(
                  icon: Image.asset(AppImages.sent,
                    height: 24,
                    width: 24,),
                  onPressed: (){},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
