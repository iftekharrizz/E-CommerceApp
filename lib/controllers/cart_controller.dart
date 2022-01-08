import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CartDetails with ChangeNotifier{
  int _quantity=1;

  int get quantity => _quantity;

  void addQuantity () {
    _quantity++;
    notifyListeners();

  }
  void reduceQuantity () {
    _quantity>1?_quantity--:null;
    notifyListeners();
  }
}