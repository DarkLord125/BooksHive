import 'package:flutter/material.dart';

// const DarkTheme = Color(0xFFF5FCF9);
const kDarkTheme = Color(0xFF1D1D35);
const kNav = Color.fromARGB(255, 44, 44, 75);
const kPrimaryColor = Color.fromARGB(255, 206, 176, 245);
const kSecondaryColor = Color.fromARGB(255, 146, 74, 240);
// const kSecondaryColor = Color(0xFFFE9901);
const klightTheme = Color(0xFFF5FCF9);

class Palette {
  static const MaterialColor kToDark = MaterialColor(
    0xFF1D1D35, 
    <int, Color>{
      50: Color(0xFF1D1D35), //10%
      100:Color(0xFF1D1D35), //20%
      200:Color(0xFF1D1D35), //30%
      300:Color(0xFF1D1D35), //40%
      400:Color(0xFF1D1D35), //50%
      500:Color(0xFF1D1D35), //60%
      600:Color(0xFF1D1D35), //70%
      700:Color(0xFF1D1D35), //80%
    },
  );
}
