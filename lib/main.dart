import 'package:app/utils/auth_screen.dart';
import 'package:app/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/homedetail_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/start_screen.dart';
import 'utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.darkTheme(context),

      routes: {
        "/": (context) => StartScreen(),
        MyRoutes.homeRoute: (context) => HomeScreen(),
        MyRoutes.loginRoute: (context) => AuthPage(),
        MyRoutes.signupRoute: (context) => SignupScreen(),
        MyRoutes.startRoute: (context) => StartScreen(),
      },
    );
  }
}
