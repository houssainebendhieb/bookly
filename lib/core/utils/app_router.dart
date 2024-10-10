import 'package:bookly/features/home/presentation/views/books_detail_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/home';
  static const kBookDetailView = '/bookdetailview';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
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
          return const BookDetailView();
        },
      ),
    ],
  );
}
