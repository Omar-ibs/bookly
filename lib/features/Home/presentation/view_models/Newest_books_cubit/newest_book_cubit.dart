import 'package:bloc/bloc.dart';
import 'package:bookly/features/Home/data/Models/book/book.model.dart';
import 'package:bookly/features/Home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this.homeRepo) : super(NewestBookInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks()async{
    emit(NewestBookLoading());
    var result=await homeRepo.fetchNewestBooks();

    result.fold((failure){
      emit(NewestBookFailure(failure.errMessage));
    }, (books){
      emit(NewestBookSuccess(books));
    });
  }
}
