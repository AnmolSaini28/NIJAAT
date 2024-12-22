import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nijaat_app/common/widgets/bottom_navigation_bar.dart';
import 'package:nijaat_app/common/widgets/drawer.dart';
import 'package:nijaat_app/common/widgets/home_tiles.dart';
import 'package:nijaat_app/constants/colors.dart';

class UserHomepage extends StatefulWidget {
  const UserHomepage({super.key});

  @override
  State<UserHomepage> createState() => _UserHomepageState();
}

class _UserHomepageState extends State<UserHomepage> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> tiles = [
      {
        "color": homeTile1,
        "icon": FontAwesomeIcons.capsules,
        "text": "View \nPrescription",
      },
      {
        "color": homeTile2,
        "icon": FontAwesomeIcons.file,
        "text": "\nMy Records",
      },
      {
        "color": homeTile3,
        "icon": FontAwesomeIcons.calendarCheck,
        "text": "Book \nAppointment",
      },
      {
        "color": homeTile4,
        "icon": FontAwesomeIcons.database,
        "text": "Upload \nDocuments",
      },
    ];

    int selectedInBottomNav = 0;

    //for set new screens(for bottom navigation bar)
    void switchScreen(int id) {
      setState(
        () {
          selectedInBottomNav = id;
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "NIJAAT",
          style: TextStyle(
            fontSize: 48,
            color: bottomText,
          ),
        ),
        backgroundColor: primaryColor,
        iconTheme: const IconThemeData(
          color: bottomText,
          opticalSize: 24,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              backgroundImage: const AssetImage("assets/images/user.png"),
              backgroundColor: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
      drawer: const CustomDrawer(),
      bottomNavigationBar: BottomNavigation(
        selectedItem: selectedInBottomNav,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Blogs",
              style: TextStyle(
                fontSize: 20,
                color: textColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            Container(
              width: double.infinity,
              height: 185,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffBAD8B7),
              ),
              child: Image.asset("assets/images/sucess.png"),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              "Our Services",
              style: TextStyle(
                fontSize: 20,
                color: textColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: tiles.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  return HomeTiles(
                    color: tiles[index]["color"],
                    icon: tiles[index]["icon"],
                    text: tiles[index]["text"],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
