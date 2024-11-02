import 'package:book/feature/presetation/screens/home_screen/views/feature_list_view_items.dart';
import 'package:flutter/material.dart';
class BookListView extends StatelessWidget {
  const BookListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return SizedBox(
      height: height * 0.25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        itemBuilder: (context, index) {
          return const FeatureListViewItems();
        },
      ),
    );
  }


}
