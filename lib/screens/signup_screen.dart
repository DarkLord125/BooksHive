import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:app/widgets/button.dart';
import 'package:quickalert/quickalert.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:app/utils/routes.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  // Sign User Up
  void signUserUp() async {
    if (passwordController.text != confirmPasswordController.text) {
      QuickAlert.show(
        context: context,
        type: QuickAlertType.error,
        title: 'Oops...',
        text: "Passwords Don't Match",
      );
    }
    if (emailController.text == "" ||
        passwordController.text == "" ||
        confirmPasswordController.text == "") {
      QuickAlert.show(
        context: context,
        type: QuickAlertType.error,
        title: 'Oops...',
        text: 'No Account Created',
      );
    }

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      QuickAlert.show(
        context: context,
        type: QuickAlertType.success,
        text: 'Account Created Successfully',
        confirmBtnText: 'Okay',
        onConfirmBtnTap: () =>
            Navigator.pushReplacementNamed(context, MyRoutes.loginRoute),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code != 'user-not-found') {
        QuickAlert.show(
          context: context,
          type: QuickAlertType.error,
          title: 'Oops...',
          text: 'Already such account exists',
        );
      }
    }
    passwordController.clear();
    confirmPasswordController.clear();
    emailController.clear();

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
                child: Column(
                  children: [
                    // SizedBox(
                    //   height: 40.0,
                    // ),
                    Text(
                      "Create Your Account",
                      style: TextStyle(
                        color: kSecondaryColor,
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
                            controller: emailController,
                            style: TextStyle(color: kSecondaryColor),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.deepPurple)),
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: "Enter Your Email Address",
                              labelText: "Email Address",
                              // suffixIcon: IconButton(
                              //    onPressed: emailController.clear,
                              //    icon: Icon(Icons.clear,color: kSecondaryColor,),
                              //      ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          TextFormField(
                            controller: passwordController,
                            style: TextStyle(color: kSecondaryColor),
                            obscureText: true,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.deepPurple)),
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: "Enter Your Password",
                              labelText: "Password",
                              // suffixIcon: IconButton(
                              //    onPressed: passwordController.clear,
                              //    icon: Icon(Icons.clear,color: kSecondaryColor,),
                              //      ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          TextFormField(
                            controller: confirmPasswordController,
                            style: TextStyle(color: kSecondaryColor),
                            obscureText: true,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.deepPurple)),
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: "Enter Your Password",
                              labelText: "Confirm Password",
                              // suffixIcon: IconButton(
                              //    onPressed: confirmPasswordController.clear,
                              //    icon: Icon(Icons.clear,color: kSecondaryColor,),
                              //      ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Button(
                            text: 'Sign Up',
                            onTap: signUserUp,
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
