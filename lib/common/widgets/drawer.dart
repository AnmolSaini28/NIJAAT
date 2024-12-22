import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nijaat_app/constants/colors.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.only(top: 60),
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back_ios),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            color: primaryColor,
            width: double.infinity,
            height: 170,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/user.png",
                  width: 90,
                  height: 90,
                ),
                const Text(
                  'Name',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: ListTile(
              leading: const Icon(
                FontAwesomeIcons.arrowRightToBracket,
              ),
              title: const Text('Login'),
              onTap: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: ListTile(
              leading: const Icon(
                FontAwesomeIcons.clipboard,
              ),
              title: const Text('My Activities'),
              onTap: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: ListTile(
              leading: const Icon(
                FontAwesomeIcons.circleInfo,
              ),
              title: const Text('About Us'),
              onTap: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: ListTile(
              leading: const Icon(
                FontAwesomeIcons.phone,
              ),
              title: const Text('Contact Us'),
              onTap: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 20,
            ),
            child: Divider(
              color: primaryColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: ListTile(
              leading: const Icon(
                FontAwesomeIcons.userPlus,
              ),
              title: const Text('Invite your friend'),
              onTap: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: ListTile(
              leading: const Icon(
                FontAwesomeIcons.solidStar,
              ),
              title: const Text('Rate Us'),
              onTap: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: ListTile(
              leading: const Icon(FontAwesomeIcons.arrowLeft),
              title: const Text('Log Out'),
              onTap: () {},
            ),
          )
        ],
      ),
    );
  }
}
