import 'package:flutter/material.dart';
import 'package:ipetmobile/responsive/orientation_layout.dart';
import 'package:ipetmobile/responsive/screen_type_layout.dart';
import 'package:ipetmobile/viewmodels/home_viewmodel.dart';
import 'package:ipetmobile/views/home/home_view_mobile.dart';
import 'package:ipetmobile/views/home/home_view_tablet.dart';
import 'package:ipetmobile/widgets/base_widget.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Rebuild');
    return BaseWidget<HomeViewModel>(
      viewModel: HomeViewModel(),
      onModelReady: (model) => model.initialise(),
      child: ScreenTypeLayout(
        mobile: OrientationLayout(
          portrait: (context) => HomeMobilePortrait(),
          landscape: (context) => HomeMobileLandscape(),
        ),
        tablet: HomeViewTablet(),
      ),
    );
  }
}

class SecondView extends StatelessWidget {
  const SecondView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}
