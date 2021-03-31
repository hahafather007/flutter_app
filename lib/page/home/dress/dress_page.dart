import 'package:flutter/material.dart';
import 'package:flutter_app/widget/home_dress_item.dart';

class DressPage extends StatefulWidget {
  @override
  State createState() {
    return _DressState();
  }
}

class _DressState extends State<DressPage> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 20,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 187.5 / 280.75),
      itemBuilder: (context, index) {
        return HomeDressItem();
      },
    );
  }
}
