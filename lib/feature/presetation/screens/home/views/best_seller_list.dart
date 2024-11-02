import 'package:book/feature/presetation/screens/home/views/build_list_Items.dart';
import 'package:flutter/material.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: 15,
      itemBuilder: (context, index) {
        return const BuildListItems();
      },
    );
  }
}
