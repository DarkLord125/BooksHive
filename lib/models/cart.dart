import 'package:velocity_x/velocity_x.dart';

import '../core/store.dart';
import 'books.dart';

class CartModel {
  // catalog field
  late Catalog _catalog;

  // Collection of IDs
  final List<int> _itemIds = [];

  // Get Catalog
  Catalog get catalog => _catalog;

  set catalog(Catalog newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(this.item);
  @override
  perform() {
    store?.cart._itemIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  final Item item;

  RemoveMutation(this.item);
  @override
  perform() {
    store?.cart._itemIds.remove(item.id);
  }
}
