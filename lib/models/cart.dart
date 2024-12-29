import 'package:adidas_app/models/clothes.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  //list of clothes for sale
  List<Clothes> clothesShop = [
    Clothes(
      name: 'Classic Street Hoodie',
      description: 'The timeless hoodie for ultimate streetwear vibes.',
      price: '200',
      imagePath: 'lib/images/1.webp',
    ),
    Clothes(
      name: 'Urban Edge Hoodie',
      price: '160',
      description: 'A sleek and stylish hoodie perfect for city life.',
      imagePath: 'lib/images/2.jpg',
    ),
    Clothes(
      name: 'Midnight Vibe Hoodie',
      price: '180',
      description: 'Chill in style with this ultra-comfy, all-cotton hoodie.',
      imagePath: 'lib/images/3.jpg',
    ),
    Clothes(
      name: 'Sleek Comfort Hoodie',
      price: '220',
      description: 'Wrap yourself in luxury with this top-quality hoodie.',
      imagePath: 'lib/images/4.jpg',
    ),
  ];

  //list of items in user cart
  List<Clothes> userCart = [];

  //get list of clothes for sale
  List<Clothes> getClothesList() {
    return clothesShop;
  }

  //get cart
  List<Clothes> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Clothes clothes) {
    userCart.add(clothes);
    notifyListeners();
  }

  //remove items from cart
  void removeItemFromCart(Clothes clothes) {
    userCart.remove(clothes);
    notifyListeners();
  }
}
