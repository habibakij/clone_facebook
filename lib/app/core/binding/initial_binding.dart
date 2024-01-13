import 'package:clone_facebook/app/modules/home/bindings/home_binding.dart';
import 'package:clone_facebook/app/modules/splash_screen/bindings/splash_screen_binding.dart';
import 'package:get/get.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    SplashScreenBinding().dependencies();
    HomeBinding().dependencies();
  }
}
