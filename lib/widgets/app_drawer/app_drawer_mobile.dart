import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ipetmobile/widgets/app_drawer/app_drawer.dart';
import 'package:ipetmobile/widgets/label.dart';

class AppDrawerMobile extends StatelessWidget {
  const AppDrawerMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return Container(
      width: orientation == Orientation.portrait ? 230 : 100,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          blurRadius: 16,
          color: Colors.black12,
        )
      ]),
      child: Container(
        margin: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.3,
              child: CircleAvatar(
                backgroundImage:
                    ExactAssetImage('assets/images/ipet_logoo.png'),
                // Optional as per your use case
                minRadius: 30,
                maxRadius: 50,
              ),
            ),
            if (orientation == Orientation.portrait)
              Column(
                children: [
                  Text('Mahmoud Al-Haroon'),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text('mahmoud.alharoon@gmail.com'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Label(text: 'View Profile'),
                  ),
                ],
              ),
            Column(
              children: AppDrawer.getDrawerOptions(),
            ),
          ],
        ),
      ),
    );
  }
}
