import 'package:clone_facebook/app/core/style/app_color.dart';
import 'package:clone_facebook/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeToggleTab extends StatefulWidget {
  final Function(int) callback;
  final List<String> imageList;
  final double height;
  final double width;
  final BoxDecoration animatedBoxDecoration;

  final double offset;
  final Duration duration;

  const HomeToggleTab({
    Key? key,
    required this.callback,
    required this.imageList,
    required this.height,
    required this.animatedBoxDecoration,
    required this.width,
    this.offset = 0.02,
    this.duration = const Duration(milliseconds: 300),
  }) : super(key: key);

  @override
  _HomeToggleTabState createState() => _HomeToggleTabState();
}

class _HomeToggleTabState extends State<HomeToggleTab> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height + 5,
      width: widget.width,
      child: Column(children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            for (int i = 0; i < widget.imageList.length; i++)
              _buildSwitchTab(
                i == Get.find<HomeController>().activeIndex.value,
                widget.imageList[i],
                i == Get.find<HomeController>().activeIndex.value ? 1 : 0,
                i,
              ),
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 2),
              child: Container(
                width: widget.width - 4,
                height: 1.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.liteGray,
                ),
              ),
            ),
            AnimatedAlign(
              alignment: Alignment(
                  (Get.find<HomeController>().activeIndex.value /
                          (widget.imageList.length - 1) *
                          (2 - 2 * widget.offset)) -
                      1 +
                      widget.offset,
                  0),
              duration: widget.duration,
              child: Container(
                width: (widget.width / widget.imageList.length),
                height: 1.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.primaryColor,
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }

  Widget _buildSwitchTab(
    bool isLeft,
    String imageAssetPath,
    int colorCode,
    int i,
  ) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        setState(() {
          Get.find<HomeController>().activeIndex.value = i;
          widget.callback(i);
        });
      },
      child: Container(
        alignment: Alignment.center,
        width: widget.width / widget.imageList.length,
        height: widget.height,
        child: Image.asset(
          imageAssetPath,
          height: 25,
          width: 25,
          color: colorCode == 1 ? AppColor.primaryColor : null,
        ),
      ),
    );
  }
}
