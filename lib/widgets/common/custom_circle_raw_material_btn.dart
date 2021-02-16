import 'package:flutter/material.dart';

class IPetCustomCircleBtn extends StatelessWidget {
  IPetCustomCircleBtn({
    this.onPressed,
    @required this.iPetFillColor,
    @required this.iPetIconColor,
    this.iPetChildCard,
    this.iPetShapeBorder,
    this.constraintWidth,
    this.constraintHeight,
  });

  final Function onPressed;
  final Color iPetFillColor;
  final Color iPetIconColor;
  final Widget iPetChildCard;
  final ShapeBorder iPetShapeBorder;
  final double constraintWidth;
  final double constraintHeight;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: iPetChildCard,
      onPressed: onPressed,
      elevation: 6,
      constraints: BoxConstraints.tightFor(
        width: constraintWidth,
        height: constraintHeight,
      ),
      // shape: iPetShapeBorder,
      // shape: iPetShapeBorder,
      shape: iPetShapeBorder,
      // shape: RoundedRectangleBorder(
      //   borderRadius: new BorderRadius.circular(30.0),
      // ),
      fillColor: iPetFillColor,
    );
  }
}
