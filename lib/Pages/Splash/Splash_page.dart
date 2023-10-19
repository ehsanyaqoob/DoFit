import 'package:flutter/material.dart';
import 'dart:async';

import 'package:get/get.dart';

import 'SplashPage2.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  double logoSize = 0.5; // Initial size of the logo

  @override
  void initState() {
    super.initState();
    // Start the animation and transition after a delay
    Timer(Duration(seconds: 3), () {
      setState(() {
        logoSize = 1.0; // Final size of the logo (full size)
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 2),
              curve: Curves.easeInOut,
              width: 350 * logoSize,
              height: 450 * logoSize,
              child: Image.asset('Images/dofit.png'),
            ),
            SizedBox(height: 20), // Added spacing
            ElevatedButton(
              
                onPressed: () {
                  Get.to(SplashPage2());
                },
                child: Text('Splash 2'))
          ],
        ),
      ),
    );
  }
}
