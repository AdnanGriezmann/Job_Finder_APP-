import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:job_finder_app/Views/Home/HomeScreen.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds: 4), () {
      Get.offAll(HomeScreen(), transition: Transition.rightToLeft);
      loading();
    });
  }

  void loading() {
    CircularProgressIndicator();
  }
}
