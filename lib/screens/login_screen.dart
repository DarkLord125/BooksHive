import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:app/widgets/button.dart';
import 'package:app/utils/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:quickalert/quickalert.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}


final _formKey = GlobalKey<FormState>();

final emailController = TextEditingController();
final passwordController = TextEditingController();



class _LoginScreenState extends State<LoginScreen> {
  // sign in method
  void signUserIn() async {
      QuickAlert.show(  
         context: context,
          type: QuickAlertType.loading,
          title: 'Loading',
          text: 'Fetching Your Data',
          );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      // Pop Loading Alert
      Navigator.pop(context);

    } on FirebaseAuthException catch (e) {

        Navigator.pop(context);

      if (e.code == 'user-not-found') {
        QuickAlert.show(  
         context: context,
          type: QuickAlertType.error,
          title: 'Oops...',
          text: 'Incorrect Email',
          );
      } else if (e.code == 'wrong-password') {
        QuickAlert.show(  
         context: context,
          type: QuickAlertType.error,
          title: 'Oops...',
          text: 'Incorrect Password',
          );
      }
      else{
        QuickAlert.show(  
         context: context,
          type: QuickAlertType.error,
          title: 'Oops...',
          text: 'User Not Found',
          );
      }



    }

    

    // if (_formKey.currentState!.validate()) {
    //   Navigator.pushNamed(context, MyRoutes.homeRoute);
    // }
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
                // key: _formKey,
                child: Column(
                  children: [
                    Text(
                      "Welcome Back",
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
                            style: TextStyle(color: kSecondaryColor),
                            controller: emailController,
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
                            // Form Validation
                            // validator: (value) {
                            //   if (value!.isEmpty) {
                            //     return "Username cannot be empty";
                            //   }
                            //   return null;
                            // },
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          TextFormField(
                            style: TextStyle(color: kSecondaryColor),
                            controller: passwordController,
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
                            // Form Validation
                            // validator: (value) {
                            //   if (value!.isEmpty) {
                            //     return "Password cannot be empty";
                            //   } else if (value.length < 8) {
                            //     return "Password cannot be less than 8 characters";
                            //   }
                            //   return null;
                            // }
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Button(
                            text: 'Sign In',
                            onTap: signUserIn,
                          ), // Custom Button
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
