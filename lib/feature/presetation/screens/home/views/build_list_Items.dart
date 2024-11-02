import 'package:flutter/material.dart';

import '../../../../../core/utils/asset.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';

class BuildListItems extends StatelessWidget {
  const BuildListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.04),
      child: Row(
        children: [
          Image.asset(
            AssetsData.testImage,
            width: 80,
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Container(
              // margin: const EdgeInsets.all(),
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Harry Potter and the Goblet of Fire ",
                    style: Styles.textStyle20,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  ),
                  const Text(
                    "J.K. Rowling",
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "12.99",
                          style: Styles.textStyle20.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const BookRating(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
