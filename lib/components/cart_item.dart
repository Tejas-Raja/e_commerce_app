import 'package:adidas_app/models/cart.dart';
import 'package:adidas_app/models/clothes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Clothes clothes;
  CartItem({
    super.key,
    required this.clothes,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  //remove item from the cart
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false)
        .removeItemFromCart(widget.clothes);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.clothes.imagePath),
        title: Text(widget.clothes.name),
        subtitle: Text(widget.clothes.price),
        trailing: IconButton(
          onPressed: removeItemFromCart,
          icon: Icon(Icons.delete),
        ),
      ),
    );
  }
}
