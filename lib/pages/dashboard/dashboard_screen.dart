import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moms_care_mobile/components/dashboard/anggota_keluarga_Item.dart';
import 'package:moms_care_mobile/components/dashboard/kepala_keluarga_card.dart';
import 'package:moms_care_mobile/consts/fonts.dart';
import '../../components/custom_appBar.dart';
import '../../components/dashboard/card_dashboard.dart';
import '../../components/dashboard/keluarga.dart';
import '../../consts/colors.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            appBar(),
            Row(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 35, left: 18),
                  child: Text(
                    'Dashboard',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: fontNunito,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            // const KeluargaDashboard(),
            // const MealsListView(),
            const KepalaKeluargaCard(),
          ],
        ),
      ),
    );
  }
}
