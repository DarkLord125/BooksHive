import 'package:app/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/start_screen.dart';
import 'utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // themeMode: ThemeMode.light,
      theme: MyTheme.darkTheme(context),

          // fontFamily: GoogleFonts.openSans().fontFamily
  
      routes: {
        "/": (context) => HomeScreen(),
        MyRoutes.homeRoute: (context) => HomeScreen(),
        MyRoutes.loginRoute: (context) => LoginScreen(),
        MyRoutes.signupRoute:(context) => SignupScreen(),
        MyRoutes.startRoute: (context) => StartScreen(),
      },
    );
  }
}
