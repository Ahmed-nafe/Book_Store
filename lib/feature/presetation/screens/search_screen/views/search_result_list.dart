import 'package:book/core/utils/styles.dart';
import 'package:book/feature/presetation/screens/home_screen/data/model/BooksModel.dart';
import 'package:book/feature/presetation/screens/search_screen/manger/search_book_cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import 'custom_search_book.dart';

class SearchResultList extends StatelessWidget {
  const SearchResultList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<SearchBookCubit, SearchBookState>(
        builder: (context, state) {
          if (state is SearchBookSuccess) {
            return ListView.builder(
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  final book = state.books[index];
                  return BuildCustomBookSearch(book: book);
                });
          } else if (state is SearchBookLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is SearchBookError) {
            return Text("Error loading data${state.errorMessage}");
          }
          return const Center(
              child: Text(
            "Please Enter a search book",
            style: AppStyles.textStyle20,
          ));
        },
      ),
    );
  }
}
