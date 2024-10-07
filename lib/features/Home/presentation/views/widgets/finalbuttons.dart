import 'package:bookly/core/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';

class FinalButtons extends StatelessWidget {
  const FinalButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: 'Free',
              textColor: Colors.black,
              backgroundColor: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              fontSize: 18.0,
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Free Preview',
              textColor: Colors.white,
              backgroundColor: Color.fromARGB(255, 255, 114, 71),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }
}
