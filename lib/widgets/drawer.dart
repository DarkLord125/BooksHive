import 'package:app/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final String imageUrl = "https://byuc.files.wordpress.com/2012/07/avat-2.jpg";

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
                  accountName: Text("Ashwin Nair"),
                  accountEmail: Text("hashwin381@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  )),
            ),
            ListTile(
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
            ListTile(
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
             ListTile(
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
            ListTile(
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
            ListTile(
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
