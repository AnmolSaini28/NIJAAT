import 'package:flutter/material.dart';
import 'package:nijaat_app/common/aboutus.dart';
import 'package:nijaat_app/common/sign_in.dart';
import 'package:nijaat_app/common/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AboutUs(),
    );
  }
}
