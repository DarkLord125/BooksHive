import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function()? onTap;

  const Button({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.deepPurple, borderRadius: BorderRadius.circular(8)),
        padding: EdgeInsets.all(15),
        child: Center(
          child: Text(
            "Sign In",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
