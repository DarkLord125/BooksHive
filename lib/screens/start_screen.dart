import 'package:flutter/material.dart';
import 'package:app/utils/routes.dart';

import '../utils/colors.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.0),
            child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "Welcome to BooksHive",
                style: TextStyle(
                  color: kSecondaryColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Escape into a world of knowledge and imagination with our books app. Explore bestsellers, classics, and hidden gems, all at your fingertips.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Image.asset(
                "assets/images/start.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.loginRoute);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(50)),
                        padding: const EdgeInsets.all(15),
                        child: const Center(
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.signupRoute);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(50)),
                        padding: const EdgeInsets.all(15),
                        child: const Center(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ), // Custom Button
                    // ElevatedButton(onPressed: onPressed, child: child)
                  ],
                ),
              )
            ],
          ),
            ),
          ),
        ));
  }
}
