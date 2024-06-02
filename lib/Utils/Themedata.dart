import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themeData(theme){
  return ThemeData(

    textTheme: GoogleFonts.latoTextTheme(theme.textTheme).copyWith(
      bodyMedium: GoogleFonts.poppins(textStyle: theme.textTheme.bodyMedium),
    ),
  );
}