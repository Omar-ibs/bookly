import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRate extends StatelessWidget {
  const BookRate({super.key, this.mainAxisAlignment = MainAxisAlignment.start, required this.rate, required this.count,});
  final MainAxisAlignment mainAxisAlignment;
final String rate;
final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children:  [
       const Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        Padding(
          padding:const EdgeInsets.only(top: 0.0, left: 3.0, right: 3.0),
          child: Text(
            rate,
            style:const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        Text(
          count.toString(),
          style: Styles.textStyle14,
        )
      ],
    );
  }
}
