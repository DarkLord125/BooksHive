import 'package:app/widgets/item_widget.dart';
import 'package:flutter/foundation.dart';
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
        title: Center(child: Text("BooksHive")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
          ),
          itemBuilder: (context, index) {
            final item = Catalog.items[index];
            return Card(
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(8),
              //     side: BorderSide(color: Color.fromARGB(57, 134, 177, 245))),
              color: kDarkTheme,
              child: GridTile(
                child: Image.network(item.image),
              ),
            );
          },
          itemCount: Catalog.items.length,
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
