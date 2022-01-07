import 'package:flutter/material.dart';

class CounterOperator extends StatelessWidget {
  CounterOperator({this.operator, this.onClick});
  IconData? operator;
  VoidCallback? onClick;

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
              color: Colors.grey[200],
            ),
            child: Icon(
              operator!,
              size: 14,
            )),
      ),
    );
  }
}