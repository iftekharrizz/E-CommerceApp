import 'package:flutter/material.dart';

class ProductColorCircle extends StatelessWidget {
  ProductColorCircle({this.color,this.isSelected,this.onClick});
  Color? color;
  bool? isSelected;
  VoidCallback? onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        margin:EdgeInsets.only(right: 4),
        padding: EdgeInsets.all(2),
        height:30,
        width: 30,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: isSelected == true ? color!: Colors.transparent),
          shape: BoxShape.circle
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,

          ),
        ),
      ),
    );
  }
}

class CartColorDot extends StatelessWidget {
 CartColorDot({this.colorCode});
 Color? colorCode;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15.0,
      width: 15.0,
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: colorCode,
        ),
      ),
    );
  }
}

