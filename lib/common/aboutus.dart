import 'package:flutter/material.dart';
import 'package:nijaat_app/constants/colors.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor, // Light cream background
      appBar: AppBar(
        backgroundColor: primaryColor, // Green color
        title: const Text(
          'NIJAAT',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 16),
                  const Text(
                    'Our App',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF388E3C), // Dark green
                    ),
                  ),
                  const SizedBox(height: 16),
                  Image.asset(
                    'lib/common/assets/logo.png', // Replace with your image path
                    height: constraints.maxWidth > 600 ? 200 : 150,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Your comprehensive solution for breaking free from addiction and fostering a healthier, addiction-free lifestyle.\n\n'
                    'Our app is designed to bridge the gap between rehabilitation centers, psychiatrists, and individuals struggling with addiction, creating a unified online platform that empowers users on their journey to recovery.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.5,
                      color: bottomText,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF388E3C), // Dark green
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital),
            label: 'Centre',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.warning, color: Colors.red),
            label: 'SOS',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Event',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Appointment',
          ),
        ],
      ),
    );
  }
}
