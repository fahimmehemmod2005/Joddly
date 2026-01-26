import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String? label;
  final String? icon;
  final Color? textColor;
  final Color? iconColor;
  final Color? backgroundColor;
  final Color? borderColor;
  final VoidCallback? onPressed;
  final bool showGradient;
  final bool showIcon;

  const PrimaryButton({
    super.key,
    this.label,
    this.textColor,
    this.backgroundColor,
    this.onPressed,
    this.borderColor,
    this.showGradient = true,
    this.showIcon = false,
    this.iconColor,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100.0),
        ),
        elevation: 1,
      ),
      child: Container(
        height: 48.0,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor ?? Colors.transparent,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(100.0),
          color: showGradient ? null : backgroundColor, // color if no gradient
          gradient: showGradient
              ? const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff7C5BFD), Color(0xff24019C)],
                )
              : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (showIcon) ...[
              Image.asset(
                icon ?? '',
                height: 20.0,
                width: 20.0,
                color: iconColor,
              ),
              const SizedBox(width: 8),
            ],
            Text(
              label ?? "",
              style: TextStyle(
                color: textColor ?? Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
