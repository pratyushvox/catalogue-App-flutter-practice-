import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://hips.hearstapps.com/hmg-prod/images/gettyimages-55653323-copy.jpg?crop=1xw:1.0xh;center,top&resize=640:*";

    return Drawer(
      child: Container(
        // Gradient background
      decoration: BoxDecoration(
        color: Colors.deepPurple,
      ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Pratyush khadka"),
                accountEmail: Text("pratyushkhadka@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
                decoration: BoxDecoration(color: Colors.transparent),
              ),
            ),
            // Home
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
                textScaler: TextScaler.linear(1.2),
              ),
            ),
            // Profile
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.white),
                textScaler: TextScaler.linear(1.2),
              ),
            ),
            // Email Me
            ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.white),
              title: Text(
                "Email Me",
                style: TextStyle(color: Colors.white),
                textScaler: TextScaler.linear(1.2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
