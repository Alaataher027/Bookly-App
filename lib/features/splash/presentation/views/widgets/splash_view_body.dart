import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsData.logo,
        ),
        Center(
          child: Text(
            "the movie app U want!",
            style: TextStyle(
              fontSize: 20,
              color: const Color.fromARGB(255, 230, 222, 222),
            ),
          ),
        ),
      ],
    );
  }
}
