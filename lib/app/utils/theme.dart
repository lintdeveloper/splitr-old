import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splitr/app/utils/utils.dart';


final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: BLUE_HUE,
  fontFamily: GoogleFonts.lato().fontFamily,
  scaffoldBackgroundColor: Colors.white,
  bottomSheetTheme: BottomSheetThemeData(
    backgroundColor: Colors.blueGrey[50],
  ),
);
