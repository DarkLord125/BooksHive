import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../models/books.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(right: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 220,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: Colors.white54),
                image: DecorationImage(
                  image: NetworkImage(item.image),
                  fit: BoxFit.cover
                )
              ),
            )
          ],
        ),
      ),
    );




    // ListTile(
    //   leading: Image.network(item.image),
    //   title: Text(item.name, textScaleFactor: 1.17,),
    //   subtitle: Text(item.author, style: TextStyle(color: Colors.white70)),
    //   trailing: Text(
    //     "\$${item.price}",
    //     textScaleFactor: 1.2,
    //     style: TextStyle(fontWeight: FontWeight.bold),
    //   ),
    // );
  }
}
