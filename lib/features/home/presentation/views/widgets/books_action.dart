import 'package:bookly_app/core/utils/functions/launch_custom_url.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          const Expanded(
              child: CustomButton(
            textStyle: Styles.textStyle18,
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(kRadiusValue),
              bottomLeft: Radius.circular(kRadiusValue),
            ),
            text: 'Free',
          )),
          Expanded(
              child: CustomButton(
            onPressed: () {
              launchCustomUrl(
                context: context,
                url: bookModel.volumeInfo.previewLink,
              );
            },
            textStyle: Styles.textStyle16,
            backgroundColor: const Color(0xffEF8262),
            textColor: Colors.white,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(kRadiusValue),
              bottomRight: Radius.circular(kRadiusValue),
            ),
            text: getText(bookModel),
          ))
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not Available';
    } else {
      return 'Preview';
    }
  }
}
