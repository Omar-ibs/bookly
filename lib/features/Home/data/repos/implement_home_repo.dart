import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/Home/data/Models/book/book.model.dart';
import 'package:bookly/features/Home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplementation implements HomeRepo {
  final ApiService apiService;
  HomeRepoImplementation(this.apiService);
  @override
  Future<Either<Failure, List<Book>>> fetchNewestBooks() async {
   try {
        var data=await apiService.get(endpoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=computer science');
        List<Book> books=[];
        for (var items in data['items']) {
          books.add(Book.fromJson(items));
        }
        return right(books);
   } catch (e) {
    if (e is DioException) {
     return Left(ServerFailure.fromDioError(e),);
   } 
   return Left(ServerFailure(e.toString()));
   }
  }

  @override
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks() async{
      try {
        var data=await apiService.get(endpoint: 'volumes?Filtering=free-ebooks&q=subject:programming');
        List<Book> books=[];
        for (var items in data['items']) {
          books.add(Book.fromJson(items));
        }
        return right(books);
   } catch (e) {
    if (e is DioException) {
     return Left(ServerFailure.fromDioError(e),);
   } 
   return Left(ServerFailure(e.toString()));
   }
  }
  
  @override
  Future<Either<Failure, List<Book>>> fetchSimilarBooks({required String categories}) async{
    try {
        var data=await apiService.get(endpoint: 'volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:programming');
        List<Book> books=[];
        for (var items in data['items']) {
          books.add(Book.fromJson(items));
        }
        return right(books);
   } catch (e) {
    if (e is DioException) {
     return Left(ServerFailure.fromDioError(e),);
   } 
   return Left(ServerFailure(e.toString()));
   }
  }
  
}