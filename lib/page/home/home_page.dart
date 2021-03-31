import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/page/home/all/all_page.dart';
import 'package:flutter_app/page/home/drawer/drawer_page.dart';
import 'package:flutter_app/page/home/dress/dress_page.dart';
import 'package:flutter_app/page/home/personal/personal_page.dart';
import 'package:flutter_app/widget/home_appbar.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() {
    return _HomeState();
  }
}

class _HomeState extends State<HomePage> {
  final _controller = PageController();

  /// 当前页面标识
  var _currentType = HomeTabType.TAB_TYPE_ALL;

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      switch (_controller.page.round()) {
        case 0:
          if (_currentType != HomeTabType.TAB_TYPE_ALL) {
            setState(() {
              _currentType = HomeTabType.TAB_TYPE_ALL;
            });
          }
          break;
        case 1:
          if (_currentType != HomeTabType.TAB_TYPE_DRESS) {
            setState(() {
              _currentType = HomeTabType.TAB_TYPE_DRESS;
            });
          }
          break;
        case 2:
          if (_currentType != HomeTabType.TAB_TYPE_DRAWER) {
            setState(() {
              _currentType = HomeTabType.TAB_TYPE_DRAWER;
            });
          }
          break;
        case 3:
          if (_currentType != HomeTabType.TAB_TYPE_PERSONAL) {
            setState(() {
              _currentType = HomeTabType.TAB_TYPE_PERSONAL;
            });
          }
          break;
      }
    });
  }

  @override
  void dispose() {
    super.dispose();

    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppbar(
        currentType: _currentType,
        onTabSelected: (type) {
          setState(() {
            switch (type) {
              case HomeTabType.TAB_TYPE_ALL:
                _controller.jumpToPage(0);
                break;
              case HomeTabType.TAB_TYPE_DRESS:
                _controller.jumpToPage(1);
                break;
              case HomeTabType.TAB_TYPE_DRAWER:
                _controller.jumpToPage(2);
                break;
              case HomeTabType.TAB_TYPE_PERSONAL:
                _controller.jumpToPage(3);
                break;
            }

            _currentType = type;
          });
        },
      ),
      backgroundColor: Colors.white,
      body: _buildBody(),
    );
  }

  /// 主体内容部分
  Widget _buildBody() {
    return Stack(
      children: [
        PageView.builder(
          controller: _controller,
          itemBuilder: (context, index) {
            switch (index) {
              case 0:
                return AllPage();
              case 1:
                return DressPage();
              case 2:
                return DrawerPage();
              case 3:
                return PersonalPage();
            }

            return Container();
          },
        ),
        Positioned(
          bottom: 60,
          left: 0,
          right: 0,
          child: Center(
            child: _buildUploadBtn(),
          ),
        )
      ],
    );
  }

  /// 下面的悬浮按钮
  Widget _buildUploadBtn() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // 按钮
        SizedBox(
          width: 171,
          height: 44,
          child: Material(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFF9D0833),
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () {
                debugPrint("Upload photo");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Image.asset(
                      "images/ic_add.png",
                      height: 20,
                      width: 20,
                    ),
                  ),
                  Text(
                    "Upload photo",
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),

        // 小红点
        Positioned(
          right: -9,
          top: -9,
          child: Container(
            height: 18,
            width: 18,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: const Color(0XFFF31453),
            ),
            child: Text(
              "2",
              style: const TextStyle(fontSize: 12, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
