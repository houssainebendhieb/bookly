import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  Widget build(context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          hintText: 'Search',
          suffixIcon:
              IconButton(icon:const  Icon(Icons.search, size: 22), onPressed: () {})),
    );
  }
}
