import 'package:clone_facebook/app/core/style/app_color.dart';
import 'package:clone_facebook/app/core/widget/app_widget.dart';
import 'package:clone_facebook/app/data/home/home_post_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePostWidget extends StatelessWidget {
  HomePostModel homePostModel;

  HomePostWidget({required this.homePostModel, Key? key}) : super(key: key);

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
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                          image: AssetImage(homePostModel.groupImage),
                          fit: BoxFit.cover),
                    ),
                    alignment: Alignment.bottomRight,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      child: Image.asset(
                        homePostModel.userImage,
                        height: 25,
                        width: 25,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: Get.width - 120,
                    margin: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          homePostModel.groupTitle,
                          style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text(
                              homePostModel.userTitle,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black.withOpacity(0.6),
                                  fontWeight: FontWeight.bold),
                            ),
                            AppWidget().spaceW10(),
                            Text(
                              homePostModel.duration,
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
            homePostModel.postText,
            style: const TextStyle(fontSize: 12, color: Colors.black),
          ),
        ),
        Image.asset(
          homePostModel.postImage,
          height: 250,
          width: Get.width,
          fit: BoxFit.fill,
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
                      "assets/home_like_icon.png",
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
                    homePostModel.postLike,
                    style: TextStyle(
                        fontSize: 12, color: Colors.black.withOpacity(0.8)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    homePostModel.postComment,
                    style: TextStyle(
                        fontSize: 12, color: Colors.black.withOpacity(0.8)),
                  ),
                  AppWidget().spaceW10(),
                  Text(
                    homePostModel.postShare,
                    style: TextStyle(
                        fontSize: 12, color: Colors.black.withOpacity(0.8)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
