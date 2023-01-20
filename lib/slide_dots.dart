import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SlideDots extends StatelessWidget {
  const SlideDots({
    Key? key,
    required this.activeIndex,
  }) : super(key: key);

  final int activeIndex;

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: 3,
      effect: const WormEffect(
          dotColor: Colors.white38,
          activeDotColor: Colors.black,
          dotHeight: 9,
          dotWidth: 9),
    );
  }
}
