import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ipetmobile/constants/constants.dart';
import 'package:ipetmobile/constants/ipet_dimens.dart';
import 'package:ipetmobile/views/home/home_view.dart';
import 'package:ipetmobile/widgets/common/custom_circle_raw_material_btn.dart';
import 'package:ipetmobile/widgets/country_picker/country_picker.dart';
import 'package:ipetmobile/widgets/default_image.dart';
import 'package:ipetmobile/widgets/ipet_custom_icon.dart';
import 'package:ipetmobile/widgets/ipet_custom_painter/ipet_sharp_divider/sharp_hor_divider.dart';
import 'package:ipetmobile/widgets/ipet_custom_sizedbox.dart';
import 'package:ipetmobile/widgets/label.dart';
import 'package:ipetmobile/widgets/my_custom_card.dart';

class LoginBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => IPetCustomSizedBox(
        iPetChild: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  DefaultImage(
                    image: AppConst.kIPetPawIc,
                    // width: constraints.maxWidth * 0.2,
                    width: constraints.maxWidth * 0.3,
                    height: constraints.maxHeight * 0.1,
                  ),
                  Container(
                    height: constraints.maxHeight * 0.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: IPetDimens.space20),
                          child: Label(
                            text: AppConst.kLoginTo,
                            textColor: AppConst.kTextRareGoldColor,
                            fontWeight: FontWeight.bold,
                            // size: IPetDimens.space20,
                            size: constraints.maxWidth * 0.06,
                          ),
                        ),
                        DefaultImage(
                          image: AppConst.kIPetTxtImg,
                          width: constraints.maxWidth * 0.3,
                          // height:
                          //     getProportionateScreenHeight(IPetDimens.space50),
                          height: constraints.maxHeight * 0.05,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: IPetDimens.space20),
                        child: Label(
                          text: AppConst.kPhoneNoTxt,
                          textColor: AppConst.kTextDarkColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          IPetCustomSizedBox(height: IPetDimens.space20),
                          MyCustomCard(
                            iPetBoxShadow: [
                              AppConst.iPetLoginBoxShadow(
                                btnColor: Colors.grey.withOpacity(0.2),
                              ),
                            ],
                            childCard: CountryPicker(),
                            colour: AppConst.kPrimarySemiWhiteColor,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  right: IPetDimens.space20),
                              child: MyCustomCard(
                                ipetHeight: constraints.maxHeight * 0.05,
                                iPetBoxShadow: [
                                  AppConst.iPetLoginBoxShadow(
                                    btnColor: Colors.grey.withOpacity(0.2),
                                  ),
                                ],
                                colour: AppConst.kPrimarySemiWhiteColor,
                                childCard: Padding(
                                  padding: const EdgeInsets.only(
                                    left: IPetDimens.space10,
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      fillColor:
                                          AppConst.kPrimarySemiWhiteColor,
                                      filled: true,
                                      border: InputBorder.none,
                                      hintText: AppConst.kPleaseEnterPhoneNoTxt,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      IPetCustomSizedBox(height: IPetDimens.space12),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: IPetDimens.space20),
                        child: Label(
                          text: AppConst.kPhoneCallOrTxtMsg,
                          textColor: AppConst.kTextDarkColor,
                          size: IPetDimens.space12,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                        child: Container(
                          height: constraints.maxHeight * 0.06,
                          child: IPetCustomCircleBtn(
                            iPetChildCard: Label(
                              textColor: AppConst.kPrimaryWhiteBgColor,
                              text: 'Login With Phone Number',
                            ),
                            constraintWidth: 56.0,
                            constraintHeight: 56.0,
                            iPetShapeBorder: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            iPetIconColor: Colors.white,
                            iPetFillColor: AppConst.kTextLightRedColor,
                          ),
                        ),
                      ),
                      IPetCustomSizedBox(height: IPetDimens.space10),
                      Container(
                        margin: EdgeInsets.only(top: IPetDimens.space10),
                        height: constraints.maxHeight * 0.03,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: new Container(
                                margin: const EdgeInsets.only(
                                  left: IPetDimens.space10,
                                  right: IPetDimens.space20,
                                ),
                                // child: Divider(
                                //   color: AppConst.kTextDarkColor,
                                //   height: IPetDimens.space36,
                                // ),
                                child: IPetSharpDivider(),
                              ),
                            ),
                            Label(
                              text: AppConst.kOrTxt,
                              textColor: AppConst.kTextDarkColor,
                            ),
                            Expanded(
                              child: new Container(
                                margin: const EdgeInsets.only(
                                    left: IPetDimens.space20,
                                    right: IPetDimens.space10),
                                // child: Divider(
                                //   color: AppConst.kTextDarkColor,
                                //   height: IPetDimens.space36,
                                // ),
                                child: IPetSharpDivider(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: constraints.maxHeight * 0.1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IPetCustomCircleBtn(
                              constraintWidth: constraints.maxWidth * 0.13,
                              constraintHeight: constraints.maxHeight * 0.13,
                              iPetShapeBorder: CircleBorder(),
                              iPetChildCard: IPetCustomIcon(
                                ipFontIc: FontAwesomeIcons.google,
                                colour: Colors.white,
                              ),
                              iPetIconColor: Colors.white,
                              iPetFillColor: Colors.red,
                            ),
                            IPetCustomCircleBtn(
                              constraintWidth: constraints.maxWidth * 0.13,
                              constraintHeight: constraints.maxHeight * 0.13,
                              iPetShapeBorder: CircleBorder(),
                              iPetChildCard: IPetCustomIcon(
                                ipFontIc: FontAwesomeIcons.facebook,
                                colour: Colors.white,
                              ),
                              iPetIconColor: AppConst.kPrimaryWhiteBgColor,
                              iPetFillColor: AppConst.kBlueColor,
                            ),
                            if (Platform.isIOS)
                              IPetCustomCircleBtn(
                                constraintWidth: constraints.maxWidth * 0.13,
                                constraintHeight: constraints.maxHeight * 0.13,
                                iPetShapeBorder: CircleBorder(
                                  side: BorderSide(
                                    width: 2,
                                    color: Colors.black,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                iPetChildCard: IPetCustomIcon(
                                  ipFontIc: FontAwesomeIcons.apple,
                                  colour: Colors.black,
                                ),
                                iPetIconColor: Colors.black,
                                iPetFillColor: Colors.white,
                              )
                          ],
                        ),
                      ),
                      IPetCustomSizedBox(height: IPetDimens.space20),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: IPetDimens.space10),
                        child: Container(
                          height: constraints.maxHeight * 0.06,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              DefaultImage(
                                image: AppConst.kPrivacyAndPolicyTxtIc,
                                // height: getProportionateScreenHeight(
                                //     IPetDimens.space32),
                                // width: getProportionateScreenWidth(
                                //     IPetDimens.space32),
                              ),
                              Label(
                                textColor: AppConst.kBlackColor,
                                text: AppConst.kPrivacyAndPolicyTxt,
                              ),
                              Checkbox(
                                activeColor: Colors.lightBlueAccent,
                                value: true,
                                onChanged: null,
                              ),
                            ],
                          ),
                        ),
                      ),
                      IPetCustomSizedBox(height: IPetDimens.space25),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    // IPetBNavigation(),
                                    HomeView(),
                                // IPetNavHomeScreen(),
                              ),
                            );
                            //   Navigator.pushReplacementNamed(context,
                            //       IPetNavHomeScreen.id);
                          },
                          child: Container(
                            margin: Platform.isAndroid
                                ? EdgeInsets.only(bottom: 30)
                                : null,
                            child: Label(
                              textColor: AppConst.kSecondaryColor,
                              text: AppConst.kNotNowTxt,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
