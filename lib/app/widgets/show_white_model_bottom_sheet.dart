import 'dart:ui';

import 'package:flutter/material.dart';

Future<dynamic> showWhiteModelBottomSheet({
  required BuildContext context,
  Widget? child
}) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return BackdropFilter(
        filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5
        ),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: child
          ),
        ),
      );
    },
  );
}