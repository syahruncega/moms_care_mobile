import 'package:flutter/material.dart';
import 'package:moms_care_mobile/components/bidan/bidan_dashboard.dart';
import 'package:moms_care_mobile/consts/fonts.dart';
import '../../../components/util/custom_appbar.dart';
import '../../../components/keluarga/keluarga_dashboard.dart';
import '../../../consts/colors.dart';

class DashboardBidanScreen extends StatelessWidget {
  const DashboardBidanScreen({Key? key}) : super(key: key);

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
            appbar(),
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
            const BidanDashboard(),
          ],
        ),
      ),
    );
  }
}
