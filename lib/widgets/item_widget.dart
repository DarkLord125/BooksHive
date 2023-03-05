import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../models/books.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(57, 134, 177, 245),
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name, textScaleFactor: 1.17,),
        subtitle: Text(item.author, style: TextStyle(color: Colors.white70)),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.2,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
