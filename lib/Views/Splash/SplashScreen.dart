import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_finder_app/Controllers/SplashController.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
    builder: (_) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'Assets/images/spls.png',
                height: 23.0.h,
              ),
              SizedBox(height: 3.0.h),
              CircularProgressIndicator(color: Colors.black),
            
            ],
          ),
          
        ),
      );
    });
  }
}
