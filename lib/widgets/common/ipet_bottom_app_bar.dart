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
    return Padding(
      padding: Platform.isAndroid
          ? EdgeInsets.fromLTRB(16, 11, 16, 11)
          : EdgeInsets.fromLTRB(16, 47, 16, 0),
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
    );
  }
}
