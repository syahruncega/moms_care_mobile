import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moms_care_mobile/components/keluarga/deteksi_stunting/stunting_anak/tambah_stunting_anak_modal.dart';

import '../../../../components/util/custom_elevated_button_icon.dart';
import '../../../../components/keluarga/deteksi_stunting/stunting_anak/detail_stunting_anak_modal.dart';
import '../../../../components/keluarga/deteksi_stunting/stunting_anak/stunting_anak_card.dart';
import '../../../../consts/colors.dart';
import '../../../../consts/fonts.dart';

class StuntingAnakScreen extends StatelessWidget {
  const StuntingAnakScreen({Key? key}) : super(key: key);

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
                  'Data Stunting Anak',
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
                        builder: (_) => const TambahStuntingAnakModal());
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
      StuntingAnakCard(
        dateValidated: "22 Mei 2022",
        nama: "VIDIA",
        umur: "1 Tahun, 8 Bulan 21 Hari",
        tinggiBadan: "20 Cm",
        bidan: "YUNI",
        isValidated: true,
        hasilDeteksi: "Sangat Pendek (Risiko Stunting Tinggi)",
        onTap: () => showDialog(
            context: context, builder: (_) => const DetailStuntingAnakModal()),
      ),
      StuntingAnakCard(
        dateValidated: "22 Mei 2022",
        nama: "Kevin",
        umur: "0 Tahun, 7 Bulan 12 Hari",
        tinggiBadan: "180 Cm",
        isValidated: false,
        bidan: "YUNI",
        hasilDeteksi: "Tinggi",
        onTap: () => showDialog(
            context: context, builder: (_) => const DetailStuntingAnakModal()),
      ),
    ]);
  }
}
