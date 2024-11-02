import 'package:book/core/utils/asset.dart';
import 'package:book/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'book_list_view.dart';
import 'custom_app_bar.dart';

class HomeView extends StatelessWidget {
  static String routeName = "home";

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const BookListView(),
          Padding(
            padding: const EdgeInsets.only(top: 35.0, left: 15),
            child: Text(
              "Best Seller",
              style: Styles.titleMedium,
            ),
          ),
          const BestSellerList(),
        ],
      ),
    );
  }
}

class BestSellerList extends StatelessWidget {
  const BestSellerList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.015),
            child: Row(
              children: [
                Image.asset(
                  AssetsData.testImage,
                  width: 100,
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(15),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Harry Potter and the Goblet of Fire",
                          style: Styles.textStyle20,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                        ),
                        const Text("J.K. Rowling"),
                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [
                            Text("12.99",
                                style: Styles.textStyle20.copyWith(
                                  fontSize: 15,
                                )),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(Icons.star,
                                    color: Colors.yellow),
                                SizedBox(
                                  width:
                                      MediaQuery.sizeOf(context).width *
                                          0.015,
                                ),
                                const Text("4.8"),
                                SizedBox(
                                  width:
                                      MediaQuery.sizeOf(context).width *
                                          0.015,
                                ),
                                const Text("(2390)"),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
