import 'package:app/screens/nav_app_bar.dart';
import 'package:app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // user logged in
          if (snapshot.hasData) {
            return HomeScreen();
          } else {
            emailController.clear();
            passwordController.clear();
            return LoginScreen();
          }
        },
      ),
    );
  }
}
