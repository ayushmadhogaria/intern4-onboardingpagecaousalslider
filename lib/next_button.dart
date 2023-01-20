import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';

class NextButton extends StatefulWidget {
  final CarouselController forwardButtonController;
  const NextButton({
    required this.forwardButtonController,
    super.key,
  });

  @override
  State<NextButton> createState() => _NextButtonState();
}

class _NextButtonState extends State<NextButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        next();
      },
      child: Container(
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(12)),
          height: 58,
          width: 245,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                textAlign: TextAlign.center,
                'Next',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ],
          )),
    );
  }

  void next() {
    widget.forwardButtonController.nextPage();
  }
}
