import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 首页第一个页面的item
class HomeAllItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          borderRadius: BorderRadius.circular(10),
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      "images/img_1.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      "images/img_2.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      "images/img_3.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      "images/img_4.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // 全屏
                GestureDetector(
                  onTap: () {
                    debugPrint("full screen");
                  },
                  child: Image.asset(
                    "images/ic_full_screen.png",
                    width: 24,
                    height: 24,
                  ),
                ),

                Spacer(),

                // 中间的icon
                GestureDetector(
                  onTap: () {
                    debugPrint("ic_bookmark");
                  },
                  child: Image.asset(
                    "images/ic_bookmark.png",
                    width: 24,
                    height: 24,
                  ),
                ),

                Spacer(),

                // 更多
                GestureDetector(
                  onTap: () {
                    debugPrint("more");
                  },
                  child: Image.asset(
                    "images/ic_more.png",
                    width: 24,
                    height: 24,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
