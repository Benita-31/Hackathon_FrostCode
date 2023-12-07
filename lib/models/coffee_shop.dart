import 'package:flutter/material.dart';
import 'coffee.dart';

class CoffeeShop extends ChangeNotifier
{
  final List<Coffee> _shop = [
    Coffee(
    name: 'Scheme 1' ,
    price: "", 
    imagePath: "lib/images/black.png",),

    Coffee(
    name: 'Scheme 2' ,
    price: "", 
    imagePath: "lib/images/latte.png",),

    Coffee(
    name: 'Scheme 3' ,
    price: "", 
    imagePath: "lib/images/espresso.png",),

    Coffee(
    name: 'Scheme 4' ,
    price: "", 
    imagePath: "lib/images/iced_coffee.png",),
  ];

List<Coffee>  _userCart =[];
List<Coffee> get coffeeShop => _shop;
List<Coffee> get userCart => _userCart;
void addItemToCart(Coffee coffee)
{
  _userCart.add(coffee);
  notifyListeners();
}
void removeItemFromCart(Coffee coffee)
{
  _userCart.remove(coffee);
  notifyListeners();
}
}