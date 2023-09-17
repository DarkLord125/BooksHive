import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../core/store.dart';
import '../models/cart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkTheme,
      appBar: AppBar(
        backgroundColor: kDarkTheme,
        automaticallyImplyLeading: false,
        title: const Text(style: TextStyle(fontSize: 22), "Bag"),
      ),
      body: Column(children: [
        // Placeholder(),
        _CartList().p4().expand(),
        const Divider(
          color: kSecondaryColor,
        ),
        _CartTotal(),
      ]),
    );
  }
}

class _CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CartModel _cart = (VxState.store as MyStore).cart;
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VxBuilder(
            mutations: const {RemoveMutation},
            builder: (context, dynamic, _) {
              return "₹${_cart.totalPrice}"
                  .text
                  .xl5
                  .color(kPrimaryColor)
                  .make();
            },
          ),
          32.widthBox,
          ElevatedButton(
            onPressed: () {
              // _cart.items.isEmpty ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              //   content: "Purchase is not possible as cart is empty".text.make(),
              // )) 
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(kSecondaryColor),
            ),
            child: "Purchase".text.xl2.white.make(),
          ).h8(context).w40(context)
        ],
      ),
    );
  }
}

class _CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    return _cart.items.isEmpty
        ? "🛍️ Your Bag is Empty".text.xl3.makeCentered()
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (context, index) => ListTile(
                  leading:
                      Image.network(_cart.items[index].image, fit: BoxFit.fill),
                  trailing: IconButton(
                    icon: const Icon(
                      Icons.delete_rounded,
                      color: Colors.red,
                      size: 30,
                    ),
                    onPressed: () => RemoveMutation(_cart.items[index]),
                  ),
                  title: _cart.items[index].name.text.xl.make(),
                  contentPadding: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 16),
                )
                )
                ;
  }
}
