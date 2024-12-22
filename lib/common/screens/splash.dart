// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:nijaat_app/common/screens/sign_in.dart';
import 'package:nijaat_app/constants/colors.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToMain();
  }

  void _navigateToMain() {
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const SignIn(),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: logobackcolor,
          child: Center(
            child: Image.asset("assets/images/logo.png"),
          )),
    );
  }
}
