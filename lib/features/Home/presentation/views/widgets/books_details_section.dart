import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Home/data/Models/book/book.model.dart';
import 'package:bookly/features/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/Home/presentation/views/widgets/customListViewItem.dart';
import 'package:bookly/features/Home/presentation/views/widgets/finalbuttons.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.book});
final Book book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.23),
          child: CustomListViewItem(
            imageUrl: book.volumeInfo.imageLinks.thumbnail,
          ),
        ),
        const SizedBox(
          height: 42.0,
        ),
         Text(
          book.volumeInfo.title! ,
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6.0,
        ),
        Text(
          book.volumeInfo.authors![0],
          style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
              color: Colors.grey),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRate(
          count: 0,
          rate:'0',
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 30,
        ),
        const FinalButtons(),
      ],
    );
  }
}
