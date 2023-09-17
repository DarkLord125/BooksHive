import 'package:app/models/books.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/cart.dart';

class MyStore extends VxStore {
  late Catalog catalog;
  late CartModel cart;

  MyStore() { 
    catalog = Catalog();
    cart = CartModel();
    cart.catalog = catalog;
  }
}
