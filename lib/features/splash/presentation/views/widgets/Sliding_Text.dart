import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText(
      {super.key, required this.slidingText, required this.opacity});

  final Animation<Offset> slidingText;
  final AnimationController opacity;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingText,
        builder: (context, _) {
          return SlideTransition(
              position: slidingText,
              child: FadeTransition(
                  opacity: opacity,
                  child: const Text(
                    'Read Free Books',
                    textAlign: TextAlign.center,
                  )));
        });
  }
}
