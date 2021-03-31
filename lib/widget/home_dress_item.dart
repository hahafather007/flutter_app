import 'package:flutter/material.dart';

/// 第二个页面的item
class HomeDressItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // 图片
        Positioned.fill(
          child: Image.asset(
            "images/img_5.png",
            fit: BoxFit.fill,
          ),
        ),

        // 左上角icon
        Positioned(
          left: 4,
          top: 4,
          child: Image.asset(
            "images/ic_dress_item_left.png",
            width: 48,
            height: 48,
          ),
        ),

        // 右上角X
        Positioned(
          top: 4,
          right: 4,
          child: GestureDetector(
            onTap: () {
              debugPrint("delete");
            },
            child: Image.asset(
              "images/ic_delete.png",
              width: 48,
              height: 48,
            ),
          ),
        ),

        // 水映
        Positioned(
          left: 16,
          bottom: 16,
          child: Text(
            "@IGusername",
            style: const TextStyle(fontSize: 12, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
