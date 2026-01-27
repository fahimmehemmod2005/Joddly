import 'package:flutter/material.dart';

class HomeDiscoverCard extends StatelessWidget {
  final String? icon;
  final String? title;
  final String? subtitle;
  final String? sideImage;
  final bool borderColor;
  final void Function()? onTap;
  const HomeDiscoverCard({
    super.key, 
    this.icon, 
    this.title, 
    this.subtitle, 
    this.sideImage, 
    this.borderColor = false, 
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 15.0),
        padding: const EdgeInsets.all(15.0),
        width: double.infinity,
        decoration: BoxDecoration(
          border: borderColor 
          ? Border.all(
            color: Color(0xff7C5BFD))
            : null,
          borderRadius: BorderRadius.circular(12.0),
          gradient: LinearGradient(
            colors: [
              Color(0xffF2EFFF),
              Color(0xffDFD7FF),
              Color(0xffF2EFFF),
              ]
          ),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    icon ?? "",
                    height: 18.0,
                    width: 18.0,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 20.0),
                Text(title ?? "",style: TextStyle(color: Colors.black,fontSize: 16.0,fontWeight: FontWeight.w600),),
                Text(subtitle ?? "",style: TextStyle(color: Color(0xff4A4C56),fontSize: 14.0,fontWeight: FontWeight.w400)),
              ],
            ),
            const Spacer(),
            Image.asset(sideImage ?? "")
          ],
        ),
      ),
    );
  }
}
