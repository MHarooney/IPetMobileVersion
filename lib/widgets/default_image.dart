import 'package:flutter/material.dart';

class DefaultImage extends StatelessWidget {
  final String image;
  final double width;
  final double height;

  DefaultImage({
    @required this.image,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(
        image,
        width: width,
        height: height,
      ),
    );
  }
}
