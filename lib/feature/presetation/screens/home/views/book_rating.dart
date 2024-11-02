import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          style: Styles.textStyle14.copyWith(color: const Color(0xff707070)),
        ),
      ],
    );
  }
}
