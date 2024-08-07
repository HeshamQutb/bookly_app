import 'package:flutter/material.dart';

import 'custom_book.dart';

class SuggestedBooksListView extends StatelessWidget {
  const SuggestedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.17,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) => const Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: CustomBook(
            imageUrl:
                'https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg',
          ),
        ),
      ),
    );
  }
}
