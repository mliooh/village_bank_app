import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        // Your path to\nawesome banking

        children: [
          Padding(
            padding: EdgeInsets.only(left: 30.0, top: 40),
            child: Text('Your path to\nawesome banking',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold)),
          ),

          SizedBox(
            height: 30,
          ),
          // sign in

          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text('Sign in',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
          ),
          // email textfield
          // passwordtextfield
          // forgot paasword
          // sign in button
        ],
      ),
    );
  }
}
