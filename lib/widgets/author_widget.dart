import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../models/books.dart';

class AuthorWidget extends StatelessWidget {
  final Item item;

  const AuthorWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(right: 16, left: 16),
      width: 260,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Card(
            elevation: 4,
            margin: EdgeInsets.all(0),
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Container(
              width: 75,
              height: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(item.authorImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.author,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.library_books,
                    color: Colors.white,
                    size: 14,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    item.books.toString() + " books",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
