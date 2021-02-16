import 'package:flutter/material.dart';
import 'package:ipetmobile/constants/ipet_dimens.dart';

class IPetCustomTopBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final String iPetPawImage;
  final double iPetIconSize;
  final IconData iPetListIconData;
  final Widget iPetFirstPart;
  final List<Widget> iPetMiddlePart;
  final List<Widget> iPetLastPart;

  @override
  final Size preferredSize;

  IPetCustomTopBarWidget({
    this.iPetIconSize = IPetDimens.space20,
    this.iPetListIconData,
    this.iPetPawImage,
    @required this.iPetFirstPart,
    @required this.iPetMiddlePart,
    this.iPetLastPart,
  }) : preferredSize = Size.fromHeight(IPetDimens.space60);

  ShapeBorder kBackButtonShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(IPetDimens.space30),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: IPetDimens.space15),
            child: iPetFirstPart,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: iPetMiddlePart,
            ),
          ),
          Row(
            children: iPetLastPart,
          ),
        ],
      ),
    );
  }
}
