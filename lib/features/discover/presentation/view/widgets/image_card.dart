import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String? photos;
  final void Function()? onTap;
  const ImageCard({super.key, this.photos, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 116.5,
        width: 116.5,
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          image: DecorationImage(
            image: AssetImage(photos ?? ''),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
