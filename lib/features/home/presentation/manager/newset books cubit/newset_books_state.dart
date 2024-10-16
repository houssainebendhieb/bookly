part of 'newset_books_cubit.dart';

sealed class NewsetBooksState extends Equatable {
  const NewsetBooksState();

  @override
  List<Object> get props => [];
}

final class NewsetBooksInitial extends NewsetBooksState {}

final class NewsetBooksSuccess extends NewsetBooksState {
  final List<BookModel> listBooks;
  const NewsetBooksSuccess({required this.listBooks});
}

final class NewsetBooksLoading extends NewsetBooksState {}

final class NewsetBooksFailure extends NewsetBooksState {
  final String errMessage;
  const NewsetBooksFailure({required this.errMessage});
}
