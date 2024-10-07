import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/Home/data/Models/book/book.model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {

  Future<Either<Failure,List<Book>>> fetchFeaturedBooks();
  Future<Either<Failure,List<Book>>> fetchNewestBooks();
  Future<Either<Failure,List<Book>>> fetchSimilarBooks({required String categories});
  
}