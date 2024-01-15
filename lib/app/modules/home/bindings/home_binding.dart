import 'package:clone_facebook/app/modules/home/controllers/video_tab_controller.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<VideoTabController>(
      () => VideoTabController(),
    );
  }
}
