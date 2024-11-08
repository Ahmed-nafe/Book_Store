import 'package:book/core/utils/styles.dart';
import 'package:book/feature/presetation/screens/search_screen/manger/search_book_cubit.dart';
import 'package:book/feature/presetation/screens/search_screen/views/search_result_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'custom_text_filed.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  void searchBooks(BuildContext context, String query) {
    context.read<SearchBookCubit>().fetchSearchResults(query);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: CustomTextField(
                  onSearch: (query) {
                    return searchBooks(context, query);
                  },
                ),
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            "Search Result ",
            style: AppStyles.textStyle20,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const SearchResultList()
      ],
    );
  }
}
