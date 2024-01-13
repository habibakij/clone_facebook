import 'package:clone_facebook/app/core/style/app_color.dart';
import 'package:clone_facebook/app/core/widget/app_bar_widget.dart';
import 'package:clone_facebook/app/core/widget/home/tab/friends_tab_widget.dart';
import 'package:clone_facebook/app/core/widget/home/tab/games_tab_widget.dart';
import 'package:clone_facebook/app/core/widget/home/tab/home_tab_widget.dart';
import 'package:clone_facebook/app/core/widget/home/tab/notification_tab_widget.dart';
import 'package:clone_facebook/app/core/widget/home/tab/profile_tab_widget.dart';
import 'package:clone_facebook/app/core/widget/home/tab/video_tab_widget.dart';
import 'package:clone_facebook/app/core/widget/home_toggle_tab.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColor.white,
            automaticallyImplyLeading: false,
            pinned: true,
            floating: false,
            elevation: 1,
            expandedHeight: 85,
            title: const AppBarWidget(),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0.0),
              child: Container(
                height: 56,
                color: AppColor.white,
                //margin: const EdgeInsets.only(bottom: 5),
                child: HomeToggleTab(
                  duration: const Duration(milliseconds: 200),
                  callback: (int i) {
                    controller.activeIndex.value = i;
                    switch (i) {
                      case 0:
                        const HomeTabWidget();
                        break;
                      case 1:
                        const VideoTabWidget();
                        break;
                      case 2:
                        const FriendsTabWidget();
                        break;
                      case 3:
                        const GamesTabWidget();
                        break;
                      case 4:
                        const NotificationTabWidget();
                        break;
                      case 5:
                        const ProfileTabWidget();
                        break;
                    }
                  },
                  imageList: controller.appbarIconList,
                  height: 55,
                  width: Get.width,
                  animatedBoxDecoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.primaryColor.withOpacity(0.2),
                        spreadRadius: 4,
                        blurRadius: 6,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                    color: AppColor.primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Obx(() => Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: controller.activeIndex.value == 0
                      ? const HomeTabWidget()
                      : controller.activeIndex.value == 1
                          ? const VideoTabWidget()
                          : controller.activeIndex.value == 2
                              ? const FriendsTabWidget()
                              : controller.activeIndex.value == 3
                                  ? const GamesTabWidget()
                                  : controller.activeIndex.value == 4
                                      ? const NotificationTabWidget()
                                      : const ProfileTabWidget(),
                )),
          ),
        ],
      ),
    );
  }
}
