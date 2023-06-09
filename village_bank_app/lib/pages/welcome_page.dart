import 'package:flutter/material.dart';
import 'package:village_bank_app/components/my_button.dart';
import 'package:village_bank_app/pages/sign_in.dart';
import 'package:village_bank_app/pages/sign_up.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 'Welcome Back

              const Padding(
                padding: EdgeInsets.only(
                  left: 30.0,
                  top: 40,
                ),
                child: Text('Welcome \nBack',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold)),
              ),
              const Spacer(),
              // Sign in

              MyButton(
                  text: 'Sign in',
                  buttoncolor: Colors.white,
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const SignIn()),
                    );
                  },
                  gradient: const LinearGradient(
                    colors: [Color(0xFF4960F9), Color(0xFF1433FF)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  textcolor: Colors.white),

              const SizedBox(
                height: 20,
              ),
              // Sign up

              Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: MyButton(
                    text: 'Sign up',
                    buttoncolor: Colors.white,
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const SignUp()),
                      );
                    },
                    gradient: null,
                    textcolor: const Color(0xFF4960F9)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
