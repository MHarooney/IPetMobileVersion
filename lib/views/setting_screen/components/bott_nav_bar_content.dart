import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../widgets/label.dart';

class BottNavBarContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.grey[100],
      width: 50,
      height: 150,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                    onTap: () {},
                    child: FaIcon(
                      FontAwesomeIcons.instagram,
                      color: Colors.pink,
                    )),
                SizedBox(
                  width: 35,
                ),
                GestureDetector(
                    onTap: () {},
                    child: FaIcon(
                      FontAwesomeIcons.twitter,
                      color: Colors.blue,
                    )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                    onTap: () {},
                    child: Label(
                      text: 'Privacy Policy',
                      fontFamily: 'Muli',
                    )),
                GestureDetector(
                    onTap: () {},
                    child: Label(
                      text: 'Return Policy',
                      fontFamily: 'Muli',
                    )),
                GestureDetector(
                    onTap: () {},
                    child: Label(
                      text: 'Terms Of Use',
                      fontFamily: 'Muli',
                    )),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: GestureDetector(
                onTap: () {},
                child: Label(
                  text: 'Join Us',
                  fontFamily: 'Muli',
                )),
          )
        ],
      ),
    );
  }
}
