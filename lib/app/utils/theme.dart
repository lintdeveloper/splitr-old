import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splitr/app/utils/utils.dart';


final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.blueGrey[900],
  cursorColor: GREEN_HUE,
  fontFamily: GoogleFonts.lato().fontFamily,
  scaffoldBackgroundColor: LIGHT_BLUE_ACCENT,
  bottomSheetTheme: BottomSheetThemeData(
    backgroundColor: Colors.blueGrey[50],
  ),
);
