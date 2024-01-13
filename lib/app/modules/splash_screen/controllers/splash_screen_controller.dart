import 'dart:async';

import 'package:clone_facebook/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() async {
    print("this is akij");
    startTimer();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  startTimer() {
    var duration = const Duration(seconds: 3);
    return Timer(duration, gotoLandingScreen);
  }

  void gotoLandingScreen() {
    Get.toNamed(Routes.HOME);
  }
}
