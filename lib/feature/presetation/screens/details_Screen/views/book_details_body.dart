import 'package:book/core/utils/appcolors.dart';
import 'package:book/core/utils/styles.dart';
import 'package:book/feature/presetation/screens/home_screen/views/book_rating.dart';
import 'package:book/feature/presetation/screens/home_screen/views/feature_list_view_items.dart';
import 'package:flutter/material.dart';
import 'custom_details_app_bar.dart';
import 'custom_icon_button.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * 0.015,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * 0.17,
              vertical: MediaQuery.sizeOf(context).height * 0.03,
            ),
            child: const FeatureListViewItems(),
          ),
          const Text(
            "Harry Potter and the Goblet of Fire ",
            style: AppStyles.textStyle30,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            "Rudyard Kipling",
            textAlign: TextAlign.center,
            style: AppStyles.textStyle18.copyWith(
              color: AppColors.whitePrimary.withOpacity(0.7),
              fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          buildCustomButton()
        ],
      ),
    );
  }

  Widget buildCustomButton() {
    return Row(
          children: [
            Expanded(
              child: CustomIconButton(
                text: "19.99€",
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
                buttonColor: AppColors.whitePrimary.withOpacity(1),
                textColor: AppColors.blackColor,
              ),
            ),
            Expanded(
              child: CustomIconButton(
                text: "Free preview",
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                buttonColor: const Color(0xffEF8262),
                textColor: AppColors.whitePrimary,
              ),
            )
          ],
        );
  }
}
