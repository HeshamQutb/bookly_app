import 'package:bookly_app/features/home/presentation/views/widgets/custom_book.dart';
import 'package:flutter/cupertino.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:  5.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.27,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => const CustomBook(),
          separatorBuilder: (context, index) => const SizedBox(
            width: 15,
          ),
        ),
      ),
    );
  }
}
