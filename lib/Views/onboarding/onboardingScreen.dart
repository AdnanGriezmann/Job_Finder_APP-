import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:job_finder_app/Views/Splash/SplashScreen.dart';

import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        globalBackgroundColor: Colors.amber,
        // different Screen views...
        pages: [
          PageViewModel(
            title: 'Best Finding and hire teams or dev',
            body:
                'Provide a easy and understan UI highly performance to apply and awesome resume',
            image: Center(
              child: Padding(
                padding: EdgeInsets.all(2.0.w),
                child: Image.asset('Assets/images/1.png',
                    height: 100.0.h, width: 130.0.h),
              ),
            ),
            decoration: PageDecoration(
                titleTextStyle: TextStyle(
                    fontSize: 18.0.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Lato',
                    fontStyle: FontStyle.italic),
                bodyTextStyle: TextStyle(
                    fontSize: 13.0.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Lato',
                    fontStyle: FontStyle.italic),
                descriptionPadding: EdgeInsets.all(7.0.w),
                imagePadding: EdgeInsets.all(7.0.w),
                pageColor:  Colors.amber,),
          ),
          PageViewModel(
            title: 'Job hunting made easy',
            body:
                'Easy to enhanced and cover your job letter with through linkedIn or others',
            image: Center(
              child: Padding(
                padding: EdgeInsets.all(2.w),
                child: Image.asset('Assets/images/2.png',
                    height: 100.0.h, width: 130.0.w),
              ),
            ),
            decoration: PageDecoration(
              titleTextStyle: TextStyle(
                  fontSize: 18.0.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Lato',
                  fontStyle: FontStyle.italic),
              bodyTextStyle: TextStyle(
                  fontSize: 13.0.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Lato',
                  fontStyle: FontStyle.italic),
              descriptionPadding: EdgeInsets.all(7.0.w),
              imagePadding: EdgeInsets.all(7.0.w),
              pageColor:  Colors.amber,
            ),
          ),
          PageViewModel(
            title: 'Accepted and Start a finding Jobs',
            body:
                'Starts your new journey with finder a jobs and earn more relax and cool ',
            image: Center(
              child: Padding(
                padding: EdgeInsets.all(2.0.w),
                child: Image.asset('Assets/images/3.png',
                    height: 100.0.h, width: 130.0.w),
              ),
            ),
            decoration: PageDecoration(
              titleTextStyle: TextStyle(
                  fontSize: 18.0.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Lato',
                  fontStyle: FontStyle.italic),
              bodyTextStyle: TextStyle(
                  fontSize: 13.0.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Lato',
                  fontStyle: FontStyle.italic),
              descriptionPadding: EdgeInsets.all(7.0.w),
              imagePadding: EdgeInsets.all(7.0.w),
              pageColor:  Colors.amber,
            ),
            // Button:
            footer: MaterialButton(
              child: Text(
                'Start Finding',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lato',
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                    fontSize: 12.0.sp),
              ),
              height: 6.0.h,
              minWidth: 35.0.w,
              color: Colors.black,
              onPressed: () async {
                Get.off(SplashScreen(), transition: Transition.rightToLeft);
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0.w)),
            ),
          ),
        ],
        done: Text(
          'Read',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        onDone: () async {
          // Get.off(SplashScreen(), transition: Transition.rightToLeft);
        },
        showNextButton: true,
        showSkipButton: true,
        skip: Text(
          'Skip',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        next: Icon(Icons.arrow_forward_ios,color: Colors.black,),
        dotsDecorator: DotsDecorator(
            color: Colors.white,
            size: Size(13, 13),
            activeSize: Size(20, 10),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0.h),
            ),
            activeColor: Colors.black),
      ),
    );
  }
}
