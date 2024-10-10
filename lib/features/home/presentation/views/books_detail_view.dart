import 'package:bookly/features/home/presentation/views/widgets/book_detail_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailView extends StatelessWidget {
  const BookDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: const Scaffold(body: BookDetailViewBody()));
  }
}
