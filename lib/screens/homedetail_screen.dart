import 'package:app/core/store.dart';
import 'package:app/models/cart.dart';
import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:app/models/books.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailScreen extends StatelessWidget {
  final Item catalog;

  const HomeDetailScreen({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Hero(
              tag: catalog.name,
              child: Image.network(
                catalog.image,
                fit: BoxFit.fitWidth,
              )),
          Padding(
            padding: const EdgeInsets.only(
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
                  decoration: const BoxDecoration(
                    color: kDarkTheme,
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
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
              padding: const EdgeInsets.only(top: 64),
              decoration: const BoxDecoration(
                  color: kDarkTheme,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(
                          right: 32, left: 32, bottom: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            catalog.name,
                            style: const TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              height: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            catalog.author,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              children: [
                                Row(
                                  children: const [
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
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                              child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Text(
                              catalog.desc,
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          )),
                          Container(
                            height: 85,
                            width: size.width,
                            padding: const EdgeInsets.only(
                                top: 16, left: 16, right: 16, bottom: 16),
                            decoration: const BoxDecoration(
                                color: kDarkTheme,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Price : ₹${catalog.price}",
                                        style: const TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                _AddToCart(catalog: catalog, size: size),
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
                margin: const EdgeInsets.all(0),
                clipBehavior: Clip.antiAlias,
                shape: const RoundedRectangleBorder(
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

class _AddToCart extends StatelessWidget {
  final Item catalog;
  const _AddToCart({
    required this.catalog,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation, RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    bool isAddedInCart = _cart.items.contains(catalog);
    return Center(
      child: ElevatedButton(
        // minimumSize: Size(200, 50),
        onPressed: () {
          if (!isAddedInCart) {
            AddMutation(catalog);
          }
        },
        child: Container(
          width: size.width / 2 - 48,
          decoration: BoxDecoration(
            color: kSecondaryColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: kSecondaryColor.withOpacity(0.4),
                spreadRadius: 2,
                blurRadius: 2,
                offset: const Offset(0, 0),
              )
            ],
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  isAddedInCart ? "Added To Bag" : "Add To Bag",
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
