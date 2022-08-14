import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moms_care_mobile/components/dashboard/bidan/deteksi_stunting_card.dart';
import 'package:moms_care_mobile/components/dashboard/bidan/moms_care_card.dart';
import 'package:moms_care_mobile/components/dashboard/bidan/profile_card.dart';
import 'package:moms_care_mobile/components/dashboard/bidan/randa_kabilasa_card.dart';
import 'package:moms_care_mobile/components/dashboard/bidan/tumbuh_kembang_card.dart';

import '../../consts/colors.dart';
import '../dashboard/keluarga/card_dashboard.dart';

class BidanDashboard extends StatelessWidget {
  const BidanDashboard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            RandaKabilasaCard(),
            MomsCareCard(),
            DeteksiStuntingCard(),
            TumbuhKembangCard(),
            ProfileCard(),
          ],
        ),
      ),
    );
  }
}
