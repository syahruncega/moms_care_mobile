import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moms_care_mobile/components/keluarga/anggota_keluarga/anggota_keluarga_card.dart';
import 'package:moms_care_mobile/consts/fonts.dart';
import '../../components/util/custom_appBar.dart';
import '../../components/dashboard/card_dashboard.dart';
import '../../components/keluarga/keluarga_dashboard.dart';
import '../../consts/colors.dart';

class DashboardKeluargaScreen extends StatelessWidget {
  const DashboardKeluargaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundScaffold,
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            appBar(),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.04, left: 18),
                  child: const Text(
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
            const SizedBox(
              height: 10,
            ),
            const KeluargaDashboard(),
          ],
        ),
      ),
    );
  }
}
