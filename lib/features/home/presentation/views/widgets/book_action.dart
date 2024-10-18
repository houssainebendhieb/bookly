import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModel});
  final BookModel bookModel;

  Widget build(context) {
    return Row(
      children: [
        Expanded(
          child: const CustomButton(
            textColor: Colors.black,
            color: Colors.white,
            borderRadiusGeometry: BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
          ),
        ),
        Expanded(
            child: CustomButton(
          funtion: () async {
            final Uri uri = Uri.parse(bookModel.volumeInfo.previewLink!);
            print("hello there");
            if (!await launchUrl(uri)) {
              print(uri);
              throw Exception('Could not launch $uri');
            }
          },
          textColor: Colors.white,
          color: Colors.orange,
          borderRadiusGeometry: const BorderRadius.only(
              topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
        )),
      ],
    );
  }
}
