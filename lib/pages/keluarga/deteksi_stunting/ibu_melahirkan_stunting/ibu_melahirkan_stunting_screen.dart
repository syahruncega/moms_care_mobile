import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moms_care_mobile/components/keluarga/deteksi_stunting/ibu_melahirkan_stunting/detail_ibu_melahirkan_stunting_modal.dart';
import 'package:moms_care_mobile/components/keluarga/deteksi_stunting/ibu_melahirkan_stunting/ibu_melahirkan_stunting_card.dart';
import 'package:moms_care_mobile/components/keluarga/deteksi_stunting/ibu_melahirkan_stunting/tambah_ibu_melahirkan_stunting_modal.dart';
import 'package:moms_care_mobile/components/keluarga/deteksi_stunting/stunting_anak/tambah_stunting_anak_modal.dart';

import '../../components/util/custom_elevated_button_icon.dart';
import '../../components/keluarga/deteksi_stunting/stunting_anak/detail_stunting_anak_modal.dart';
import '../../components/keluarga/deteksi_stunting/stunting_anak/stunting_anak_card.dart';
import '../../consts/colors.dart';
import '../../consts/fonts.dart';

class IbuMelahirkanStuntingScreen extends StatelessWidget {
  const IbuMelahirkanStuntingScreen({Key? key}) : super(key: key);

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
                  'Data Ibu Melahirkan Stunting',
                  style: TextStyle(
                    fontSize: 22,
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
                        builder: (_) =>
                            const TambahIbuMelahirkanStuntingModal());
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
      IbuMelahirkanStuntingCard(
        dateValidated: "22 Mei 2022",
        nama: "RIA",
        isValidated: true,
        bidan: "YUNI",
        umur: "26 Tahun 4 Bulan 21 Hari",
        hasilDeteksi: "Tidak Berisiko Melahirkan Stunting",
        onTap: () => showDialog(
            context: context,
            builder: (_) => const DetailIbuMelahirkanStuntingModal()),
      ),
      IbuMelahirkanStuntingCard(
        dateValidated: "22 Mei 2022",
        nama: "RIA 1",
        isValidated: true,
        bidan: "YUNI 1",
        umur: "26 Tahun 4 Bulan 21 Hari",
        hasilDeteksi: "Tidak Berisiko Melahirkan Stunting",
        onTap: () => showDialog(
            context: context,
            builder: (_) => const DetailIbuMelahirkanStuntingModal()),
      ),
    ]);
  }
}
