import 'package:flutter/material.dart';
import 'package:ipetmobile/constants/constants.dart';

class IPetCustomIcon extends StatelessWidget {
  IPetCustomIcon({
    this.ipSize,
    @required this.ipFontIc,
    this.colour = AppConst.kBlueBlackColor,
  });

  final IconData ipFontIc;
  final double ipSize;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Icon(
      ipFontIc,
      size: ipSize,
      color: colour,
    );
  }
}
