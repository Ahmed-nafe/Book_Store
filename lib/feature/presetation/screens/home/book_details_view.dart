import 'package:book/core/utils/appcolors.dart';
import 'package:book/feature/presetation/screens/home/views/book_details_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: AppColors.bluePurple,
      body: BookDetailsBody(),
    );
  }
}
