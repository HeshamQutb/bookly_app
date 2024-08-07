import 'package:bookly_app/core/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class CustomBook extends StatelessWidget {
  const CustomBook({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return CustomBookImage(imageUrl: imageUrl);
  }
}
