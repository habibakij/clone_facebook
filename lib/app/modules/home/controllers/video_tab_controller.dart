import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class VideoTabController extends GetxController {
  List<VideoPlayerController>? videoControllerList;

  List<String> videoList = [
    "assets/video/video_1.mp4",
    "assets/video/video_2.mp4",
    "assets/video/video_3.mp4",
    "assets/video/video_4.mp4",
    "assets/video/video_5.mp4",
    "assets/video/video_6.mp4",
  ];

  @override
  void onInit() {
    super.onInit();

    videoControllerList = [
      VideoPlayerController.asset("assets/video/video_1.mp4"),
      VideoPlayerController.asset("assets/video/video_2.mp4"),
      VideoPlayerController.asset("assets/video/video_3.mp4"),
      VideoPlayerController.asset("assets/video/video_4.mp4"),
      VideoPlayerController.asset("assets/video/video_5.mp4"),
      VideoPlayerController.asset("assets/video/video_6.mp4"),
    ];
  }

  @override
  void dispose() {
    super.dispose();
    videoControllerList?.clear();
  }
}
