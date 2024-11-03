
import 'package:flutter/material.dart';

import '../../home_screen/views/build_list_Items.dart';

class SearchResultList extends StatelessWidget {
  const SearchResultList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return const BuildListItems();
          }),
    );
  }
}