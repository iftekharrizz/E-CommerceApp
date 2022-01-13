import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class Cart {
  String? productName, productSize, productPrice;
  var productQuantity;
  double? rating;
  Color? productColor;
  String? productImage;
  int? discount;

  Cart(
      {this.productName,
      this.productColor,
      this.productImage,
      this.productSize,
      this.productPrice,
      this.productQuantity,
      this.rating,
      this.discount});
  final quantity = 1.obs;
}

List<Cart> cartItem = [
  Cart(
      productName: "Shirt1",
      productImage: "images/pictures/headphone2.png",
      productPrice: '23',
      productColor: const Color(0xFFF6625E),
      productQuantity: 7,
      productSize: "S",
      rating: 4.7,
      discount: 35,
  ),
  Cart(
      productName: "pant",
      productImage: "images/pictures/headphone4.png",
      productPrice: '13',
      productColor: const Color(0xFFF6625E),
      productQuantity: 4,
      productSize: "L",
      rating: 2.7,
    discount: 25,),
  Cart(
      productName: "dress",
      productPrice: '53',
      productImage: "images/pictures/headphone7.png",
      productColor: const Color(0xFFF6625E),
      productQuantity: 1,
      productSize: "M",
      rating: 3.7,
    discount: 45,),
  Cart(
      productName: "computer",
      productImage: "images/pictures/headphone4.png",
      productPrice: '17',
      productColor: const Color(0xFFF6625E),
      productQuantity: 17,
      productSize: "XL",
      rating: 3.7,
    discount: 20,),
  Cart(
      productName: "headphone",
      productImage: "images/pictures/headphone6.png",
      productPrice: '66',
      productColor: Color(0xFFF6625E),
      productQuantity: 17,
      productSize: "M",
      rating: 3.7,
    discount: 80,),
  Cart(
      productName: "headphone003",
      productImage: "images/pictures/headphone2.png",
      productPrice: '54',
      productColor: Color(0xFFF6625E),
      productQuantity: 17,
      productSize: "S",
      rating: 3.7,
    discount: 60,),
  Cart(
      productName: "again headphone",
      productPrice: '43',
      productImage: "images/pictures/headphone.jpg",
      productColor: Color(0xFFF6625E),
      productQuantity: 17,
      productSize: "M",
      rating: 3.7,
    discount: 48,),
  Cart(
      productName: "more headphone",
      productImage: "images/pictures/headphone3.png",
      productPrice: '23',
      productColor: Color(0xFFF6625E),
      productQuantity: 17,
      productSize: "M",
      rating: 3.7,
    discount: 10,),
  Cart(
      productName: "headphone all the way",
      productImage: "images/pictures/headphone4.png",
      productPrice: '45',
      productColor: Color(0xFFF6625E),
      productQuantity: 17,
      productSize: "M",
      rating: 3.7,
    discount: 0,),
];

List<Cart> cartlist = [
  Cart(
    productName: "test product",
    productQuantity: 2,
    productImage: "image/icons/google.png",
    productSize: "M",
    productPrice: '34',
    rating: 1.6,
  )
];


