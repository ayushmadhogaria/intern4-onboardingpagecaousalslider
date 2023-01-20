import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'slider_widget.dart';
import 'slider_items.dart';
import 'slide_dots.dart';
import 'buttons.dart';
import 'register.dart';

void main() {
  runApp(const OnBoardingPage());
}

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int activeIndex = 0;
  final controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 212, 195, 39),
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HaventRegistered(),
                        ));
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Skip",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            SliderWidget(
                controller: controller,
                onPageChanged: (index) {
                  setState(() {
                    activeIndex = index;
                  });
                }),
            const SizedBox(
              height: 30,
            ),
            Text(sliderItems[activeIndex].title,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
            const SizedBox(
              height: 15,
            ),
            Text(
              textAlign: TextAlign.center,
              sliderItems[activeIndex].description,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 30,
            ),
            SlideDots(activeIndex: activeIndex),
            Buttons(controller: controller),
          ],
        ),
      ),
    );
  }
}
