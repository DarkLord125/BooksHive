import 'package:flutter/material.dart';
import 'package:app/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData darkTheme(BuildContext context) => ThemeData(
      // primaryColor: kPrimaryColor,
      primarySwatch: Palette.kToDark,
      fontFamily: GoogleFonts.openSans().fontFamily,
      scaffoldBackgroundColor: kDarkTheme,
      textTheme: Theme.of(context).textTheme.apply(bodyColor: kPrimaryColor),
      // iconTheme: IconThemeData(color: klightTheme),
      appBarTheme: AppBarTheme(
        color: kDarkTheme,
        elevation: 0.0,
        iconTheme: IconThemeData(color: kPrimaryColor),
      ),
    );
  

  // static ThemeData darkTheme(BuildContext context) {
  //   return ThemeData.light().copyWith(
  //     primaryColor: kPrimaryColor,
  //     scaffoldBackgroundColor: kDarkTheme,
  //     appBarTheme: AppBarTheme(
  //       color: klightTheme,
  //       elevation: 0.0,
  //       iconTheme: IconThemeData(color: kDarkTheme),
  //     ),
  //   );
  // }
}
