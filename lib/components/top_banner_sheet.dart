

import 'package:flutter/material.dart';

class TopBannerSheet extends StatelessWidget {
  String? bannerHeading;
  String? descriptionText;

  TopBannerSheet({this.bannerHeading, this.descriptionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 166.0,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Color(0xFF7BCFE9),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(18.0),
            bottomRight: Radius.circular(18.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              bannerHeading!,
              style: const TextStyle(
                  fontSize: 22.0,
                  color: Colors.white,
                  fontFamily: "Nunito-regular"),
            ),
            Text(
              descriptionText!,
              style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.white,
                  fontFamily: "Nunito-regular"),
              softWrap: true,
            )
          ],
        ),
      ),
    );
  }
}