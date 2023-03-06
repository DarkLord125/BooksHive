import 'package:app/widgets/item_widget.dart';
import 'package:app/widgets/author_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:app/screens/homedetail_screen.dart';
import 'package:flutter/material.dart';
import '/widgets/drawer.dart';
import 'package:app/models/books.dart';
import 'package:app/utils/colors.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final newList = List.generate(8, (index) => Catalog.items[7]);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("BooksHive"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Discover New Books",
                style: TextStyle(fontSize: 25.0),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
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
                          builder: (context) => HomeDetailScreen(
                            catalog: catalog
                            ))),
                      child: ItemWidget(
                        item: catalog));
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
            SizedBox(
                height: 30.0,
              ),
              
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [ 
                Text(
                    "Discover New Authors",
                    style: TextStyle(
                      fontSize: 25,
                      color: kPrimaryColor,
                    ),
                  ),

              SizedBox(
                height: 15.0,
              ),
                  Container(
                    height: 100,
                    margin: EdgeInsets.only(bottom: 16),
                    child: ListView.builder(
                    itemCount: Catalog.items.length,
                    itemBuilder: (context, index) {
                      final catalog = Catalog.items[index];
                      return AuthorWidget(
                        item: catalog);
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
      drawer: MyDrawer(),
    );
  }
}
