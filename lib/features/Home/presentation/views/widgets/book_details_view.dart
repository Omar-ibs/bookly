import 'package:bookly/features/Home/data/Models/book/book.model.dart';
import 'package:bookly/features/Home/presentation/view_models/cubit/similar_books_cubit.dart';
import 'package:bookly/features/Home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.book});
final Book book;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
      category: widget.book.volumeInfo.categories![0]
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BookDetailsViewBody(book: widget.book,);
  }
}
