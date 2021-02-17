import 'package:flutter/material.dart';
import 'package:ipetmobile/viewmodels/home_viewmodel.dart';
import 'package:ipetmobile/views/dash_board_screen/dash_board_screen.dart';
import 'package:ipetmobile/widgets/app_drawer/app_drawer.dart';
import 'package:ipetmobile/widgets/base_model_widget.dart';
import 'package:ipetmobile/widgets/common/ipet_custom_scaffold.dart';

class HomeMobilePortrait extends BaseModelWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return IPetCustomScaffold(
      body: DashBoardScreen(),
    );
  }
}

class HomeMobileLandscape extends BaseModelWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.of(context)
      //         .push(MaterialPageRoute(builder: (context) => SecondView()));
      //   },
      // ),
      body: Row(
        children: <Widget>[
          AppDrawer(),
          Expanded(
            child: Center(
              child: DashBoardScreen(),
            ),
          )
        ],
      ),
    );
  }
}
