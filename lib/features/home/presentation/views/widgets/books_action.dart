import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
            textStyle: Styles.textStyle18,
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(kRadiusValue),
              bottomLeft: Radius.circular(kRadiusValue),
            ),
            text: '19.99€',
          )),
          Expanded(
              child: CustomButton(
            textStyle: Styles.textStyle16,
            backgroundColor: Color(0xffEF8262),
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(kRadiusValue),
              bottomRight: Radius.circular(kRadiusValue),
            ),
            text: 'Free preview',
          ))
        ],
      ),
    );
  }
}
