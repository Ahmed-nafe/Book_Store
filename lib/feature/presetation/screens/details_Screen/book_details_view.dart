import 'package:book/core/utils/app_router.dart';
import 'package:book/core/utils/appcolors.dart';
import 'package:book/feature/presetation/screens/details_Screen/views/book_details_body.dart';
import 'package:book/feature/presetation/screens/home_screen/data/model/BooksModel.dart';
import 'package:book/feature/presetation/screens/home_screen/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  BookDetailsView({super.key, required this.booksModel});

  BooksModel booksModel;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    context.read<SimilarBooksCubit>().fetchSimilarBooks(
          category: widget.booksModel.items![0].volumeInfo!.categories![0],
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.bluePurple,
      body: SafeArea(child: BookDetailsBody()),
    );
  }
}
