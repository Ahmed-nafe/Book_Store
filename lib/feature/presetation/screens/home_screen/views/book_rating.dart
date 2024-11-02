import 'package:book/core/utils/appcolors.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star, color: Colors.yellow),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.015,
        ),
        const Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.015,
        ),
        Text(
          "(2390)",
          style: Styles.textStyle14.copyWith(
            color: AppColors.mediumGray,
          ),
        ),
      ],
    );
  }
}
