import 'package:book/core/utils/appcolors.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      // required this.rating,
      // required this.totalReviews
      });

  final MainAxisAlignment mainAxisAlignment;
  // final double rating;
  // final int totalReviews;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(Icons.star, color: Colors.yellow),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.015,
        ),
         Text(
          "4.8",
          style: AppStyles.textStyle16,
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.015,
        ),
        Text(
          "(265)",
          style: AppStyles.textStyle14.copyWith(
            color: AppColors.whitePrimary.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
