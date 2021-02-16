import 'package:flutter/material.dart';
import 'package:ipetmobile/constants/constants.dart';
import 'package:ipetmobile/views/home/home_view.dart';
import 'package:ipetmobile/views/splash/components/body.dart';
// import 'package:ipetmobile/size_config.dart';
import 'package:ipetmobile/widgets/common/ipet_custom_scaffold.dart';

class SplashScreen extends StatefulWidget {
  // static String routeName = "/splash";
  static String id = 'SplashScreen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeView(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    // SizeConfig().init(context);
    return IPetCustomScaffold(
      iPetBGScaffoldColor: AppConst.kPrimaryWhiteBgColor,
      body: SplashBody(),
    );
  }
}
