import 'package:book/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'views/best_seller_list.dart';
import 'views/book_list_view.dart';
import 'views/custom_app_bar.dart';

class HomeView extends StatelessWidget {

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                const CustomAppBar(),
                const BookListView(),
                Padding(
                  padding: const EdgeInsets.only(top: 35.0, left: 15),
                  child: Text(
                    "Best Seller",
                    style: AppStyles.titleMedium,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

              ],),
            ),
            const SliverFillRemaining(
              child: BestSellerList(),
            )
          ],
        ),
      ),
    );
  }
}
