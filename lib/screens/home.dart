import 'package:app/widgets/item_widget.dart';
import 'package:app/widgets/author_widget.dart';
import 'package:app/screens/homedetail_screen.dart';
import 'package:flutter/material.dart';
import 'package:app/models/books.dart';
import 'package:app/utils/colors.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   // sign user out

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Discover New Books",
                style: TextStyle(fontSize: 25.0),
              ),
              const SizedBox(
                height: 15.0,
              ),
              SizedBox(
                width: double.infinity,
                height: 300.0,
                child: ListView.builder(
                  itemCount: Catalog.items.length,
                  itemBuilder: (context, index) {
                    final catalog = Catalog.items[index];
                    return InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    HomeDetailScreen(catalog: catalog))),
                        child: ItemWidget(item: catalog));
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Discover New Authors",
                    style: TextStyle(
                      fontSize: 25,
                      color: kPrimaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    height: 100,
                    margin: const EdgeInsets.only(bottom: 16),
                    child: ListView.builder(
                      itemCount: Catalog.items.length,
                      itemBuilder: (context, index) {
                        final catalog = Catalog.items[index];
                        return AuthorWidget(item: catalog);
                      },
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // drawer: MyDrawer(),
    );
  }
}