import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inrest_app/themes/color_themes.dart';
import 'package:inrest_app/themes/default_themes.dart';

TextStyle tittleLoginPage = GoogleFonts.elsieSwashCaps(
  fontWeight: FontWeight.bold,
  fontSize: figmaFontsize(30),
);

TextStyle nameLoginPage = GoogleFonts.poppins(
    fontWeight: FontWeight.w600, fontSize: figmaFontsize(16));

TextStyle forgotLoginPage = GoogleFonts.poppins(
    fontSize: figmaFontsize(12),
    fontWeight: FontWeight.w400,
    color: forgotColor);

TextStyle buttonLoginPage = GoogleFonts.poppins(
    fontSize: figmaFontsize(15),
    color: whiteColor,
    fontWeight: FontWeight.w600);

TextStyle chipLoginPage = GoogleFonts.poppins(
    fontSize: figmaFontsize(12),
    color: blackColor,
    fontWeight: FontWeight.w400);
