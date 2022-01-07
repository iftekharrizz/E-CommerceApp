import 'package:ecommerce_ui/constants.dart';
import 'package:flutter/material.dart';

class ProductSizeBox extends StatelessWidget {
  ProductSizeBox({this.sizeLetter, this.onClick, this.selectedColor});
  String? sizeLetter;
  VoidCallback? onClick;
  Color? selectedColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          height: 30,
          width: 30,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: selectedColor,
          ),
          child: Text(
            sizeLetter!,
            style: TextStyle(
                color:
                    selectedColor == kActiveClr ? Colors.white : Colors.black),
          ),
        ),
      ),
    );
  }
}
