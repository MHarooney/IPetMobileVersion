import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ipetmobile/constants/constants.dart';
import 'package:ipetmobile/viewmodels/home_viewmodel.dart';
import 'package:ipetmobile/widgets/app_drawer/app_drawer.dart';
import 'package:ipetmobile/widgets/base_model_widget.dart';
import 'package:ipetmobile/widgets/common/ipet_custom_icon.dart';
import 'package:ipetmobile/widgets/common/ipet_custom_scaffold.dart';
import 'package:ipetmobile/widgets/common/ipet_top_appbar.dart';
import 'package:ipetmobile/widgets/common/my_custom_card.dart';
import 'package:ipetmobile/widgets/default_image.dart';
import 'package:ipetmobile/widgets/label.dart';

class HomeMobilePortrait extends BaseModelWidget<HomeViewModel> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return IPetCustomScaffold(
      iPetTopAppBar: IPetCustomTopBarWidget(
        iPetFirstPart: MyCustomCard(
          colour: Colors.transparent,
          childCard: IPetCustomIcon(ipFontIc: FontAwesomeIcons.list),
          myOnTap: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        iPetMiddlePart: [
          DefaultImage(
            image: 'assets/images/ipet_paw_img.png',
          ),
          Label(
            text: 'Dash-Board',
            textColor: AppConst.kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ],
        iPetLastPart: [],
      ),
      ipKey: _scaffoldKey,
      iPetDrawer: AppDrawer(),
      // iPetFAB: FloatingActionButton(
      //   onPressed: () {
      //     model.updateTitle();
      //   },
      // ),
      body: Center(
        child: Label(text: model.title),
      ),
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
              child: Text(
                model.title,
                style: TextStyle(fontSize: 35),
              ),
            ),
          )
        ],
      ),
    );
  }
}
