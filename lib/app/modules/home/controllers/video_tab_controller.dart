import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class VideoTabController extends GetxController {
  late VideoPlayerController videoController;

  @override
  void onInit() {
    super.onInit();
    videoController = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
      });
  }

  @override
  void dispose() {
    super.dispose();
    videoController.dispose();
  }
}
