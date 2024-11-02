import 'package:book/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'best_seller_list.dart';
import 'book_list_view.dart';
import 'custom_app_bar.dart';

class HomeView extends StatelessWidget {
  static String routeName = "home";

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const CustomAppBar(),
              const BookListView(),
              Padding(
                padding: const EdgeInsets.only(top: 35.0, left: 15),
                child: Text(
                  "Best Seller",
                  style: Styles.titleMedium,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ]),
          ),
          const SliverToBoxAdapter(
            child: BestSellerList(),
          )
        ],
      ),
    );
  }
}
