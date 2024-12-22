import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nijaat_app/center/screens/center_login.dart';
import 'package:nijaat_app/utils/custom_button.dart';
import 'package:nijaat_app/utils/input_text_feild.dart';

class CenterSignUp extends StatelessWidget {
  const CenterSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, bottom: 10, right: 40),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back_ios),
                  ),
                ),
              ),
              Container(
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xff018749).withOpacity(0.6),
                ),
                child: const Center(
                  child: Text(
                    "Center",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              const Text(
                "Sign Up",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Create your account",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 15),
              InputTextField(
                iconColor: const Color(0xff018749).withOpacity(0.6),
                leadingIcon: FontAwesomeIcons.user,
                hintText: 'Username',
              ),
              const SizedBox(height: 10),
              InputTextField(
                iconColor: const Color(0xff018749).withOpacity(.6),
                leadingIcon: Icons.email_outlined,
                hintText: 'Email',
              ),
              const SizedBox(height: 10),
              InputTextField(
                iconColor: const Color(0xff018749).withOpacity(.6),
                leadingIcon: FontAwesomeIcons.userCheck,
                hintText: 'UCG',
              ),
              const SizedBox(height: 10),
              InputTextField(
                iconColor: const Color(0xff018749).withOpacity(.6),
                leadingIcon: Icons.password_outlined,
                hintText: 'Password',
              ),
              const SizedBox(height: 10),
              InputTextField(
                iconColor: const Color(0xff018749).withOpacity(.6),
                leadingIcon: Icons.password_outlined,
                hintText: 'Confirm Password',
              ),
              const SizedBox(height: 25),
              CustomButton(
                color: const Color(0xff018749).withOpacity(0.7),
                buttonText: "Sign Up",
                onPressed: () {},
              ),
              const SizedBox(height: 5),
              const Text(
                "Or",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 5),
              CustomButton(
                color: Colors.white,
                borderColor: const Color(0xff018749).withOpacity(0.7),
                buttonText: "Sign in with Google",
                onPressed: () {},
              ),
              const SizedBox(height: 30),
              RichText(
                text: TextSpan(
                  text: "Already have an account? ",
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Login',
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
                                  builder: (_) => const CenterLogin()));
                        },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
