import 'package:book/feature/presetation/screens/home_screen/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/asset.dart';

class SimilarBookList extends StatelessWidget {
  const SimilarBookList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                final books = state.books[index].items?[0];
                return AspectRatio(
                  aspectRatio: 3 / 4,
                  child: Container(
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(AssetsData.testImage),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                );
              });
        }
        else if (state is SimilarBooksLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is SimilarBooksError) {
          return Center(
            child: Text(state.errorMessage),
          );
        } else {
          return const Text("Oops !");
        }
      },
    );
  }
}
