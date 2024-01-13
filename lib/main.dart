import 'package:clone_facebook/app/modules/splash_screen/bindings/splash_screen_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/core/binding/initial_binding.dart';
import 'app/routes/app_pages.dart';

Future<void> main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  print("========== working =============");
  runApp(
    GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.initScreen,
      initialBinding: InitialBinding(),
      getPages: AppPages.routes,
    ),
  );
}
