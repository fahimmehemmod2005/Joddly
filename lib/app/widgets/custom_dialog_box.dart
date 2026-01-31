import 'dart:ui';
import 'package:flutter/material.dart';

void showCustomDialog({
  required BuildContext context,
  String? title,
  String? subtitle,
  void Function()? onConfirm,
  String? image,
  String? button2,
  String? button1,
  bool? showImage
}) {
  showDialog(
    context: context,
    builder: (context) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Dialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 25,
                horizontal: 20
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if(showImage ?? true)
                Container(
                  height: 150.0,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    image: DecorationImage(
                      image: AssetImage(image ?? ''),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0,),
                // Title
                Text(
                  title ?? "",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    fontWeight: FontWeight.w700
                   ),
                ),
                const SizedBox(height: 10),

                // Subtitle
                Text(
                  subtitle ?? "",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),),
                const SizedBox(height: 25),

                // Buttons
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          minimumSize: Size(double.infinity, 48),
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          button1 ?? '',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 48),
                          backgroundColor: Color(0xffECEFF3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        onPressed: onConfirm,
                        child: Text(
                          button2 ?? '',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0,),
              ],
            ),
          ),
        ),
      );
    },
  );
}
