import 'package:flutter/material.dart';

import 'build_list_Items.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 15,
      itemBuilder: (context, index) {
        return const BuildListItems();
      },
    );
  }
}
