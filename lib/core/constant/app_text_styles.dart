import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle size40w700({Color? color}) => GoogleFonts.dmSans(fontSize: 40, fontWeight: FontWeight.w700, color: color,);
  static TextStyle size24w700({Color? color}) => GoogleFonts.dmSans(fontSize: 24, fontWeight: FontWeight.w700, color: color,);
  static TextStyle size14w400({Color? color}) => GoogleFonts.dmSans(fontSize: 14, fontWeight: FontWeight.w400, color: color,);
  static TextStyle size14w600({Color? color}) => GoogleFonts.dmSans(fontSize: 14, fontWeight: FontWeight.w600, color: color,);
  static TextStyle size16w600({Color? color}) => GoogleFonts.dmSans(fontSize: 16, fontWeight: FontWeight.w600, color: color,);
  static TextStyle size16w700({Color? color}) => GoogleFonts.dmSans(fontSize: 16, fontWeight: FontWeight.w700, color: color,);
  static TextStyle size16w400({Color? color}) => GoogleFonts.dmSans(fontSize: 16, fontWeight: FontWeight.w400, color: color,);
  static TextStyle size18w700({Color? color}) => GoogleFonts.dmSans(fontSize: 18, fontWeight: FontWeight.w700, color: color,);
  static TextStyle size28w500({Color? color}) => GoogleFonts.dmSans(fontSize: 28, fontWeight: FontWeight.w500, color: color,);
  static TextStyle size20w600({Color? color}) => GoogleFonts.dmSans(fontSize: 20, fontWeight: FontWeight.w600, color: color,);

}

extension TextStyleExtension on TextStyle {TextStyle withColor(Color color) => copyWith(color: color);}
