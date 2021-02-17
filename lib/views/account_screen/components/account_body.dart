import 'package:flutter/material.dart';
import 'package:ipetmobile/views/setting_screen/setting_screen.dart';

import '../../../constants/constants.dart';
import '../../../widgets/default_image.dart';
import '../../../widgets/label.dart';

class AccountBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            color: AppConst.kPrimaryWhiteBgColor,
            width: 50,
            height: 150,
            child: Row(
              children: <Widget>[
                DefaultImage(
                  image: 'assets/images/ipet_logoo.png',
                  width: 100,
                  height: 100,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Label(
                          text: 'Welcome in  ',
                          textColor: AppConst.kBlackColor,
                          size: 20,
                        ),
                        Label(
                          text: 'I pet  ',
                          textColor: AppConst.kPrimaryColor,
                          size: 20,
                          fontFamily: 'Muli',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: <Widget>[
                        GestureDetector(
                            onTap: () {},
                            child: Label(
                              text: 'Log in ',
                              textColor: AppConst.kBlackColor,
                              size: 18,
                            )),
                        SizedBox(
                          width: 8,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Label(
                            text: 'Sign up  ',
                            textColor: AppConst.kBlackColor,
                            size: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: AppConst.kPrimaryWhiteBgColor,
            width: 50,
            height: 50,
            child: Card(
              child: Column(
                children: <Widget>[
                  ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SettingScreen()));
                        // Navigator.pushNamed(context, SettingScreen.id);
                      },
                      leading: Container(
                        child: Icon(Icons.settings, size: 23),
                      ),
                      title: Label(
                        text: 'Settings',
                        textColor: AppConst.kBlackColor,
                        fontFamily: 'Muli',
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                      )),
                  Divider(
                    color: AppConst.kSecondaryColor,
                    thickness: 0.3,
                  ),
                  ListTile(
                      onTap: () {},
                      leading: Container(
                        child: Icon(
                          Icons.account_balance_wallet,
                          size: 23,
                        ),
                      ),
                      title: Label(
                        text: 'Wallet',
                        textColor: AppConst.kBlackColor,
                        fontFamily: 'Muli',
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                      )),
                  Divider(
                    color: AppConst.kSecondaryColor,
                    thickness: 0.3,
                  ),
                  ListTile(
                      onTap: () {},
                      leading: Container(
                        child: Icon(
                          Icons.account_circle,
                          size: 23,
                        ),
                      ),
                      title: Label(
                        text: 'Edit Profile',
                        textColor: AppConst.kBlackColor,
                        fontFamily: 'Muli',
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                      )),
                  Divider(
                    color: AppConst.kSecondaryColor,
                    thickness: 0.3,
                  ),
                  ListTile(
                      onTap: () {},
                      leading: Container(
                        child: Icon(
                          Icons.lock_open,
                          size: 23,
                        ),
                      ),
                      title: Label(
                        text: 'Change Password',
                        textColor: AppConst.kBlackColor,
                        fontFamily: 'Muli',
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                      )),
                  Divider(
                    color: AppConst.kSecondaryColor,
                    thickness: 0.3,
                  ),
                  ListTile(
                      onTap: () {},
                      leading: Container(
                        child: Icon(
                          Icons.local_shipping,
                          size: 23,
                        ),
                      ),
                      title: Label(
                        text: 'Shipping Adress',
                        textColor: AppConst.kBlackColor,
                        fontFamily: 'Muli',
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                      )),
                  Divider(
                    color: AppConst.kSecondaryColor,
                    thickness: 0.3,
                  ),
                  ListTile(
                      onTap: () {},
                      leading: Container(
                        child: Icon(
                          Icons.contact_mail,
                          size: 23,
                        ),
                      ),
                      title: Label(
                        text: 'Join Us',
                        textColor: AppConst.kBlackColor,
                        fontFamily: 'Muli',
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
