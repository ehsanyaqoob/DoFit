import 'package:dofit/BoardingPages/Page3.dart';
import 'package:dofit/BoardingPages/Page4.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:onboarding/onboarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Page1.dart';
import 'Page2.dart';

class Boarding extends StatefulWidget {
  @override
  State<Boarding> createState() => _MyBoarding();
}

class _MyBoarding extends State<Boarding> {
  final _controller = PageController();

  late Material materialButton;

  late int index;

  final onboardingPagesList = [
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: background,
          border: Border.all(
            width: 0.2,
            color: background,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              Page1(),
            ],
          ),
        ),
      ),
    ),
    // for page 2
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: background,
          border: Border.all(
            width: 0.0,
            color: background,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              Page2(),
            ],
          ),
        ),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, // Center the content vertically

        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              children: [
                Page1(),
                Page2(),
                Page3(),
                Page4(),
              ],
            ),
          ),
          SizedBox(height: 10),
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            effect: JumpingDotEffect(
              dotWidth: 8,
              dotHeight: 10,
              dotColor: Colors.grey,
              activeDotColor: Colors.teal,
              spacing: 8,
            ),
          ),
          SizedBox(height: 26),
          ElevatedButton(onPressed: () {}, child: Text('Next')),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
