import 'package:flutter/material.dart';
import 'package:ipetmobile/constants/constants.dart';

class Label extends StatelessWidget {
  const Label({
    Key key,
    @required this.text,
    this.textColor = AppConst.kBlueBlackColor,
    this.size,
    this.fontWeight = FontWeight.w500,
    this.textAlign = TextAlign.left,
    this.fontFamily = AppConst.montserrat,
    this.maxLines,
    this.overflow,
    this.height,
  }) : super(key: key);

  final String text;
  final Color textColor;
  final double size;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final String fontFamily;
  final int maxLines;
  final TextOverflow overflow;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        height: height,
        color: textColor ?? Colors.black,
        fontSize: size,
      ),
      textAlign: textAlign,
      textScaleFactor: 1,
    );
  }
}
