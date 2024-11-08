import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/utils/styles.dart';
import '../../home_screen/data/model/BooksModel.dart';

class BuildCustomBookSearch extends StatelessWidget {
  const BuildCustomBookSearch({
    super.key,
    required this.book,
  });

  final BooksModel book;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      width: double.infinity,
      child: Row(
        children: [
          CachedNetworkImage(
            fit: BoxFit.fill,
            errorWidget: (context, url, error) => const Center(
              child: Icon(Icons.error),
            ),
            placeholder: (context, url) => Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              child: Container(
                width: 100,
                height: 150,
                color: Colors.grey,
              ),
            ),
            width: 140,
            height: 170,
            imageUrl:
                book.items![0].volumeInfo?.imageLinks?.smallThumbnail != null
                    ? book.items![0].volumeInfo?.imageLinks!.thumbnail ?? ""
                    : "",
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    book.items![0].volumeInfo?.title ?? "No title",
                    style: AppStyles.textStyle18,
                    maxLines: 1,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(book.items![0].volumeInfo?.authors?.join(", ") ??
                      "Unknown author"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
