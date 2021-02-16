import 'package:flutter/material.dart';
import 'package:ipetmobile/constants/constants.dart';
import 'package:ipetmobile/widgets/default_image.dart';
import 'package:ipetmobile/widgets/label.dart';

class SplashBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DefaultImage(
                image: 'assets/images/ipet_logoo.png',
                width: 200,
                height: 80,
              ),
              DefaultImage(
                image: 'assets/images/i_petslogo_text.png',
                width: 200,
                height: 80,
              ),
              Label(
                text: 'Care about your pet from home',
                textColor: AppConst.kTextRareGoldColor,
                fontWeight: FontWeight.bold,
                height: 5,
                size: 18.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
