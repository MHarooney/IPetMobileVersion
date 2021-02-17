import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ipetmobile/constants/constants.dart';
import 'package:ipetmobile/views/dash_board_screen/components/custom_grid_view_card.dart';
import 'package:ipetmobile/widgets/app_drawer/app_drawer.dart';
import 'package:ipetmobile/widgets/common/ipet_custom_icon.dart';
import 'package:ipetmobile/widgets/common/ipet_custom_scaffold.dart';
import 'package:ipetmobile/widgets/common/ipet_top_appbar.dart';
import 'package:ipetmobile/widgets/common/my_custom_card.dart';
import 'package:ipetmobile/widgets/default_image.dart';
import 'package:ipetmobile/widgets/ipet_custom_sizedbox.dart';
import 'package:ipetmobile/widgets/label.dart';

class DashBoardScreen extends StatefulWidget {
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var orientation = MediaQuery.of(context).orientation;
    return IPetCustomScaffold(
      ipKey: _scaffoldKey,
      iPetTopAppBar: IPetCustomTopBarWidget(
        // if (orientation == Orientation.portrait)
        iPetFirstPart: orientation == Orientation.portrait
            ? MyCustomCard(
                colour: Colors.transparent,
                childCard: IPetCustomIcon(ipFontIc: FontAwesomeIcons.list),
                myOnTap: () {
                  _scaffoldKey.currentState.openDrawer();
                },
              )
            : null,
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
      iPetDrawer: AppDrawer(),
      body: ListView(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Label(
                  text: "Hi, Mahmoud",
                  size: 25,
                  textColor: AppConst.kPrimaryColor,
                  // style: appTitle,
                ),
                IPetCustomSizedBox(
                  height: 20,
                ),
                SizedBox(
                    width: size.width * 0.7,
                    child: Label(
                      text:
                          "Check out the new products, groups, events, places and more!",
                      // style: contentBlack,
                    )),
                SizedBox(
                  height: 50,
                ),
                // DogCard(),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Label(
                      text: "Recommended".toUpperCase(),
                      size: 17,
                      fontWeight: FontWeight.bold,
                    ),
                    Label(
                      text: "Show more",
                      textColor: AppConst.kPrimaryColor,
                      size: 12,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      CustomGridViewCard(
                        imgScr: "assets/images/lolo_dog.png",
                        title: "Meet our lovely dogs walking with us",
                        location: "Cairo, Egypt",
                        members: "8 memmbers",
                        orgBy: "Laura",
                      ),
                      CustomGridViewCard(
                        imgScr: "assets/images/pet_places.png",
                        title: "Meet our lovely dogs walking with us",
                        location: "Valencia, Spain",
                        members: "8 memmbers",
                        orgBy: "Laura",
                      ),
                      // WalkGroupCard()
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Label(
                      text: "Walk groups".toUpperCase(),
                      size: 17,
                      fontWeight: FontWeight.bold,
                    ),
                    Label(
                      text: "Show more",
                      textColor: AppConst.kPrimaryColor,
                      size: 12,
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      CustomGridViewCard(
                        imgScr: "assets/images/pet_places.png",
                        title: "Meet our lovely dogs walking with us",
                        location: "Cairo, Egypt",
                        members: "8 memmbers",
                        orgBy: "Laura",
                      ),
                      CustomGridViewCard(
                        imgScr: "assets/images/pet_places.png",
                        title: "Meet our lovely dogs walking with us",
                        location: "Valencia, Spain",
                        members: "8 memmbers",
                        orgBy: "Laura",
                      ),
                      // WalkGroupCard()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
