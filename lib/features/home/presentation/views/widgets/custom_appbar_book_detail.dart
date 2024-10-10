import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBarBookDetail extends StatelessWidget {
  const CustomAppBarBookDetail({super.key});

  Widget build(context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            GoRouter.of(context).pop();
          },
        ),
        const Spacer(),
        IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: () {},
        )
      ],
    );
  }
}
