import 'package:book/feature/presetation/screens/home_screen/data/model/BooksModel.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../core/utils/appcolors.dart';
import 'custom_icon_button.dart';

class BuildCustomButton extends StatelessWidget {
  BuildCustomButton({super.key, required this.booksModel});

  BooksModel booksModel;

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
              onPressed: () {},
              text: "Free",
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
              buttonColor: AppColors.whitePrimary,
              textColor: AppColors.blackColor,
            ),
          ),
          Expanded(
            child: CustomIconButton(
              onPressed: () async {
                launcherCustomUrl(
                  context,
                  uri: booksModel.items?[0].volumeInfo?.previewLink,
                );
              },
              text: booksModel.items?[0].volumeInfo?.previewLink == null
                  ? "Not Available"
                  : "Free preview",
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              buttonColor: const Color(0xffEF8262),
              textColor: AppColors.whitePrimary,
            ),
          )
        ],
      ),
    );
  }

  Future<void> launcherCustomUrl(context, {required String? uri}) async {
    if (uri != null) {
      Uri url = Uri.parse(uri);
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        Fluttertoast.showToast(
            msg: "Cannot launch $uri",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    }
  }
}
