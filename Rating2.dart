import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef void RatingChangeCallback2(double rating);

class Rating2 extends StatelessWidget {
  final int starCount;
  final double rating;
  final RatingChangeCallback2 onRatingChanged;
  final Color color;

  Rating2({this.starCount = 5, this.rating = .0, required this.onRatingChanged, required this.color});

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon = new Icon(
        Icons.star_border,
        color: Theme.of(context).buttonColor,
        size: 30,
      );
    }
    else if (index > rating - 1 && index < rating) {
      icon = new Icon(
        Icons.star_half,
        color: color,
        size: 30,
      );
    } else {
      icon = new Icon(
        Icons.star,
        color: color,
        size: 30,
      );
    }
    return new InkResponse(
      onTap: onRatingChanged == null ? null : () => onRatingChanged(index + 1.0),
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Row(children: new List.generate(starCount, (index) => buildStar(context, index)));
  }
}