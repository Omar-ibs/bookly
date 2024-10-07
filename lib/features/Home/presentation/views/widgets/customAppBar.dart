import 'package:bookly/core/utils/approuter.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, bottom: 35.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsData.logo,
            height: 18,
          ),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                Navigator.pushNamed(context, AppRouter.kSearchView);
              },
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
