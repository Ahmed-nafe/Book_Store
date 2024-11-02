import 'package:book/core/utils/styles.dart';
import 'package:book/feature/presetation/screens/home_screen/views/book_rating.dart';
import 'package:book/feature/presetation/screens/home_screen/views/feature_list_view_items.dart';
import 'package:flutter/material.dart';
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
                horizontal: MediaQuery.sizeOf(context).width * 0.17,
                vertical: MediaQuery.sizeOf(context).height * 0.03,
              ),
              child: const FeatureListViewItems(),
            ),
            const SizedBox(
              height: 43,
            ),
            const Text(
              "Harry Potter and the Goblet of Fire ",
              style: Styles.textStyle30,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              "Rudyard Kipling",
              textAlign: TextAlign.center,
              style: Styles.textStyle18.copyWith(
                color: Colors.white.withOpacity(0.7),
                fontStyle: FontStyle.italic,
              ),
            ),
             Container(
                color: Colors.red,
                child: BookRating()),
          ],
        ));
  }
}
