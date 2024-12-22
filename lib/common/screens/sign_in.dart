import 'package:flutter/material.dart';
import 'package:nijaat_app/center/screens/center_sign_up.dart';
import 'package:nijaat_app/constants/colors.dart';
import 'package:nijaat_app/user/user_signUp.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFCF5), // Light cream background
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome to NIJAAT App',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w600,
                  color: textColor,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              OptionButton(
                label: 'User',
                imagePath: 'assets/images/users.png',
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UserSignup(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              OptionButton(
                label: 'Doctor',
                imagePath:
                    'assets/images/doctor.png', // Replace with the actual path
                onTap: () {
                  // Navigate to the Doctor screen
                  print("Doctor button tapped");
                },
              ),
              const SizedBox(height: 20),
              OptionButton(
                label: 'Center',
                imagePath:
                    'assets/images/center.png', // Replace with the actual path
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CenterSignUp(),
                    ),
                  );
                },
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class OptionButton extends StatelessWidget {
  final String label;
  final String imagePath;
  final VoidCallback onTap;

  const OptionButton({
    super.key,
    required this.label,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(28),
            child: Image.asset(
              imagePath,
              height: 130,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
            decoration: BoxDecoration(
              color: textFieldColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              label,
              style: const TextStyle(fontSize: 24, color: Colors.teal),
            ),
          ),
        ],
      ),
    );
  }
}
