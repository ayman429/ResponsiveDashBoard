import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/custom_dot.dart';

class DotIndicator extends StatelessWidget{
  final int currentPageIndex;

  const DotIndicator({super.key, required this.currentPageIndex});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) =>  Padding(
        padding: const EdgeInsetsDirectional.only(end: 6),
        child: CustomDot(isActive: index == currentPageIndex),
      )),
    );
  }
}