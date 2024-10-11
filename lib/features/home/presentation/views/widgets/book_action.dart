import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  Widget build(context) {
    return const Row(
      children: [
        Expanded(
            child: CustomButton(
          textColor: Colors.black,
          color: Colors.white,
          borderRadiusGeometry: BorderRadius.only(
              topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
        )),
        Expanded(
            child: CustomButton(
          textColor: Colors.white,
          color: Colors.orange,
          borderRadiusGeometry: BorderRadius.only(
              topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
        )),
      ],
    );
  }
}
