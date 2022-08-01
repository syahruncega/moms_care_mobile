import 'package:flutter/material.dart';
import 'package:moms_care_mobile/pages/dashboard/dashboard_screen.dart';

import '../components/custom_appBar.dart';
import '../components/custom_drawer.dart';
import '../components/drawer_controller.dart';
import '../consts/colors.dart';

class Layout extends StatefulWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  Widget? screenView;
  DrawerIndex? drawerIndex;

  @override
  void initState() {
    drawerIndex = DrawerIndex.dashboard;
    screenView = const DashboardScreen(); //const Dashboard();5
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: nearlyWhite,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: nearlyWhite,
          body: CustomDrawerController(
            screenIndex: drawerIndex,
            drawerWidth: MediaQuery.of(context).size.width * 0.75,
            onDrawerCall: (DrawerIndex drawerIndexdata) {
              changeIndex(drawerIndexdata);
              //callback from drawer for replace screen as user need with passing DrawerIndex(Enum index)
            },
            screenView: screenView,
            //we replace screen view as we need on navigate starting screens like MyHomePage, HelpScreen, FeedbackScreen, etc...
          ),
        ),
      ),
    );
  }

  void changeIndex(DrawerIndex drawerIndexdata) {
    if (drawerIndex != drawerIndexdata) {
      drawerIndex = drawerIndexdata;
      switch (drawerIndex) {
        case DrawerIndex.dashboard:
          setState(() {
            screenView = const DashboardScreen(); //const Dashboard();
          });
          break;
        case DrawerIndex.anggotaKeluarga:
          setState(() {
            screenView = Container(); //MySecondScreen();
          });
          break;
        case DrawerIndex.deteksiStunting:
          setState(() {
            screenView = Container(); //MySecondScreen();
          });
          break;
        case DrawerIndex.momsCare:
          setState(() {
            screenView = Container(); //MySecondScreen();
          });
          break;
        case DrawerIndex.tumbuhKembang:
          setState(() {
            screenView = Container(); //MySecondScreen();
          });
          break;
        default:
          break;
      }
    }
  }
}
