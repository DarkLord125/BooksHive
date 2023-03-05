class Catalog {
  static final items = [
    Item(
      id: 1,
      name: "Why We Sleep",
      author: "Matthew Walker",
      desc: "More than exercise, diet and wealth, science has shown that sleep is the most important factor to our physical and mental wellbeing.",
      price: 307,
      image: "https://m.media-amazon.com/images/I/41+Gyr3XsvS._SL500_.jpg",
    ),
    Item(
      id: 2,
      name: "The Almanack of Naval Ravikant",
      author: "Eric ",
      desc: "More than exercise, diet and wealth, science has shown that sleep is the most important factor to our physical and mental wellbeing.",
      price: 307,
      image: "https://m.media-amazon.com/images/I/41ZZY5+kzLL.jpg",
    ),
    Item(
      id: 3,
      name: "Why We Sleep",
      author: "Matthew Walker",
      desc: "More than exercise, diet and wealth, science has shown that sleep is the most important factor to our physical and mental wellbeing.",
      price: 307,
      image: "https://miro.medium.com/max/500/0*g7ZN3ljjyRqHM1Yw.jpg",
    ),
    Item(
      id: 4,
      name: "Why We Sleep",
      author: "Matthew Walker",
      desc: "More than exercise, diet and wealth, science has shown that sleep is the most important factor to our physical and mental wellbeing.",
      price: 307,
      image: "https://m.media-amazon.com/images/I/41J8G2fqy9L.jpg",
    ),
    Item(
      id: 5,
      name: "Why We Sleep",
      author: "Matthew Walker",
      desc: "More than exercise, diet and wealth, science has shown that sleep is the most important factor to our physical and mental wellbeing.",
      price: 307,
      image: "https://m.media-amazon.com/images/I/71mEBbXOMxL.jpg",
    ),
    Item(
      id: 6,
      name: "Why We Sleep",
      author: "Matthew Walker",
      desc: "More than exercise, diet and wealth, science has shown that sleep is the most important factor to our physical and mental wellbeing.",
      price: 307,
      image: "https://m.media-amazon.com/images/I/71k+6XWQelL.jpg",
    ),
     Item(
      id: 7,
      name: "Why We Sleep",
      author: "Matthew Walker",
      desc: "More than exercise, diet and wealth, science has shown that sleep is the most important factor to our physical and mental wellbeing.",
      price: 307,
      image: "https://m.media-amazon.com/images/I/71k+6XWQelL.jpg",
    ),
     Item(
      id: 8,
      name: "Why We Sleep",
      author: "Matthew Walker",
      desc: "More than exercise, diet and wealth, science has shown that sleep is the most important factor to our physical and mental wellbeing.",
      price: 307,
      image: "https://m.media-amazon.com/images/I/71k+6XWQelL.jpg",
    ),
  ];
}

class Item {
  final int id;
  final String name;
  final String author;
  final String desc;
  final num price;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.author,
      required this.desc,
      required this.price,
      required this.image});
}
