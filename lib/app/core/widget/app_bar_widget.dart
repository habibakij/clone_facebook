import 'package:clone_facebook/app/core/style/app_color.dart';
import 'package:clone_facebook/app/core/widget/app_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "facebook",
          style: TextStyle(
              fontSize: 24,
              color: AppColor.primaryColor,
              fontWeight: FontWeight.w900,
              letterSpacing: 0,
              wordSpacing: 0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                color: Colors.grey.withOpacity(0.2),
              ),
              child: Image.asset(
                "assets/search.png",
                height: 18,
                width: 18,
              ),
            ),
            AppWidget().spaceW16(),
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                color: Colors.grey.withOpacity(0.2),
              ),
              child: Image.asset(
                "assets/messenger.png",
                height: 18,
                width: 18,
              ),
            ),
            AppWidget().spaceW10(),
          ],
        ),
      ],
    );
  }
}
