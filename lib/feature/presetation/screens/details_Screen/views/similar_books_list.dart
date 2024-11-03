import 'package:flutter/material.dart';
import '../../../../../core/utils/asset.dart';

class SimilarBookList extends StatelessWidget {
  const SimilarBookList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return AspectRatio(
            aspectRatio: 3 / 4,
            child: Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage(AssetsData.testImage),
                ),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          );
        });
  }
}
