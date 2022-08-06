import 'package:flutter/material.dart';
import 'package:moms_care_mobile/pages/keluarga/anggota_keluarga/anggota_keluarga_screen.dart';
import 'package:moms_care_mobile/pages/keluarga/dashboard/dashboard_keluarga_screen.dart';
import 'package:moms_care_mobile/pages/keluarga/deteksi_stunting/deteksi_stunting_screen.dart';
import 'package:moms_care_mobile/pages/keluarga/moms_care/moms_care_screen.dart';

import '../components/util/custom_drawer.dart';
import '../components/util/drawer_controller.dart';
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
    screenView = const DashboardKeluargaScreen(); //const Dashboard();
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
            screenView = const DashboardKeluargaScreen(); //const Dashboard();
          });
          break;
        case DrawerIndex.anggotaKeluarga:
          setState(() {
            screenView = const AnggotaKeluargaScreen(); //MySecondScreen();
          });
          break;
        case DrawerIndex.deteksiStunting:
          setState(() {
            screenView = const DeteksiStuntingScreen(); //MySecondScreen();
          });
          break;
        case DrawerIndex.momsCare:
          setState(() {
            screenView = const MomsCareScreen(); //MySecondScreen();
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
