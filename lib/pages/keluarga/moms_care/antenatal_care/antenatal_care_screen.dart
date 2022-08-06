import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moms_care_mobile/components/keluarga/moms_care/antenatal_care/detail_anc_modal.dart';
import 'package:moms_care_mobile/components/keluarga/moms_care/antenatal_care/antenatal_care_card.dart';
import 'package:moms_care_mobile/components/keluarga/moms_care/antenatal_care/tambah_anc_modal.dart';

import '../../../../components/util/custom_elevated_button_icon.dart';
import '../../../../consts/colors.dart';
import '../../../../consts/fonts.dart';

class AntenatalCareScreen extends StatelessWidget {
  const AntenatalCareScreen({Key? key}) : super(key: key);

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
                  'Data Antenatal Care',
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
                        builder: (_) => const TambahAncModal());
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
      AntenatalCareCard(
        dateValidated: "22 Mei 2022",
        nama: "RIA",
        umur: "26 Tahun 4 Bulan 21 Hari",
        pemeriksaan: 1,
        kehamilan: 3,
        badan: "Normal",
        tekananDarah: "Normal",
        lenganAtas: "Normal",
        hemoglobinDarah: "Normal",
        obatTambahDarah: "Sudah",
        bidan: "YUNI",
        isValidated: true,
        onTap: () => showDialog(
            context: context, builder: (_) => const DetailAncModal()),
      ),
      AntenatalCareCard(
        dateValidated: "22 Mei 2022",
        nama: "RIA",
        umur: "26 Tahun 4 Bulan 21 Hari",
        pemeriksaan: 1,
        kehamilan: 3,
        badan: "Normal",
        tekananDarah: "Normal",
        lenganAtas: "Normal",
        hemoglobinDarah: "Normal",
        obatTambahDarah: "Sudah",
        bidan: "YUNI",
        isValidated: true,
        onTap: () => showDialog(
            context: context, builder: (_) => const DetailAncModal()),
      ),
    ]);
  }
}
