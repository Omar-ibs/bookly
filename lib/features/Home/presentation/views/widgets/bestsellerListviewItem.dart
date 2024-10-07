import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Home/data/Models/book/book.model.dart';
import 'package:bookly/features/Home/data/repos/implement_home_repo.dart';
import 'package:bookly/features/Home/presentation/view_models/cubit/similar_books_cubit.dart';
import 'package:bookly/features/Home/presentation/views/widgets/book_details_view.dart';
import 'package:bookly/features/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/Home/presentation/views/widgets/customListViewItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.bookModel,});
   final Book bookModel;
  @override
  Widget build(BuildContext context) {
 
    return GestureDetector(
      onTap: () {
        Navigator.push(context,MaterialPageRoute(builder:(context) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImplementation>()),
          child: BookDetailsView(book: bookModel),
        ),)
        );
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomListViewItem(imageUrl: bookModel.volumeInfo.imageLinks.thumbnail),
            const SizedBox(
              width: 30.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bookModel.volumeInfo.title!,
                    style:
                        Styles.textStyle20.copyWith(fontFamily: kGTSecTraFine),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 3.0,
                  ),
                   Text(
                    bookModel.volumeInfo.authors![0],
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3.0,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      BookRate(rate: bookModel.volumeInfo.maturityRating ?? '0',
                      count: bookModel.volumeInfo.pageCount! ,),
                    ],
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
