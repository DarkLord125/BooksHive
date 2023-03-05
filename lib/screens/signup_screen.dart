import 'package:flutter/material.dart';
import 'package:app/widgets/button.dart';
import 'package:app/utils/routes.dart';

class SignupScreen extends StatelessWidget {
  void signUserUp() {
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context, MyRoutes.startRoute);
            },
            icon: Icon(
              Icons.arrow_back_outlined,
              size: 24,
              color: Colors.black,
            ),
          ),
        ),
        body: SafeArea(
          child: Container(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // SizedBox(
                  //   height: 40.0,
                  // ),
                  Text(
                    "Create Your Account",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Image.asset(
                    "assets/images/signup.png",
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 32.0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.deepPurple)),
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: "Enter Your Username",
                            labelText: "Username",
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.deepPurple)),
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: "Enter Your Password",
                            labelText: "Password",
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.deepPurple)),
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: "Enter Your Password",
                            labelText: "Re-enter Password",
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Button(
                          onTap: signUserUp,
                        ), // Custom Button
                        // ElevatedButton(onPressed: onPressed, child: child)
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
        )
    );
  }
}