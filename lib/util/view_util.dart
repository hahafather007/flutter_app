import 'package:flutter/material.dart';

extension BuildContextExt on BuildContext {
  /// 获取状态栏高度
  double getStateBarHeight() {
    return MediaQuery.of(this).padding.top;
  }
}
