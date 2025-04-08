import 'package:bookly_app/features/home/presentation/views/widgets/custom_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          CustomDetailsAppBar(),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: width * .17, vertical: 12),
            child: CustomBookImage(),
          ),
        ],
      ),
    );
  }
}
