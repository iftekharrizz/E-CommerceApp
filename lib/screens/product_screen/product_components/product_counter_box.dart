import 'package:ecommerce_ui/controllers/cart_controller.dart';
import 'package:ecommerce_ui/controllers/user_info_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class ProductCounterBox extends StatelessWidget {
  ProductCounterBox({this.count});
  int? count;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 30,
        width: 63,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[200],
        ),
        child: Text(context.watch<CartDetails>().quantity.toString()),
      ),
    );
  }
}