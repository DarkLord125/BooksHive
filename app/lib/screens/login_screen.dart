import 'package:flutter/material.dart';
import 'package:app/components/button.dart';

class LoginScreen extends StatelessWidget {

  // sign in method
  void signUserIn(){

  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Column(
          children: [
            Image.asset("assets/images/login.png",
            fit: BoxFit.cover,
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Welcome Back", 
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:16.0, horizontal: 32.0),
                child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepPurple)
                      ),
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
                        borderSide: BorderSide(color: Colors.black)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepPurple)
                      ),
                      fillColor: Colors.grey.shade100,
                      filled: true,
                    hintText: "Enter Your Password",
                    labelText: "Password",
                  ),
                ),
                 SizedBox(
                height: 20.0,
                  ),
                  Button(onTap: signUserIn,
                  ),  // Custom Button
                  // ElevatedButton(onPressed: onPressed, child: child)
                ],),
              )
        
          ],
          ),
      )
    );
  }
}