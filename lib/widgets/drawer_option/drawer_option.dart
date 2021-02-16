// import 'package:flutter/material.dart';
// import 'package:flutteruiresponsive/responsive/orientation_layout.dart';
// import 'package:flutteruiresponsive/responsive/screen_type_layout.dart';
// import 'package:flutteruiresponsive/widgets/drawer_option/drawer_option_mobile.dart';
// import 'package:flutteruiresponsive/widgets/drawer_option/drawer_option_tablet.dart';
//
// class DrawerOption extends StatelessWidget {
//   final String title;
//   final IconData iconData;
//   const DrawerOption({
//     Key key,
//     this.title,
//     this.iconData,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ScreenTypeLayout(
//       mobile: OrientationLayout(
//         landscape: DrawerOptionMobileLandscape(
//           iconData: iconData,
//         ),
//         portrait: DrawerOptionMobilePortrait(
//           title: title,
//           iconData: iconData,
//         ),
//       ),
//       tablet: OrientationLayout(
//         portrait: DrawerOptionTabletPortrait(
//           iconData: iconData,
//           title: title,
//         ),
//         landscape: DrawerOptionMobilePortrait(
//           iconData: iconData,
//           title: title,
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:ipetmobile/datamodels/drawer_item_data.dart';
import 'package:ipetmobile/responsive/orientation_layout.dart';
import 'package:ipetmobile/responsive/screen_type_layout.dart';
import 'package:ipetmobile/widgets/drawer_option/drawer_option_mobile.dart';
import 'package:ipetmobile/widgets/drawer_option/drawer_option_tablet.dart';
import 'package:provider/provider.dart';

class DrawerOption extends StatelessWidget {
  final String title;
  final IconData iconData;
  const DrawerOption({
    Key key,
    this.title,
    this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: DrawerItemData(title: title, iconData: iconData),
      child: ScreenTypeLayout(
        mobile: OrientationLayout(
          landscape: (context) => DrawerOptionMobileLandscape(),
          portrait: (context) => DrawerOptionMobilePortrait(),
        ),
        tablet: OrientationLayout(
          portrait: (context) => DrawerOptionTabletPortrait(),
          landscape: (context) => DrawerOptionMobilePortrait(),
        ),
      ),
    );
  }
}
