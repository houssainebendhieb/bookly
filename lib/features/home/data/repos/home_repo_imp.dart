import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/core/utils/errors/failure.dart';
import 'package:bookly/core/utils/errors/server_failure.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp implements HomeRepo {
  final ApiServices apiServices;
  HomeRepoImp(this.apiServices);
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      var res = await apiServices.get(
          endPoint:
              "volumes?Filtering-free-ebooks&Sorting=newest&q=subject:Programming");
      List<BookModel> books = [];

      for (var element in res['items']) {
        books.add(BookModel.fromJson(element));
      }
      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var res = await apiServices.get(
          endPoint: "volumes?Filtering-free-ebooks&q=subject:Programming");
      List<BookModel> books = [];

      for (var element in res['items']) {
        books.add(BookModel.fromJson(element));
      }
      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      var res = await apiServices.get(
          endPoint:
              "volumes?Filtering-free-ebooks&Sorting=relevance&q=subject:Programming");
      List<BookModel> books = [];

      for (var element in res['items']) {
        books.add(BookModel.fromJson(element));
      }
      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
