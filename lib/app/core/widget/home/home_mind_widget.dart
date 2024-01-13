import 'package:clone_facebook/app/core/widget/app_widget.dart';
import 'package:clone_facebook/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeMindWidget extends StatelessWidget {
  const HomeMindWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Image.asset(
            "assets/profile_avater.jpg",
            height: 40,
            width: 40,
          ),
        ),
        AppWidget().spaceW10(),
        Expanded(
          flex: 8,
          child: Container(
            height: 35,
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                border: Border.all(color: Colors.grey.withOpacity(0.5))),
            child: TextField(
              controller: Get.find<HomeController>().whatsOnMyMindController,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'whats on your mind?',
                hintStyle: TextStyle(fontSize: 14, color: Colors.black),
                contentPadding: EdgeInsets.only(bottom: 14),
              ),
            ),
          ),
        ),
        AppWidget().spaceW16(),
        Expanded(
          flex: 1,
          child: Image.asset(
            "assets/home_image_icon.png",
            height: 25,
            width: 25,
            color: Colors.green,
          ),
        ),
        AppWidget().spaceW8(),
      ],
    );
  }
}
