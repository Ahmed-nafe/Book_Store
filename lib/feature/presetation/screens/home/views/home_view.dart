import 'package:book/core/utils/asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'book_list_view.dart';
import 'custom_app_bar.dart';

class HomeView extends StatelessWidget {
  static String routeName = "home";

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(width: width, height: height),
          BookListView(height: height)
        ],
      ),
    );
  }

}




