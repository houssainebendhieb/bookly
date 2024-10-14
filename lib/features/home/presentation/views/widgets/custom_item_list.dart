import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  final String imageUrl;
  const CustomListViewItem({super.key, required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.orange,
              image: DecorationImage(
                  fit: BoxFit.fill, image: NetworkImage(imageUrl))),
        ),
      ),
    );
  }
}
