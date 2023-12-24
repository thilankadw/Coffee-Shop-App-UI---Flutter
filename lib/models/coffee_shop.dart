import 'package:flutter/material.dart';
import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {
  //coffee for sale list
  final List<Coffee> _shop = [
    //black coffee
    Coffee(
      name: 'Long Black',
      price: "4.10",
      imagePath: "lib/images/icon1.png",
    ),

    //latte
    Coffee(
      name: 'Loatte',
      price: "4.20",
      imagePath: "lib/images/icon2.png",
    ),

    //espresso
    Coffee(
      name: 'Espresso',
      price: "3.50",
      imagePath: "lib/images/icon3.png",
    ),

    //iced coffee
    Coffee(
      name: 'Iced Coffee',
      price: "4.10",
      imagePath: "lib/images/icon4.png",
    ),
  ];

  //user cart
  List<Coffee> _userCart = [];

  //get coffee list
  List<Coffee> get coffeeShop => _shop;

  //get user cart
  List<Coffee> get userCart => _userCart;

  //add item to cart
  void addItemmTocart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove item from cart
  void removeItemmTocart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
