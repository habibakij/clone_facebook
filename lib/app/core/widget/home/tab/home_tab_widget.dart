import 'package:clone_facebook/app/core/widget/app_widget.dart';
import 'package:clone_facebook/app/core/widget/home/home_tab/home_mind_widget.dart';
import 'package:clone_facebook/app/core/widget/home/home_tab/home_post_widget.dart';
import 'package:clone_facebook/app/core/widget/home/home_tab/home_story_widget.dart';
import 'package:clone_facebook/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeTabWidget extends StatelessWidget {
  const HomeTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeMindWidget(),
        AppWidget().spaceH12(),
        AppWidget().spaceWidget(),
        AppWidget().spaceH12(),
        const HomeStoryWidget(),
        AppWidget().spaceH12(),
        AppWidget().spaceWidget(),
        ListView.builder(
          itemCount: Get.find<HomeController>().homePostDataList.length,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: HomePostWidget(
                homePostModel:
                    Get.find<HomeController>().homePostDataList[index],
              ),
            );
          },
        ),
        AppWidget().spaceWidget(),
      ],
    );
  }
}
