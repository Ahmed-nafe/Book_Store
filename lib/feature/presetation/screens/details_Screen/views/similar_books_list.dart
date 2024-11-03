import 'package:flutter/material.dart';
import '../../../../../core/utils/asset.dart';

class SimilarBookList extends StatelessWidget {
  const SimilarBookList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (context, index) {
            return AspectRatio(
              aspectRatio: 2.2 / 4,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage(AssetsData.testImage)),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            );
          }),
    );
  }
}
