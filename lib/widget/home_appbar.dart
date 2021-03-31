import 'package:flutter/material.dart';

class HomeAppbar extends StatelessWidget with PreferredSizeWidget {
  /// 背景色
  final Color color;

  /// 当前选中的tab
  final HomeTabType currentType;

  /// 用户点击切换tab的回调
  final ValueChanged<HomeTabType> onTabSelected;

  const HomeAppbar(
      {Key key,
      @required this.currentType,
      this.color = Colors.white,
      this.onTabSelected})
      : assert(color != null && currentType != null),
        super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
      color: color,
      alignment: Alignment.bottomCenter,
      child: Row(
        children: [
          Image.asset(
            "images/ic_app_title.png",
            width: 75,
            height: 20,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _buildIconTab(
                  imgUrl: "images/ic_home_tab_all.png",
                  type: HomeTabType.TAB_TYPE_ALL,
                ),
                SizedBox(width: 35),
                _buildIconTab(
                  imgUrl: "images/ic_home_tab_dress.png",
                  type: HomeTabType.TAB_TYPE_DRESS,
                ),
                SizedBox(width: 35),
                _buildIconTab(
                  imgUrl: "images/ic_home_tab_drawer.png",
                  type: HomeTabType.TAB_TYPE_DRAWER,
                ),
                SizedBox(width: 35),
                _buildIconTab(
                  imgUrl: "images/ic_home_tab_personal.png",
                  type: HomeTabType.TAB_TYPE_PERSONAL,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// [imgUrl] tab的图片
  /// [selectedType] 当什么状态时选中该tab
  Widget _buildIconTab({@required String imgUrl, @required HomeTabType type}) {
    return GestureDetector(
      onTap: () {
        if (currentType == type) return;

        onTabSelected(type);
      },
      child: Image.asset(
        imgUrl,
        height: 24,
        width: 24,
        color: currentType == type ? const Color(0xFF9D0833) : null,
      ),
    );
  }
}

enum HomeTabType {
  /// 第一个tab
  TAB_TYPE_ALL,

  /// 第二个tab
  TAB_TYPE_DRESS,

  /// 第三个tab
  TAB_TYPE_DRAWER,

  /// 第四个tab
  TAB_TYPE_PERSONAL
}
