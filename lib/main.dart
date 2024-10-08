import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp( BooklyApp());
}

class BooklyApp extends StatelessWidget {
  BooklyApp({super.key});

  Widget build(context) {
    return  const  GetMaterialApp(
      home:SplashView()
    );
  }
}
