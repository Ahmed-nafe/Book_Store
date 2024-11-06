import 'package:flutter/material.dart';

import '../../../../../core/utils/appcolors.dart';
import '../../../../../core/utils/styles.dart';
import '../../home_screen/views/book_rating.dart';
import '../../home_screen/views/feature_list_view_items.dart';
import 'build_custom_button.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * 0.22,
            vertical: MediaQuery.sizeOf(context).height * 0.03,
          ),
          child: const FeatureListViewItems(
            imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrTPjHOG0LBJKLlx35kYcK4hpx5xRdGNQ4tQ&s",
          ),
        ),
        const Text(
          "Harry Potter and the Goblet of Fire ",
          style: AppStyles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          "Rudyard Kipling",
          textAlign: TextAlign.center,
          style: AppStyles.textStyle18.copyWith(
            color: AppColors.whitePrimary.withOpacity(0.7),
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const BuildCustomButton(),
      ],
    );
  }
}