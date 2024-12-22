import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nijaat_app/center/screens/center_sign_up.dart';
import 'package:nijaat_app/utils/custom_button.dart';
import 'package:nijaat_app/utils/input_text_feild.dart';

class CenterLogin extends StatelessWidget {
  const CenterLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Welcome Back",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Enter your credential to login",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 120),
              InputTextField(
                iconColor: const Color(0xff018749).withOpacity(0.6),
                leadingIcon: FontAwesomeIcons.user,
                hintText: 'Username',
              ),
              const SizedBox(height: 15),
              InputTextField(
                iconColor: const Color(0xff018749).withOpacity(.6),
                leadingIcon: Icons.password_outlined,
                hintText: 'Password',
              ),
              const SizedBox(height: 35),
              CustomButton(
                color: const Color(0xff018749).withOpacity(0.7),
                buttonText: "Login",
                onPressed: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "Forget Password?",
                  style: TextStyle(
                    color: const Color(0xff018749).withOpacity(0.6),
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(height: 100),
              RichText(
                text: TextSpan(
                  text: "Dn't have an account? ",
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Sign Up',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: const Color(0xff018749).withOpacity(0.7),
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const CenterSignUp()));
                        },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40)
            ],
          ),
        ),
      ),
    );
  }
}
