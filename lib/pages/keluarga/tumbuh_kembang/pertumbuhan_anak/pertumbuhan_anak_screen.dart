import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moms_care_mobile/components/keluarga/tumbuh_kembang/pertumbuhan_anak/pertumbuhan_anak_card.dart';
import 'package:moms_care_mobile/components/keluarga/tumbuh_kembang/pertumbuhan_anak/tambah_pertumbuhan_anak_modal.dart';

import '../../../../components/keluarga/tumbuh_kembang/pertumbuhan_anak/detail_pertumbuhan_anak_modal.dart';
import '../../../../components/util/custom_elevated_button_icon.dart';
import '../../../../consts/colors.dart';
import '../../../../consts/fonts.dart';

class PertumbuhanAnakScreen extends StatelessWidget {
  const PertumbuhanAnakScreen({Key? key}) : super(key: key);

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
                  'Data Pertumbuhan Anak',
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
                        builder: (_) => const TambahPertumbuhanAnakModal());
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
      PertumbuhanAnakCard(
        dateValidated: "30 Maret 2022",
        nama: "FARA",
        umur: "0 Tahun 5 Bulan 20 Hari",
        beratBadan: 9,
        hasilDeteksi: "Gizi Baik",
        isValidated: true,
        bidan: "IIN",
        onTap: () => showDialog(
            context: context,
            builder: (_) => const DetailPertumbuhanAnakModal()),
      ),
    ]);
  }
}
