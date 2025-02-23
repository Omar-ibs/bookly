import 'package:bookly/core/widgets/custom_circular_indicator.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/features/Home/presentation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/Home/presentation/views/widgets/customListViewItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
          height: MediaQuery.of(context).size.height * .25,
          child: ListView.builder(
            itemCount: state.books.length,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              return  Padding(
                padding:const EdgeInsets.only(
                  left: 15.0,
                ),
                child: CustomListViewItem(
                  imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,
                ),
              );
            }),
          ),
        );
        } else if(state is FeaturedBooksFailure){
          return CustomErrorWidget(errMessage:state.errMessage);
        }else{
          return const CustomCircularProgressIndicator();
        }
      },
    );
  }
}
