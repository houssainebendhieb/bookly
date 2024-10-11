import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/core/utils/errors/failure.dart';
import 'package:bookly/core/utils/errors/server_failure.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

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
    } on Exception catch (e) {
      print(e.toString());
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
