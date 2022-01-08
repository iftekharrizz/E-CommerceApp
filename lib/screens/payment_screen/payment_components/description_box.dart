import 'package:flutter/material.dart';

import '../../../constants.dart';

class DescriptionBox extends StatelessWidget {
  const DescriptionBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Container(
        color: Colors.white,
        height: 150,
        width: double.infinity,
        child: Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Add Description",
                style: kSmallTextStyle,
              ),
              SizedBox(height: 8,),
              Container(
                height: 60,
                width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Color(
                          0xFF9B9B9C)),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(
                            0xFFAAAAAC)),
                        borderRadius: BorderRadius.circular(8)),
                    disabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(
                            0xFF908F8F)),
                        borderRadius: BorderRadius.circular(8)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade200),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}