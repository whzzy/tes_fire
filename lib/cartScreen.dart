import 'package:flutter/material.dart';
import 'package:tes_fire/main.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          cartItems.removeAt(cartItems.length - 1);
          setState(() {});
        },
      ),
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: (cartItems.length == 0
          ? Text("No items")
          : ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) => Text("${cartItems[index]}"))),
    );
  }
}

List cartItems = [];
