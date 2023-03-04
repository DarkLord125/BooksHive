import 'package:flutter/material.dart';
import 'package:app/components/button.dart';
import 'package:app/utils/routes.dart';

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
          child: Container(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Welcome to Insta-Mall",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Discover endless possibilities with our catalog app - your ultimate shopping companion!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Image.asset(
                    "assets/images/start.png",
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
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
                            padding: EdgeInsets.all(15),
                            child: Center(
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
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
                            padding: EdgeInsets.all(15),
                            child: Center(
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ), // Custom Button
                        // ElevatedButton(onPressed: onPressed, child: child)
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
        ));
  }
}
