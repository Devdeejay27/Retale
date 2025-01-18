import 'package:flutter/material.dart';
import 'package:retale/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Air Jordan',
        price: '245',
        imagePath: 'lib/images/Nike Air Jordan.png',
        description: "You've got the hops and speed-lace up in these shoes."),
    Shoe(
      name: 'Louis Vuitton',
      price: '250',
      imagePath: 'lib/images/Nike & LV.png',
      description: 'The forward-thinking design of his latest signature shoe.',
    ),
    Shoe(
      name: 'Air Strip',
      price: '240',
      imagePath: 'lib/images/Nike Air Strip.png',
      description: 'A secure midfootstrap suited for defensive plays.',
    ),
    Shoe(
      name: 'KD Treys',
      price: '255',
      imagePath: 'lib/images/Nike shoe.png',
      description: 'Bouncy cushioning paired with soft and supportive foam.',
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
