import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moms_care_mobile/components/detail_deteksi_dini_modal.dart';
import 'package:moms_care_mobile/components/detail_perkiraan_melahirkan_modal.dart';
import 'package:moms_care_mobile/components/keluarga/deteksi_dini_card.dart';
import 'package:moms_care_mobile/components/keluarga/perkiraan_melahirkan_card.dart';
import 'package:moms_care_mobile/components/keluarga/tambah_deteksi_dini_modal.dart';
import 'package:moms_care_mobile/components/keluarga/tambah_perkiraan_melahirkan_modal.dart';

import '../../components/custom_elevated_button_icon.dart';
import '../../consts/colors.dart';
import '../../consts/fonts.dart';

class DeteksiDiniScreen extends StatelessWidget {
  const DeteksiDiniScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.01, left: 18),
                child: const Text(
                  'Data Deteksi Dini',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: fontNunito,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.01),
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
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (_) => const TambahDeteksiDiniModal());
                  },
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(0.0),
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return generateData(context);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget generateData(BuildContext context) {
    return Column(children: [
      DeteksiDiniCard(
        dateValidated: "22 Mei 2022",
        nama: "RIA",
        isValidated: true,
        bidan: "YUNI",
        umur: "26 Tahun 4 Bulan 21 Hari",
        hasilDeteksi: "Kehamilan : KRR (Berisiko Rendah)",
        onTap: () => showDialog(
            context: context, builder: (_) => const DetailDeteksiDiniModal()),
      ),
      DeteksiDiniCard(
        dateValidated: "22 Mei 2022",
        nama: "RIA",
        isValidated: true,
        bidan: "YUNI",
        umur: "26 Tahun 4 Bulan 21 Hari",
        hasilDeteksi: "Kehamilan : KRR (Berisiko Rendah)",
        onTap: () => showDialog(
            context: context, builder: (_) => const DetailDeteksiDiniModal()),
      ),
    ]);
  }
}
