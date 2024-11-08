import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/appcolors.dart';
import '../../../../../core/utils/styles.dart';
import '../data/model/BooksModel.dart';
import 'book_rating.dart';

class NewestListItemsBody extends StatelessWidget {
  NewestListItemsBody({
    super.key,
    required this.bookModel,
  });

  BooksModel bookModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.detailsView,
          extra: bookModel,
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * 0.04),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: CachedNetworkImage(
                imageUrl:
                    bookModel.items?[0].volumeInfo?.imageLinks!.thumbnail ?? "",
                errorWidget: (context, url, error) => const Center(
                  child: CircularProgressIndicator(),
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
                width: 100,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bookModel.items?[0].volumeInfo?.title! ?? "",
                    style: AppStyles.textStyle20,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  ),
                  Text(
                    bookModel.items?[0].volumeInfo!.authors![0] ?? "",
                    style: AppStyles.textStyle14
                        .copyWith(color: AppColors.whitePrimary),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Free",
                          style: AppStyles.textStyle20.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        BookRating(
                            // rating: bookModel.items?[0].volumeInfo?.averageRating ?? 0,
                            // totalReviews: bookModel.items?[0].volumeInfo?.ratingsCount ?? 0,
                            ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
