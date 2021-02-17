import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ipetmobile/constants/constants.dart';

class IPetBottomAppBar extends StatelessWidget {
  const IPetBottomAppBar({
    Key key,
    @required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
      ),
      child: Padding(
        padding: Platform.isAndroid
            ? EdgeInsets.all(16)
            : EdgeInsets.fromLTRB(16, 16, 16, 30),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            color: Colors.black45,
            height: 52,
            child: TabBar(
              indicatorColor: AppConst.kPrimaryColor,
              labelColor: AppConst.kPrimaryWhiteBgColor,
              unselectedLabelColor: AppConst.kGreyColor,
              tabs: [
                Tab(
                  icon: FaIcon(
                    FontAwesomeIcons.paw,
                  ),
                ),
                Tab(
                  icon: FaIcon(
                    FontAwesomeIcons.filter,
                  ),
                ),
                Tab(
                  icon: FaIcon(
                    FontAwesomeIcons.heart,
                  ),
                ),
                Tab(
                  icon: FaIcon(
                    FontAwesomeIcons.shoppingBasket,
                  ),
                ),
                Tab(
                  icon: FaIcon(
                    FontAwesomeIcons.userAlt,
                  ),
                ),
              ],
              controller: _tabController,
            ),
          ),
        ),
      ),
    );
  }
}
