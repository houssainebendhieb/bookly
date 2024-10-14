import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit({required this.homeRepo}) : super(FeatureBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeatureBook() async {
    emit(FeatureBooksLoading());

    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
        (failure) => emit(FeatureBooksFailure(errMessage: failure.errMessage)),
        (books) {
      return emit(FeatureBooksSuccess(listBook: books));
    });
  }
}
