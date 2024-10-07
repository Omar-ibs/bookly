import 'package:bookly/core/widgets/custom_circular_indicator.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/features/Home/presentation/view_models/Newest_books_cubit/newest_book_cubit.dart';
import 'package:bookly/features/Home/presentation/views/widgets/bestsellerListviewItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBookCubit, NewestBookState>(
      builder: (context, state) {
        if (state is NewestBookSuccess) {
          return Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 7.5),
                    child: BestSellerListViewItem(
                      bookModel: state.books[index],
                    ),
                  );
                }),
          );
        } else if (state is NewestBookFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomCircularProgressIndicator();
        }
      },
    );
  }
}
