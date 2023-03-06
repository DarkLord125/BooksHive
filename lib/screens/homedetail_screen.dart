import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:app/models/books.dart';

class HomeDetailScreen extends StatelessWidget {
  final Item catalog;

  const HomeDetailScreen({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Hero(
                tag: catalog.name,
                child: Image.network(
                  catalog.image,
                  fit: BoxFit.fitWidth,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 32,
              left: 22,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                    color: kDarkTheme,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                      child: Icon(
                    Icons.arrow_back,
                    color: kPrimaryColor,
                  )),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: size.height * 0.5,
              padding: EdgeInsets.only(top: 64),
              decoration: BoxDecoration(
                  color: kDarkTheme,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(right: 32, left: 32, bottom: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            catalog.name,
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              height: 1,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            catalog.author,
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 20,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 20,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 20,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 20,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 20,
                                      color: Colors.yellow,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                              child: SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            child: Text(
                              catalog.desc,
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          )),
                          Container(
                            height: 85,
                            width: size.width,
                            padding: EdgeInsets.only(
                                top: 16, left: 16, right: 16, bottom: 16),
                            decoration: BoxDecoration(
                                color: kDarkTheme,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [             
                             Container(
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Price : \₹${catalog.price}",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                Center(
                                  child: Container(
                                    width: size.width / 2 - 25,
                                    decoration: BoxDecoration(
                                      color: kSecondaryColor,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: kSecondaryColor.withOpacity(0.4),
                                          spreadRadius: 2,
                                          blurRadius: 2,
                                          offset: Offset(0, 0),
                                        )
                                      ],
                                    ),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Buy Now",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 32, bottom: (size.height * 0.5) - (85 / 2)),
              child: Card(
                elevation: 4,
                margin: EdgeInsets.all(0),
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(15),
                )),
                child: Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: NetworkImage(catalog.authorImage),
                    fit: BoxFit.cover,
                  )),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
