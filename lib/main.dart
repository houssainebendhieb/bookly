import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BooklyApp());
}

class BooklyApp extends StatelessWidget {
  BooklyApp({super.key});

  Widget build(context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
    );
  }
}
