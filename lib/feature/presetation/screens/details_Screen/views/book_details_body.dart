import 'package:book/core/utils/appcolors.dart';
import 'package:book/core/utils/styles.dart';
import 'package:book/feature/presetation/screens/details_Screen/views/build_custom_button.dart';
import 'package:book/feature/presetation/screens/details_Screen/views/similar_books_list.dart';
import 'package:book/feature/presetation/screens/home_screen/views/book_rating.dart';
import 'package:book/feature/presetation/screens/home_screen/views/feature_list_view_items.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/asset.dart';
import 'custom_details_app_bar.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * 0.015,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * 0.22,
              vertical: MediaQuery.sizeOf(context).height * 0.03,
            ),
            child: const FeatureListViewItems(),
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
          const SizedBox(
            height: 49,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "You can also like",
              style: AppStyles.textStyle14.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SimilarBookList()
        ],
      ),
    );
  }
}
