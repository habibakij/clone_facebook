import 'package:clone_facebook/app/core/style/app_color.dart';
import 'package:clone_facebook/app/core/widget/app_widget.dart';
import 'package:clone_facebook/app/core/widget/home/video_tab/video_list_item.dart';
import 'package:clone_facebook/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VideoTabWidget extends StatelessWidget {
  const VideoTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "Video",
                style: TextStyle(
                    fontSize: 22,
                    color: AppColor.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.person,
                  size: 25,
                  color: AppColor.black,
                ),
                AppWidget().spaceW10(),
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  child: Image.asset(
                    "assets/search.png",
                    height: 20,
                    width: 20,
                  ),
                ),
                AppWidget().spaceW8(),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                    color: Colors.blue.withOpacity(0.1)),
                child: const Text(
                  "For you",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.white.withOpacity(0.2)),
                child: const Text(
                  "Live",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.white.withOpacity(0.2)),
                child: const Text(
                  "Gaming",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.white.withOpacity(0.2)),
                child: const Text(
                  "Following",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.white.withOpacity(0.2)),
                child: const Text(
                  "habi adnan akij",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        AppWidget().spaceH12(),
        AppWidget().spaceCustomWidget(4),
        AppWidget().spaceH12(),
        ListView.builder(
          itemCount: Get.find<HomeController>().homePostDataList.length,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: VideoListItem(),
            );
          },
        ),
      ],
    );
  }
}
