import 'package:flutter/material.dart';

import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {
  final List<Coffee> shop = [

    Coffee(name: 'Long Black',
        Price: '4.50', imagepath: 'lib/images/longblack.jpg'
    ),
    Coffee(name: 'Lattie',
        Price: '4.90', imagepath: 'lib/images/lattee.jpg'

    ),
    Coffee(name: 'Espresso',
        Price: '3.10', imagepath: 'lib/images/espresso.jpg'
    ),
    Coffee(name: 'Iced Coffee',
        Price: '6.20', imagepath: 'lib/images/ice coff.jpg'
    ),
    Coffee(name: 'Black Coffee',
        Price: '5.00', imagepath: 'lib/images/blckcoffee.jpg'
    ),
  ];
  List<Coffee> UserCart = [];
  List<Coffee> get coffeeshop => shop;
  List<Coffee> get userCart => UserCart;

  void AddItemToCart (Coffee coffee){
    UserCart.add(coffee);
    notifyListeners();
  }

  void removeItemFromCart(Coffee coffee){
    UserCart.remove(coffee);
    notifyListeners();
  }
}