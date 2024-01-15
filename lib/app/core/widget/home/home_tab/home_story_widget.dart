import 'package:clone_facebook/app/core/style/app_color.dart';
import 'package:clone_facebook/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeStoryWidget extends StatelessWidget {
  const HomeStoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: SizedBox(
        height: 170,
        child: ListView.builder(
          itemCount: Get.find<HomeController>().storyModelList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            String imageAssetsUrl = Get.find<HomeController>()
                .storyModelList[index]
                .imageUrl
                .toString();
            String title = Get.find<HomeController>()
                .storyModelList[index]
                .title
                .toString();
            return index == 0
                ? Container(
                    height: 170,
                    width: 100,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                        border:
                            Border.all(color: Colors.grey.withOpacity(0.5))),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/home_story_image_1.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                              height: 70,
                              width: 100,
                              alignment: Alignment.bottomCenter,
                              padding: const EdgeInsets.only(bottom: 8.0),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                              ),
                              child: const Text(
                                "Create story",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              )),
                        ),
                        Positioned(
                          top: 85,
                          left: 35,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                color: AppColor.primaryColor,
                                border:
                                    Border.all(color: Colors.white, width: 2)),
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(30)),
                              child: Image.asset(
                                "assets/home_add_icon.png",
                                height: 30,
                                width: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(
                    width: 100,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                        image: DecorationImage(
                            image: AssetImage(imageAssetsUrl),
                            fit: BoxFit.cover),
                        border:
                            Border.all(color: Colors.grey.withOpacity(0.5))),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 8.0,
                          left: 4.0,
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30)),
                            child: Image.asset(
                              "assets/profile_avater.jpg",
                              height: 30,
                              width: 30,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 8.0,
                          left: 8.0,
                          child: SizedBox(
                            width: 90,
                            child: Text(
                              title,
                              maxLines: 2,
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
          },
        ),
      ),
    );
  }
}
