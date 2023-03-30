import 'package:app/utils/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:username_gen/username_gen.dart';


class MyDrawer extends StatelessWidget {
  final String imageUrl = "https://byuc.files.wordpress.com/2012/07/avat-2.jpg";
  final user = FirebaseAuth.instance.currentUser!;
  // Random User Nick-name Generator
  final username = UsernameGen.generateWith(
    data: UsernameGenData(
        names: ['Nitai','Roshan','Bilal','Bharat'],
        adjectives: ['Amazing','Wonderful','Stunning','Mind-Blowing'],
    ),
    seperator: '_'
);


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: kDarkTheme,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text(username),
                  accountEmail: Text(user.email!),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  )),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: kPrimaryColor,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: kPrimaryColor,
                  ),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.search,
                color: kPrimaryColor,
              ),
              title: Text(
                "Explore",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: kPrimaryColor,
                  ),
              ),
            ),
             const ListTile(
              leading: Icon(
                CupertinoIcons.headphones,
                color: kPrimaryColor,
              ),
              title: Text(
                "Audiobooks",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: kPrimaryColor,
                  ),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.book_fill,
                color: kPrimaryColor,
              ),
              title: Text(
                "Comics",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: kPrimaryColor,
                  ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.settings,
                color: kPrimaryColor,
              ),
              title: Text(
                "Settings",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: kPrimaryColor,
                  ),
              ),
            ), 
          ],
        ),
      ),
    );
  }
}
