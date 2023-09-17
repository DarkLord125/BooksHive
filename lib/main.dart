import 'package:app/utils/auth_screen.dart';
import 'package:app/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'core/store.dart';
import 'screens/nav_app_bar.dart';
import 'screens/cart.dart';
import 'screens/signup_screen.dart';
import 'screens/start_screen.dart';
import 'utils/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); 
  runApp(
    VxState(store: MyStore(), child: MyApp()));
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
        MyRoutes.cartRoute: (context) => const CartScreen(),
      },
    );
  }
}
