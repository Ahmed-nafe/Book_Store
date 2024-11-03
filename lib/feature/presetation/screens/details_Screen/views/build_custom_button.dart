import 'package:flutter/material.dart';

import '../../../../../core/utils/appcolors.dart';
import 'custom_icon_button.dart';

class BuildCustomButton extends StatelessWidget {
  const BuildCustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * 0.06,
      ),
      child: Row(
        children: [
          Expanded(
            child: CustomIconButton(
              text: "19.99€",
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
              buttonColor: AppColors.whitePrimary,
              textColor: AppColors.blackColor,
            ),
          ),
          const Expanded(
            child: CustomIconButton(
              text: "Free preview",
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              buttonColor: Color(0xffEF8262),
              textColor: AppColors.whitePrimary,
            ),
          )
        ],
      ),
    );
  }
}
