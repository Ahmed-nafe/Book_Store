import 'package:book/core/utils/styles.dart';
import 'package:book/feature/presetation/screens/details_Screen/views/similar_books_list.dart';
import 'package:flutter/material.dart';
import 'book_details_section.dart';
import 'custom_details_app_bar.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * 0.015,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomDetailsAppBar(),
                const BookDetailsSection(),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.1,
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
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.15,
            child: const SimilarBookList(),
          ),
        )
      ],
    );
  }
}
