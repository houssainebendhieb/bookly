import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo_imp.dart';
import 'package:bookly/features/home/presentation/manager/similar_books%20cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/books_detail_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/home';
  static const kBookDetailView = '/bookdetailview';
  static const kSearch = '/search';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kSearch,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchView();
        },
      ),
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kBookDetailView,
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImp>()),
            child:  BookDetailView(bookModel: state.extra as BookModel,),
          );
        },
      ),
    ],
  );
}
