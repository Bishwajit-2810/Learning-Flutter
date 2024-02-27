import 'package:basic_ui/widgets/loginbutton.dart';
import 'package:basic_ui/widgets/socialbutton.dart';
import 'package:basic_ui/widgets/textfeilds.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset("assets/images/signin_balls.png"),
              const Text(
                "Sign in",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              const SocialButton(
                iconpath: "assets/svgs/g_logo.svg",
                iconlabel: "Continue with Google",
              ),
              const SizedBox(
                height: 20,
              ),
              const SocialButton(
                iconpath: "assets/svgs/f_logo.svg",
                iconlabel: "Continue with Facebook",
                horizontalpadding: 90,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Or",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Textfeilds(
                hinttext: "email",
              ),
              const SizedBox(
                height: 15,
              ),
              const Textfeilds(
                hinttext: "password",
              ),
              const SizedBox(
                height: 20,
              ),
              const LoginButon(),
            ],
          ),
        ),
      ),
    );
  }
}
