import 'package:bookly/features/Home/data/Models/book/book.model.dart';
import 'package:bookly/features/Home/presentation/views/widgets/books_details_section.dart';
import 'package:bookly/features/Home/presentation/views/widgets/custom_appBar_Details_View.dart';
import 'package:bookly/features/Home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});
final Book book;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: CustomScrollView(slivers: [
          SliverFillRemaining(
            child: Padding(
              padding:const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              child: Column(
                children: [
                const  CustomBookDetailsAppBar(),
                  BooksDetailsSection(book: book,),
                const  SizedBox(
                    height: 40,
                  ),
                 const SimilarBooksSection(),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
