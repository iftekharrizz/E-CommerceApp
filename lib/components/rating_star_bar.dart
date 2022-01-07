import 'package:flutter/material.dart';

typedef void RatingChangeCallback(double rating);

class StarRating extends StatelessWidget {
  final int starCount;
  final double rating;
  final RatingChangeCallback? onRatingChanged;

  StarRating({this.starCount = 5, this.rating = .0, this.onRatingChanged,});

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon =  Icon(
        Icons.star_border,
        size: 14,
        color: Colors.grey[800],
      );
    }
    else if (index > rating - 1 && index < rating) {
      icon =  const Icon(
        Icons.star_half,
        size: 14,
        color: Colors.amber,
      );
    } else {
      icon =  const Icon(
        Icons.star,
          size: 14,
        color: Colors.amber
      );
    }
    return InkResponse(
      onTap: onRatingChanged == null ? null : () => onRatingChanged!(index + 1.0),
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Row(children: new List.generate(starCount, (index) => buildStar(context, index)));
  }
}