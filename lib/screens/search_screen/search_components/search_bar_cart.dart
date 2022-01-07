import 'package:ecommerce_ui/components/cart_icon_appbar.dart';
import 'package:ecommerce_ui/screens/search_screen/search_components/search_text_field.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class SearchBarWithCart extends StatelessWidget {
  const SearchBarWithCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: SearchTextField()),
        const SizedBox(
          width: 6.0,
        ),
        CartIconAppBar()
      ],
    );
  }
}
