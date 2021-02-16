import 'package:flutter/material.dart';

class IPetCustomSizedBox extends StatelessWidget {
  IPetCustomSizedBox({
    this.height,
    this.width,
    this.iPetChild,
  });

  final double height;
  final double width;
  final Widget iPetChild;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: iPetChild,
    );
  }
}
