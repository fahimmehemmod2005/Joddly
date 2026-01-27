import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../core/constant/app_text_styles.dart';

class InputField extends StatelessWidget {
  final String? topLabel;
  final String? hintText;
  final IconData? icon;
  final void Function()? onSuffixTap;
  final Widget? prefixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final int? maxLine;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool obscureText;
  final TextInputType? keyboardType;

  const InputField({
    super.key,
    this.hintText,
    this.contentPadding,
    this.maxLine = 1,
    this.controller,
    this.topLabel,
    this.prefixIcon,
    this.validator,
    this.icon,
    this.onSuffixTap,
    this.obscureText = false,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (topLabel != null)
          Text(
            topLabel!,
            style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xffB2B5B8))
          ),
        SizedBox(height: 10.0),

        TextFormField(
          keyboardType: keyboardType,
          obscureText: obscureText,
          cursorColor: Colors.black,
          validator: validator,
          controller: controller,
          maxLines: maxLine,
          style: const TextStyle(color: Colors.black),
          decoration: InputDecoration(

            // Normal border
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Color(0xffDFE1E7),
                width: 1.5
              ),
            ),

            // Focused border (selected / active)
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Color(0xff4A4C56),
                width: 1.5,
              ),
            ),

            // Optional: Error border
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: CupertinoColors.systemRed,
                width: 1.5,
              ),
            ),

            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: CupertinoColors.systemRed,
                width: 1.5,
              ),
            ),

            prefixIcon: prefixIcon,
            suffixIcon: icon == null
                ? null
                : IconButton(
              icon: Icon(icon, color: Color(0xff25314C)),
              onPressed: onSuffixTap,
            ),

            hintText: hintText,
            hintStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff4A4C56)),
            contentPadding: contentPadding ??
                const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            errorStyle: const TextStyle(
              color: CupertinoColors.systemRed,
              fontSize: 12,
              height: 1.2,
            ),
            errorMaxLines: 2,
          ),
        )
      ],
    );
  }
}

