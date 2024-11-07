
import 'package:flutter/material.dart';

import '../../home_screen/views/build_newest_list_Items.dart';

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
            return Padding(
                padding: EdgeInsets.all(15),
                child: Text("data"));
          }),
    );
  }
}