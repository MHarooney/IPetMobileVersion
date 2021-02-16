import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ipetmobile/responsive/orientation_layout.dart';
import 'package:ipetmobile/responsive/screen_type_layout.dart';
import 'package:ipetmobile/widgets/app_drawer/app_drawer_mobile.dart';
import 'package:ipetmobile/widgets/app_drawer/app_drawer_tablet.dart';
import 'package:ipetmobile/widgets/drawer_option/drawer_option.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AppDrawerMobile(),
      tablet: OrientationLayout(
        portrait: (context) => AppDrawerTabletPortrait(),
        landscape: (context) => AppDrawerTabletLandscape(),
      ),
    );
  }

  static List<Widget> getDrawerOptions() {
    return [
      DrawerOption(
        title: 'Home',
        iconData: FontAwesomeIcons.paw,
      ),
      DrawerOption(
        title: 'Rate App',
        iconData: Icons.star_rate,
      ),
      DrawerOption(
        title: 'Settings',
        iconData: Icons.settings,
      ),
    ];
  }
}
