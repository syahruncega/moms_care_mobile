import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moms_care_mobile/components/custom_elevated_button_icon.dart';
import 'package:moms_care_mobile/components/keluarga/anggota_keluarga_card.dart';

import '../../components/custom_appBar.dart';
import '../../consts/colors.dart';
import '../../consts/fonts.dart';

class AnggotaKeluargaScreen extends StatelessWidget {
  const AnggotaKeluargaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundScaffold,
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
                    'Anggota Keluarga',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 17),
                  child: CustomElevatedButtonIcon(
                    label: "Tambah",
                    icon: SvgPicture.asset(
                      "assets/icons/add.svg",
                      height: 25,
                      color: Colors.white,
                    ),
                    backgroundColor: colorSecondary,
                    onPressed: () => 1,
                  ),
                ),
              ],
            ),
            const AnggotaKeluargaCard(
              title: "Kepala Keluarga",
              nama: "Kevin",
              isValidated: true,
              jenisKelamin: "Laki - laki",
              tglLahir: "26-06-1998",
              umur: "24 Tahun, 1 Bulan",
              alamat: "Palu",
              anggotaId: 3,
            ),
          ],
        ),
      ),
    );
  }
}
