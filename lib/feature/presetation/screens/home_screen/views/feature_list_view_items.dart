import 'package:flutter/material.dart';

import '../../../../../core/utils/asset.dart';

class FeatureListViewItems extends StatelessWidget {
  const FeatureListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).height * 0.011),
      child: AspectRatio(
        aspectRatio: 2.8 / 4,
        child: Container(
          decoration: BoxDecoration(
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(AssetsData.testImage),
            ),
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
