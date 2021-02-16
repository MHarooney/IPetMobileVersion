// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:ipetmobile/constants/constants.dart';
// import 'package:ipetmobile/screens/account_screen/account_screen.dart';
// import 'package:ipetmobile/screens/dash_board_screen/dash_board_screen.dart';
//
// class IPetBottomCommonAppBar extends StatelessWidget {
//   const IPetBottomCommonAppBar({
//     Key key,
//     TabController tabController,
//   })  : _tabController = tabController,
//         super(key: key);
//
//   final TabController _tabController;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           TabBarView(
//             children: [
//               DashBoardScreen(),
//               Container(color: Colors.green),
//               Container(color: Colors.blue),
//               Container(color: Colors.blue),
//               AccountScreen(),
//             ],
//             controller: _tabController,
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Padding(
//               padding: Platform.isAndroid
//                   ? EdgeInsets.all(16)
//                   : EdgeInsets.fromLTRB(16, 16, 16, 30),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(15),
//                 child: Container(
//                   color: Colors.black45,
//                   height: 52,
//                   child: TabBar(
//                     indicatorColor: AppConst.kPrimaryColor,
//                     labelColor: AppConst.kPrimaryWhiteBgColor,
//                     unselectedLabelColor: AppConst.kGreyColor,
//                     tabs: [
//                       Tab(
//                         icon: FaIcon(
//                           FontAwesomeIcons.paw,
//                         ),
//                       ),
//                       Tab(
//                         icon: FaIcon(
//                           FontAwesomeIcons.filter,
//                         ),
//                       ),
//                       Tab(
//                         icon: FaIcon(
//                           FontAwesomeIcons.heart,
//                         ),
//                       ),
//                       Tab(
//                         icon: FaIcon(
//                           FontAwesomeIcons.shoppingBasket,
//                         ),
//                       ),
//                       Tab(
//                         icon: FaIcon(
//                           FontAwesomeIcons.userAlt,
//                         ),
//                       ),
//                     ],
//                     controller: _tabController,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
