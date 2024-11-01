import 'package:flutter/material.dart';

import '../../../../../core/utils/asset.dart';

class BookListView extends StatelessWidget {
  const BookListView({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        itemBuilder: (context, index) {
          return SizedBox(
            height: height * 0.26,
            child: AspectRatio(
              aspectRatio: 2.8 / 4,
              child: Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage(AssetsData.testImage)),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
