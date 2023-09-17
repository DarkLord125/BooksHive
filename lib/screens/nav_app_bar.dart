import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '/widgets/drawer.dart';
import 'package:app/utils/colors.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:quickalert/quickalert.dart';
import 'cart.dart';
import 'home.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

    void signUserOut() {
    QuickAlert.show(
      context: context,
      type: QuickAlertType.confirm,
      text: 'Do you want to logout',
      confirmBtnText: 'Yes',
      onConfirmBtnTap: () => signOut(),
      cancelBtnText: 'No',
      onCancelBtnTap: () => Navigator.pop(context),
      confirmBtnColor: Colors.green,
    );
  }

  void signOut() {
    FirebaseAuth.instance.signOut();
    Navigator.of(context).popUntil(
      (route) => route.isFirst,
    );
  }

 
  int _index = 0;
  List<Widget> screens = [
    const Home(),
    const Home(),
    const CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        actions: [
          IconButton(
            onPressed: signUserOut,
            icon: const Icon(Icons.logout),
          ),
        ],
        centerTitle: true,
        title: const Text("BooksHive"),
      ),
      body: screens[_index],
      bottomNavigationBar: Container(
        color: kDarkTheme,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: GNav(
              backgroundColor: kNav,
              color: kSecondaryColor,
              activeColor: kPrimaryColor,
              gap: 6,
              selectedIndex: _index,
              onTabChange: (index) {
                setState(() {
                  _index = index;
                });
              },
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                  iconSize: 31,
                  textSize: 35,
                ),
                GButton(
                  icon: Icons.bookmark_border,
                  text: 'Bookmark',
                  iconSize: 31,
                  textSize: 35,
                ),
                GButton(
                  icon: Icons.shopping_bag_outlined,
                  text: 'Bag',
                  iconSize: 31,
                  textSize: 35,
                ),
              ],
            ),
          ),
        ),
      ), 
      drawer: MyDrawer(),
    );
  }
}
