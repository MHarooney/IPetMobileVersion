import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../widgets/label.dart';
import '../../login_screen/login_screen.dart';

class SettingBody extends StatefulWidget {
  @override
  _SettingBodyState createState() => _SettingBodyState();
}

class _SettingBodyState extends State<SettingBody> {
  bool selectedSetting = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(7),
            color: AppConst.kPrimaryWhiteBgColor,
            width: 50,
            height: 270,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Label(
                      text: 'Notifacation Settings',
                      size: 18,
                      fontFamily: 'Muli',
                    ),
                    Switch(
                        activeColor: AppConst.kPrimaryColor,
                        value: selectedSetting,
                        onChanged: (value) {
                          setState(() {
                            selectedSetting = value;
                          });
                        })
                  ],
                ),
                Divider(
                  color: AppConst.kSecondaryColor,
                  thickness: 0.3,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Label(
                        text: 'Language',
                        size: 18,
                        fontFamily: 'Muli',
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      )
                    ],
                  ),
                ),
                Divider(
                  color: AppConst.kSecondaryColor,
                  thickness: 0.3,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Label(
                        text: ' Share App',
                        size: 18,
                        fontFamily: 'Muli',
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      )
                    ],
                  ),
                ),
                Divider(
                  color: AppConst.kSecondaryColor,
                  thickness: 0.3,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Label(
                        text: 'Rate App',
                        size: 18,
                        fontFamily: 'Muli',
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      )
                    ],
                  ),
                ),
                Divider(
                  color: AppConst.kSecondaryColor,
                  thickness: 0.3,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Label(
                        text: 'About Us',
                        size: 18,
                        fontFamily: 'Muli',
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(7),
            color: AppConst.kPrimaryWhiteBgColor,
            width: 50,
            height: 60,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => IPetLoginScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.exit_to_app,
                    color: AppConst.kPrimaryColor,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Label(
                    text: 'Sign Out',
                    size: 18,
                    fontFamily: 'Muli',
                    textColor: AppConst.kPrimaryColor,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
