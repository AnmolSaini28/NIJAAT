import 'package:flutter/material.dart';
import 'package:nijaat_app/constants/colors.dart';
import 'dart:async';

class Sign_in extends StatelessWidget {
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
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              OptionButton(
                label: 'User',
                imagePath:
                    'lib/common/assets/user.png', // Replace with the actual path
                onTap: () {
                  // Navigate to the User screen
                  print("User button tapped");
                },
              ),
              const SizedBox(height: 20),
              OptionButton(
                label: 'Doctor',
                imagePath:
                    'lib/common/assets/doctor.png', // Replace with the actual path
                onTap: () {
                  // Navigate to the Doctor screen
                  print("Doctor button tapped");
                },
              ),
              const SizedBox(height: 20),
              OptionButton(
                label: 'Center',
                imagePath:
                    'lib/common/assets/center.png', // Replace with the actual path
                onTap: () {
                  // Navigate to the Center screen
                  print("Center button tapped");
                },
              ),
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
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imagePath,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              label,
              style: const TextStyle(fontSize: 16, color: Colors.teal),
            ),
          ),
        ],
      ),
    );
  }
}
