import 'package:flutter/material.dart';
import 'package:moms_care_mobile/pages/bidan/dashboard/dashboard_bidan_screen.dart';
import 'package:moms_care_mobile/pages/keluarga/anggota_keluarga/anggota_keluarga_screen.dart';
import 'package:moms_care_mobile/pages/keluarga/dashboard/dashboard_keluarga_screen.dart';
import 'package:moms_care_mobile/pages/keluarga/deteksi_stunting/deteksi_stunting_screen.dart';
import 'package:moms_care_mobile/pages/keluarga/moms_care/moms_care_screen.dart';
import 'package:moms_care_mobile/pages/keluarga/tumbuh_kembang/tumbuh_kembang_screen.dart';

import '../components/util/custom_drawer.dart';
import '../components/util/drawer_controller.dart';
import '../consts/colors.dart';
import 'bidan/deteksi_stunting/bidan_deteksi_stunting_screen.dart';
import 'bidan/moms_care/bidan_moms_care_screen.dart';

class Layout extends StatefulWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  Widget? screenView;
  DrawerIndex? drawerIndex;
  int role = 2;

  @override
  void initState() {
    drawerIndex = DrawerIndex.dashboard;
    switch (role) {
      case 1:
        screenView = const DashboardKeluargaScreen();
        break;
      case 2:
        screenView = const DashboardBidanScreen();
        break;
      default:
        screenView =
            const DashboardKeluargaScreen(); // change to dashboard penyuluh
    }

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
              changeIndex(drawerIndexdata, role: role);
              //callback from drawer for replace screen as user need with passing DrawerIndex(Enum index)
            },
            screenView: screenView,
            //we replace screen view as we need on navigate starting screens like MyHomePage, HelpScreen, FeedbackScreen, etc...
          ),
        ),
      ),
    );
  }

  /// params
  /// 1 => keluarga
  /// 2 => bidan
  /// 3 => penyuluh
  void changeIndex(DrawerIndex drawerIndexdata, {required int role}) {
    if (drawerIndex != drawerIndexdata) {
      drawerIndex = drawerIndexdata;

      switch (role) {
        //keluarga
        case 1:
          switch (drawerIndex) {
            case DrawerIndex.dashboard:
              setState(() {
                screenView = const DashboardKeluargaScreen();
              });
              break;
            case DrawerIndex.anggotaKeluarga:
              setState(() {
                screenView = const AnggotaKeluargaScreen();
              });
              break;
            case DrawerIndex.deteksiStunting:
              setState(() {
                screenView = const DeteksiStuntingScreen();
              });
              break;
            case DrawerIndex.momsCare:
              setState(() {
                screenView = const MomsCareScreen();
              });
              break;
            case DrawerIndex.tumbuhKembang:
              setState(() {
                screenView = const TumbuhKembangScreen();
              });
              break;
            default:
              break;
          }
          break;
        //bidan
        case 2:
          switch (drawerIndex) {
            case DrawerIndex.dashboard:
              setState(() {
                screenView = const DashboardBidanScreen();
              });
              break;
            case DrawerIndex.deteksiStunting:
              setState(() {
                screenView = const BidanDeteksiStuntingScreen();
              });
              break;
            case DrawerIndex.momsCare:
              setState(() {
                screenView = const BidanMomsCareScreen();
              });
              break;
            case DrawerIndex.tumbuhKembang:
              setState(() {
                screenView = const TumbuhKembangScreen();
              });
              break;
            case DrawerIndex.randaKabilasa:
              setState(() {
                screenView = const AnggotaKeluargaScreen();
              });
              break;
            default:
              break;
          }
          break;
        default:
        //penyuluh
      }
    }
  }
}
