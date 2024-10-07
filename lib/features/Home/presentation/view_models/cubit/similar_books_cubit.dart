import 'package:bloc/bloc.dart';
import 'package:bookly/features/Home/data/Models/book/book.model.dart';
import 'package:bookly/features/Home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
    final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String category})async{
    emit(SimilarBooksLoading());
    var result=await homeRepo.fetchSimilarBooks(categories: category);

    result.fold((failure){
      emit(SimilarBooksFailure(errMessage:failure.errMessage));
    }, (books){
      emit(SimilarBooksSuccess(books:books));
    });
  }

}
