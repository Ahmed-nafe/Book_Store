import 'package:book/core/utils/styles.dart';
import 'package:book/feature/presetation/screens/search_screen/views/search_result_list.dart';
import 'package:flutter/material.dart';

import 'custom_text_filed.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(),
          Text(
            "Search Result ",
            style: AppStyles.textStyle20,
          ),
          SizedBox(
            height: 15,
          ),
          SearchResultList()
        ],
      ),
    );
  }
}
