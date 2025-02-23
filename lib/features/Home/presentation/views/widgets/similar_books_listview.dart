import 'package:bookly/core/widgets/custom_circular_indicator.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/features/Home/presentation/view_models/cubit/similar_books_cubit.dart';
import 'package:bookly/features/Home/presentation/views/widgets/customListViewItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * .15,
    child: ListView.builder(
      itemCount: state.books.length,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemBuilder: ((context, index) {
        return  Padding(
          padding:const EdgeInsets.only(left: 0.0, right: 10.0),
          child: CustomListViewItem(
            imageUrl:
                state.books[index].volumeInfo.imageLinks.thumbnail ,
          ),
        );
      }),
    ),
  );
}else if(state is SimilarBooksFailure){
return CustomErrorWidget(errMessage: state.errMessage);
}else{
  return const CustomCircularProgressIndicator();
}
      },
    );
  }
}
