import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../widgets/label.dart';
import 'components/account_body.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: AppConst.kPrimaryColor,
        title: Label(text: 'Account',
          textColor: AppConst.kPrimarySemiWhiteColor,
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(
            Icons.notifications,color: AppConst.kPrimarySemiWhiteColor,),
              onPressed: (){}
          )
        ],
      ),
      body:AccountBody(),
    );
  }
}