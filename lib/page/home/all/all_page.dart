import 'package:flutter/material.dart';
import 'package:flutter_app/widget/home_all_item.dart';

class AllPage extends StatefulWidget {
  @override
  State createState() {
    return _AllState();
  }
}

class _AllState extends State<AllPage> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      itemCount: 20,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        crossAxisCount: 2,
        childAspectRatio: 175 / 306.25,
      ),
      itemBuilder: (context, index) {
        return HomeAllItem();
      },
    );
  }
}
