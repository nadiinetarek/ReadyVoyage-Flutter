import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

typedef void RatingChangeCallback(double rating);

class StarRating extends StatelessWidget {
  final int starCount;
  final int rating;
  final RatingChangeCallback onRatingChanged;
  final Color color;

  StarRating(
      {this.starCount = 5,
      this.rating = 0,
      required this.onRatingChanged,
      required this.color});

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon = Icon(
        Icons.star_border,
        color: Theme.of(context).buttonColor,
        size: ResponsiveValue(
          context,
          defaultValue: 30.0,
          valueWhen: const [
            Condition.smallerThan(
              name: TABLET,
              value: 22.0,
            ),
          ],
        ).value,
      );
    } else if (index > rating - 1 && index < rating) {
      icon = Icon(
        Icons.star_half,
        color: color,
        size: ResponsiveValue(
          context,
          defaultValue: 30.0,
          valueWhen: const [
            Condition.smallerThan(
              name: TABLET,
              value: 22.0,
            ),
          ],
        ).value,
      );
    } else {
      icon = Icon(
        Icons.star,
        color: color,
        size: ResponsiveValue(
          context,
          defaultValue: 30.0,
          valueWhen: const [
            Condition.smallerThan(
              name: TABLET,
              value: 22.0,
            ),
          ],
        ).value,
      );
    }
    return InkResponse(
      onTap:
          onRatingChanged == null ? null : () => onRatingChanged(index + 1.0),
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        children:
            List.generate(starCount, (index) => buildStar(context, index)));
  }
}
