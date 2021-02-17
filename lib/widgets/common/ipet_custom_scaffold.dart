import 'package:flutter/material.dart';
import 'package:ipetmobile/constants/constants.dart';

class IPetCustomScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget iPetTopAppBar;
  final Widget iPetBottomAppBar;
  final Key ipKey;
  final Color iPetBGScaffoldColor;
  final Widget iPetDrawer;
  final Widget iPetFAB;

  const IPetCustomScaffold(
      {@required this.body,
      this.ipKey,
      this.iPetTopAppBar,
      this.iPetBottomAppBar,
      this.iPetBGScaffoldColor = AppConst.kPrimaryWhiteBgColor,
      this.iPetDrawer,
      this.iPetFAB});

  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
      backgroundColor: iPetBGScaffoldColor,
      key: ipKey,
      appBar: iPetTopAppBar,
      body: SafeArea(
        child: body,
      ),
      bottomNavigationBar: iPetBottomAppBar,
      drawer: iPetDrawer,
      floatingActionButton: iPetFAB,
    );
  }
}
