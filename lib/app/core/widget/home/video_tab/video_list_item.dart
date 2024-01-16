import 'package:clone_facebook/app/core/style/app_color.dart';
import 'package:clone_facebook/app/core/widget/app_widget.dart';
import 'package:clone_facebook/app/data/home/video_tab/video_post_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class VideoListItem extends StatelessWidget {
  VideoPostModel videoPostModel;
  VideoPlayerController videoPlayerController;
  VideoListItem(
      {required this.videoPostModel,
      required this.videoPlayerController,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                          image:
                              AssetImage(videoPostModel.groupImage.toString()),
                          fit: BoxFit.cover),
                    ),
                    alignment: Alignment.bottomRight,
                  ),
                  Container(
                    width: Get.width - 120,
                    margin: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              videoPostModel.groupTitle,
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            AppWidget().spaceW12(),
                            const Text(
                              "Follow",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              videoPostModel.dateTime,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            AppWidget().spaceW10(),
                            Image.asset("assets/home_world_icon.png",
                                height: 16,
                                width: 16,
                                opacity: const AlwaysStoppedAnimation(.7)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RotatedBox(
                    quarterTurns: 1,
                    child: Image.asset(
                      "assets/home_kebab_menu.png",
                      height: 20,
                    ),
                  ),
                  AppWidget().spaceW20(),
                  const Icon(
                    Icons.close,
                    size: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            videoPostModel.postText,
            style: const TextStyle(fontSize: 12, color: Colors.black),
          ),
        ),
        SizedBox(
          height: 250,
          width: Get.width,
          child: AspectRatio(
            aspectRatio: videoPlayerController.value.aspectRatio,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                VideoPlayer(videoPlayerController),
                Positioned(
                  top: 120,
                  child: InkWell(
                    onTap: () {
                      videoPlayerController.value.isPlaying
                          ? videoPlayerController.pause()
                          : videoPlayerController.play();
                    },
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                          color: AppColor.primaryColor.withOpacity(0.5),
                          border: Border.all(color: AppColor.black)),
                      child: Icon(
                        videoPlayerController.value.isPlaying
                            ? Icons.pause
                            : Icons.play_arrow,
                        size: 30,
                        color: AppColor.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: AppColor.primaryColor,
                    ),
                    padding: const EdgeInsets.all(2.0),
                    child: Image.asset(
                      "assets/home_liked_icon.png",
                      height: 10,
                      width: 10,
                      fit: BoxFit.fill,
                      color: Colors.white,
                    ),
                  ),
                  Image.asset(
                    "assets/home_love_icon.png",
                    height: 15,
                    width: 15,
                    fit: BoxFit.fill,
                  ),
                  Image.asset(
                    "assets/home_wow_icon.png",
                    height: 15,
                    width: 15,
                    fit: BoxFit.fill,
                  ),
                  Text(
                    videoPostModel.postLike,
                    style: TextStyle(
                        fontSize: 12, color: Colors.black.withOpacity(0.8)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    videoPostModel.postComment,
                    style: TextStyle(
                        fontSize: 12, color: Colors.black.withOpacity(0.8)),
                  ),
                  AppWidget().spaceW10(),
                  Text(
                    videoPostModel.postShare,
                    style: TextStyle(
                        fontSize: 12, color: Colors.black.withOpacity(0.8)),
                  ),
                  AppWidget().spaceW10(),
                  Text(
                    videoPostModel.postView,
                    style: TextStyle(
                        fontSize: 12, color: Colors.black.withOpacity(0.8)),
                  ),
                ],
              ),
            ],
          ),
        ),
        AppWidget().spaceCustomWidget(1.0),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/like_blue.png",
                    height: 20,
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Text(
                      "Like",
                      style: TextStyle(
                          fontSize: 12, color: AppColor.black.withOpacity(0.8)),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/home_comment_icon.png",
                    height: 18,
                    width: 18,
                    color: Colors.black.withOpacity(0.8),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 4.0),
                    child: Text(
                      "Comment",
                      style: TextStyle(fontSize: 12, color: AppColor.black),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.star_border,
                    size: 20,
                    color: Colors.black.withOpacity(0.8),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 4.0),
                    child: Text(
                      "Give",
                      style: TextStyle(fontSize: 12, color: AppColor.black),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/home_share_iocn.png",
                    height: 20,
                    width: 20,
                    color: Colors.black.withOpacity(0.8),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 4.0),
                    child: Text(
                      "Share",
                      style: TextStyle(fontSize: 12, color: AppColor.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        AppWidget().spaceH12(),
        AppWidget().spaceWidget(),
      ],
    );
  }
}
