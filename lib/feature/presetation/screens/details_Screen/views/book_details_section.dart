import 'package:book/feature/presetation/screens/home_screen/data/model/BooksModel.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/appcolors.dart';
import '../../../../../core/utils/styles.dart';
import '../../home_screen/views/book_rating.dart';
import '../../home_screen/views/feature_list_view_items.dart';
import 'build_custom_button.dart';

class BookDetailsSection extends StatelessWidget {
  BookDetailsSection({super.key, required this.booksModel});

  BooksModel booksModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * 0.22,
            vertical: MediaQuery.sizeOf(context).height * 0.03,
          ),
          child: FeatureListViewItems(
            imageUrl:
                booksModel.items?[0].volumeInfo?.imageLinks?.thumbnail! ?? "",
          ),
        ),
        Text(
          booksModel.items![0].volumeInfo!.title!,
          style: AppStyles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          booksModel.items![0].volumeInfo!.authors![0],
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
        BuildCustomButton(
          booksModel: booksModel,
        ),
      ],
    );
  }
}
