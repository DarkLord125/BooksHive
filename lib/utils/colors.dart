import 'package:flutter/material.dart';

// const DarkTheme = Color(0xFFF5FCF9);
const kDarkTheme = Color(0xFF1D1D35);
const kPrimaryColor = Color.fromARGB(255, 206, 176, 245);
// const kSecondaryColor = Color(0xFFFE9901);
const klightTheme = Color(0xFFF5FCF9);

class Palette {
  static const MaterialColor kToDark = const MaterialColor(
    0xFF1D1D35, 
    const <int, Color>{
      50: const Color(0xFF1D1D35), //10%
      100: const Color(0xFF1D1D35), //20%
      200: const Color(0xFF1D1D35), //30%
      300: const Color(0xFF1D1D35), //40%
      400: const Color(0xFF1D1D35), //50%
      500: const Color(0xFF1D1D35), //60%
      600: const Color(0xFF1D1D35), //70%
      700: const Color(0xFF1D1D35), //80%
      // 800: const Color(0xFF1D1D35), //90%
      // 900: const Color(0xFF1D1D35), //100%
    },
  );
}
