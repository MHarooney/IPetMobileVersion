import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ipetmobile/constants/constants.dart';
import 'package:ipetmobile/constants/ipet_dimens.dart';
import 'package:ipetmobile/widgets/default_image.dart';
import 'package:ipetmobile/widgets/ipet_custom_icon.dart';
import 'package:ipetmobile/widgets/ipet_custom_sizedbox.dart';
import 'package:ipetmobile/widgets/label.dart';
import 'package:ipetmobile/widgets/my_custom_card.dart';

class CustomGridViewCard extends StatelessWidget {
  final String imgScr;
  final String title;
  final String location;
  final String members;
  final String orgBy;
  const CustomGridViewCard({
    Key key,
    this.imgScr,
    this.title,
    this.location,
    this.members,
    this.orgBy,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MyCustomCard(
      ipetDecoration: AppConst.greyBoxShadow,
      colour: null,
      ipetWidth: MediaQuery.of(context).size.width * 0.60,
      ipetHeight: MediaQuery.of(context).size.height * 0.40,
      childCard: LayoutBuilder(
        builder: (context, constraints) => Column(
          children: <Widget>[
            Container(
              height: constraints.maxHeight * 0.50,
              child: DefaultImage(
                image: imgScr,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: constraints.maxHeight * 0.15,
                    child: Label(
                      text: title,
                      size: IPetDimens.space15,
                      fontWeight: FontWeight.bold,
                      height: IPetDimens.space1Point5,
                    ),
                  ),
                  IPetCustomSizedBox(
                    height: constraints.maxHeight * 0.05,
                  ),
                  Container(
                    height: constraints.maxHeight * 0.10,
                    child: Row(
                      children: <Widget>[
                        IPetCustomIcon(
                          ipSize: IPetDimens.space17,
                          ipFontIc: FontAwesomeIcons.mapMarkedAlt,
                        ),
                        IPetCustomSizedBox(
                          width: IPetDimens.space15,
                        ),
                        Label(
                          text: location,
                          // style: contentBlack,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: constraints.maxHeight * 0.10,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.users,
                          size: 17,
                        ),
                        IPetCustomSizedBox(
                          width: IPetDimens.space10,
                        ),
                        Text(
                          members,
                          // style: contentBlack,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: constraints.maxHeight * 0.10,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.account_circle,
                          size: 20,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Label(
                          textColor: AppConst.kPrimaryColor,
                          text: orgBy,
                        ),

                        // Text("Organized by Laura ",style: contentBlack,)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
