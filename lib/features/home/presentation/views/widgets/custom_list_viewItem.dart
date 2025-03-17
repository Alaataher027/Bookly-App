import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        aspectRatio: 2.7 / 4, // width/height
        child: Container(
          // width: MediaQuery.of(context).size.width * .38,
          // height: MediaQuery.of(context).size.height * .27,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.amber,
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AssetsData.testBook1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
