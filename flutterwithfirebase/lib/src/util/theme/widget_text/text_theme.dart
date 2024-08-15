import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TAppTextTheme{
  static TextTheme lightTextTheme=TextTheme(
  headlineSmall: GoogleFonts.montserrat(
    color: Colors.black,
    fontSize: 20
  ),
);
  static TextTheme darkTextTheme=TextTheme(
  headlineSmall: GoogleFonts.montserrat(
    color: Colors.white,
    fontSize: 20
  ),
);
}