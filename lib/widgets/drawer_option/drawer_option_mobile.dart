import 'package:flutter/material.dart';
import 'package:ipetmobile/constants/constants.dart';
import 'package:ipetmobile/datamodels/drawer_item_data.dart';
import 'package:ipetmobile/widgets/base_model_widget.dart';

class DrawerOptionMobilePortrait extends BaseModelWidget<DrawerItemData> {
  @override
  Widget build(BuildContext context, DrawerItemData data) {
    return Container(
      padding: const EdgeInsets.only(left: 25),
      height: 80,
      child: Row(
        children: <Widget>[
          Icon(
            data.iconData,
            size: 25,
            color: AppConst.kPrimaryColor,
          ),
          SizedBox(
            width: 25,
          ),
          Text(
            data.title,
            style: TextStyle(
              fontSize: 21,
              color: AppConst.kPrimaryColor,
            ),
          )
        ],
      ),
    );
  }
}

class DrawerOptionMobileLandscape extends BaseModelWidget<DrawerItemData> {
  @override
  Widget build(BuildContext context, DrawerItemData data) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.13,
      alignment: Alignment.center,
      child: Icon(data.iconData),
    );
  }
}
