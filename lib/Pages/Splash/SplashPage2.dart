import 'package:dofit/BoardingPages/Page1.dart';
import 'package:dofit/BoardingPages/boarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage2 extends StatefulWidget {
  const SplashPage2({Key? key}) : super(key: key);

  @override
  State<SplashPage2> createState() => _SplashPage2State();
}

class _SplashPage2State extends State<SplashPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onHorizontalDragEnd: (DragEndDetails details) {
          if (details.primaryVelocity! > 0) {
            // Swiped Right
            print('Swipe right');
            Get.to(Boarding());
          } else if (details.primaryVelocity! < 0) {
            // Swiped Left
            print('Swiped Left');
            Get.to(Boarding());
          }
        },
        // onVerticalDragEnd: (DragEndDetails details) {
        //   if (details.primaryVelocity! > 0) {
        //     // Swiped Down
        //     print('Swiped Down');
        //   } else if (details.primaryVelocity! < 0) {
        //     // Swiped Up
        //     print('Swiped Up');
        //   }
        // },
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'Images/fit5.jpg',
              fit: BoxFit.cover,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 26, vertical: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome To 👋',
                    style: GoogleFonts.mulish(
                      color: Colors.white,
                      fontSize: 50.sp,
                    ),
                  ),
                  Text(
                    'GoFit',
                    style: GoogleFonts.mulish(
                      color: Colors.white,
                      fontSize: 80.sp,
                    ),
                  ),
                  Text(
                    'Explor your way to becomes more strong\nand fit.Journey starts from here ',
                    style: GoogleFonts.mulish(
                      color: Colors.white,
                      fontSize: 20.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
