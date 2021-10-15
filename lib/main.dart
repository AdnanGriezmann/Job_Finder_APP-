import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:job_finder_app/Views/onboarding/onboardingScreen.dart';
import 'package:sizer/sizer.dart';

void main() {
 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    

 return Sizer(builder: (context, orientation, deviceType) {
     return GetMaterialApp(
        title: 'Job Finder',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(0xff438187),
          accentColor: Color(0xfffed408),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
       home: OnboardingScreen(),
      );
    });
  }
}
