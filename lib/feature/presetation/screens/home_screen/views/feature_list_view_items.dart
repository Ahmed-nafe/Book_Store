import 'package:flutter/material.dart';


class FeatureListViewItems extends StatelessWidget {
  const FeatureListViewItems({super.key, required this.imageUrl});
final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).height * 0.011),
      child: AspectRatio(
        aspectRatio: 2.8 / 4,
        child: Container(
          decoration: BoxDecoration(
            image:  DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl),
            ),
            borderRadius: BorderRadius.circular(15),

          ),
        ),
      ),
    );
  }
}
