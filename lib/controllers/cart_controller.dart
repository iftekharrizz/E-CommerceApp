import 'package:ecommerce_ui/models/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartDetails with ChangeNotifier {
  int _quantity = 1;
  int get quantity => _quantity;

  final List<Cart>? _bucket = [];

  List<Cart>? get bucket => _bucket;

  void addItem({
    String? productName,
    String? productSize,
    String? productPrice,
    int? productQuantity,
    double? rating,
    Color? productColor,
    String? productImage,
  }) {
    _bucket!.add(Cart(
      productName: productName,
      productPrice: productPrice,
      productSize: productSize,
      productColor: productColor,
      productImage: productImage,
      productQuantity: productQuantity,
      rating: rating,
    ));
    notifyListeners();
  }

  void removeItem(int index){
    _bucket!.removeAt(index);
    notifyListeners();
  }

  void addQuantity() {
    _quantity++;
    notifyListeners();
  }

  void reduceQuantity() {
    _quantity > 1 ? _quantity-- : null;
    notifyListeners();
  }

  int quantityValue = 1;
  void quantityNumber(){

  }
}
