import 'package:flutter/material.dart';

class MyCustomCard extends StatelessWidget {
  MyCustomCard({
    @required this.colour,
    this.childCard,
    this.myOnTap,
    this.myBorderRadius,
    this.iPetBoxShadow,
    this.ipetDecoration,
    this.ipetWidth,
    this.ipetHeight,
    this.ipetMargin = const EdgeInsets.all(10.0),
  });

  final Color colour;
  final Widget childCard;
  final Function myOnTap;
  final BorderRadiusGeometry myBorderRadius;
  final List<BoxShadow> iPetBoxShadow;
  final Decoration ipetDecoration;
  final double ipetWidth;
  final double ipetHeight;
  final EdgeInsetsGeometry ipetMargin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myOnTap,
      child: Container(
        width: ipetWidth,
        height: ipetHeight,
        child: childCard,
        margin: ipetMargin,
        decoration: ipetDecoration,
      ),
    );
  }
}
