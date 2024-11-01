
import 'package:flutter/material.dart';
import 'book_list_view.dart';
import 'custom_app_bar.dart';

class HomeView extends StatelessWidget {
  static String routeName = "home";
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          const BookListView()
        ],
      ),
    );
  }

}




