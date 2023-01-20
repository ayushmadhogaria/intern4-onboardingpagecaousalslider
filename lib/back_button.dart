import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

class BackBtn extends StatefulWidget {
  final CarouselController backButtonController;
  const BackBtn({Key? key, required this.backButtonController})
      : super(key: key);

  @override
  State<BackBtn> createState() => _BackBtnState();
}

class _BackBtnState extends State<BackBtn> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        previous();
      },
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
          height: 58,
          width: 58,
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          )),
    );
  }

  previous() {
    widget.backButtonController.previousPage();
  }
}
