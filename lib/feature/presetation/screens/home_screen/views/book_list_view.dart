import 'package:book/feature/presetation/screens/home_screen/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:book/feature/presetation/screens/home_screen/views/feature_list_view_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class BookListView extends StatelessWidget {
  const BookListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: height * 0.25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                final book = state.books[index];
                return FeatureListViewItems(
                  imageUrl: book.items?[0].volumeInfo?.imageLinks?.thumbnail! ?? "",
                );
              },
            ),
          );
        } else if (state is FeaturedBooksLoading) {
          return SizedBox(
            height: height * 0.25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: const EdgeInsets.all(8.0),
                    width: 150,
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksError) {
          return Center(child: Text(state.errorMessage));
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
