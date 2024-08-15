import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

import "widget_text/text_theme.dart";

class TAppTheme{

  // making private to prevent user to access using instance of class
  TAppTheme._();

  static ThemeData lightTheme=ThemeData(
brightness: Brightness.light,
textTheme:TAppTextTheme.lightTextTheme,
  );
   static ThemeData darktheme=ThemeData(
    brightness: Brightness.dark,
    textTheme: TAppTextTheme.darkTextTheme
   );

}