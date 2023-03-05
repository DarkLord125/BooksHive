import 'package:flutter/material.dart';
import 'package:app/widgets/button.dart';
import 'package:app/utils/routes.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final _formKey = GlobalKey<FormState>();

class _LoginScreenState extends State<LoginScreen> {
  // sign in method
  void signUserIn() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushNamed(context, MyRoutes.homeRoute);
    }
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
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    // SizedBox(
                    //   height: 40.0,
                    // ),
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Image.asset(
                      "assets/images/login.png",
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
                                  borderSide:
                                      BorderSide(color: Colors.deepPurple)),
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: "Enter Your Username",
                              labelText: "Username",
                            ),
                            // Form Validation
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Username cannot be empty";
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.deepPurple)),
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Enter Your Password",
                                labelText: "Password",
                              ),
                              // Form Validation
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Password cannot be empty";
                                } else if (value.length < 8) {
                                  return "Password cannot be less than 8 characters";
                                }
                                return null;
                              }),
                          SizedBox(
                            height: 20.0,
                          ),
                          Button(
                            onTap: signUserIn,
                          ), // Custom Button
                          // ElevatedButton(onPressed: onPressed, child: child)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )),
        ));
  }
}
