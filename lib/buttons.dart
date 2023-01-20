import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'next_button.dart';
import 'back_button.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final CarouselController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      color: const Color.fromARGB(255, 212, 195, 39),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BackBtn(backButtonController: controller),
          NextButton(forwardButtonController: controller),
        ],
      ),
    );
  }
}
