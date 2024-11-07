import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manger/newest_books_cubit/newest_books_cubit.dart';
import 'build_newest_list_Items.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              final books = state.books[index];
              return NewestListItemsBody(
                bookModel: books,
              );
            },
          );
        } else if (state is NewestBooksLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is NewestBooksError) {
          return Center(child: Text(state.errorMessage));
        } else {
          return const Center(
            child: Text("No Books Founded "),
          );
        }
      },
    );
  }
}
