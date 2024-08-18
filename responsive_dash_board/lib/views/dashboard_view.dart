

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widget/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/widget/custom_drawer.dart';

import '../widget/dashboard_desctop_layout.dart';
import '../widget/dashboard_mobile_layout.dart';
import '../widget/dashboard_tablet_layout.dart';

class DashBoardView extends StatefulWidget{
  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scafoaldkey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: scafoaldkey,
      appBar: MediaQuery.sizeOf(context).width<SizeConfig.tablet?
      AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFFAFAFA),
        leading: IconButton(
          onPressed: () {
            scafoaldkey.currentState!.openDrawer();
          },
          icon: const Icon(Icons.menu)),
      ):null,
      backgroundColor: const Color(0xffF7F9FA),
      drawer: MediaQuery.sizeOf(context).width<SizeConfig.tablet?CustomDrawer():null,
      body: AdaptiveLayout(
        mobileLayout: (context) =>  const DashboardMobileLayout(),
         tabletLayout: (context) => DashBoardTabletLayout(),
          desktopLayout: (context) => DashBoardDesctopLayout(),),
    );
  }
}