import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:moms_care_mobile/components/bidan/deteksi_stunting/ibu_melahirkan_stunting/filter_ibu_melahirkan_stunting_modal.dart';
import 'package:moms_care_mobile/components/bidan/deteksi_stunting/stunting_anak/filter_stunting_anak_modal.dart';
import 'package:moms_care_mobile/components/keluarga/deteksi_stunting/stunting_anak/tambah_stunting_anak_modal.dart';
import 'package:moms_care_mobile/components/util/custom_button_icon.dart';

import '../../../../components/bidan/deteksi_stunting/ibu_melahirkan_stunting/bidan_detail_ibu_stunting_modal.dart';
import '../../../../components/bidan/deteksi_stunting/ibu_melahirkan_stunting/bidan_ibu_stunting_card.dart';
import '../../../../components/bidan/deteksi_stunting/ibu_melahirkan_stunting/bidan_tambah_ibu_stunting_modal.dart';
import '../../../../components/bidan/deteksi_stunting/ibu_melahirkan_stunting/bidan_ubah_ibu_stunting_modal.dart';
import '../../../../components/bidan/deteksi_stunting/stunting_anak/bidan_detail_stunting_anak_modal.dart';
import '../../../../components/bidan/deteksi_stunting/stunting_anak/bidan_stunting_anak_card.dart';
import '../../../../components/util/custom_dialog.dart';
import '../../../../components/util/custom_elevated_button_icon.dart';
import '../../../../components/keluarga/deteksi_stunting/stunting_anak/detail_stunting_anak_modal.dart';
import '../../../../components/keluarga/deteksi_stunting/stunting_anak/stunting_anak_card.dart';
import '../../../../consts/colors.dart';
import '../../../../consts/fonts.dart';

class BidanIbuStuntingScreen extends StatelessWidget {
  const BidanIbuStuntingScreen({Key? key}) : super(key: key);

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
                        builder: (_) => const BidanTambahIbuStuntingModal());
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 17),
                child: CustomElevatedButtonIcon(
                  label: "Filter",
                  icon: SvgPicture.asset(
                    "assets/icons/filter.svg",
                    height: 25,
                    color: Colors.white,
                  ),
                  backgroundColor: cardDarkBlue,
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (_) => const FilterIbuStuntingModal());
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 17),
                child: CustomElevatedButtonIcon(
                  label: "Ekspor",
                  icon: SvgPicture.asset(
                    "assets/icons/excel-file.svg",
                    height: 25,
                    color: Colors.white,
                  ),
                  backgroundColor: cardDarkGreenVariant,
                  onPressed: () => 1,
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
      BidanIbuStuntingCard(
        dateCreated: "21 Mei 2022",
        dateValidated: "22 Mei 2022",
        namaIbu: "RIA",
        alamat: "JL. R.E. Martadinata - Tondo",
        bidan: "YUNI",
        isValidated: true,
        kategori: "Tidak Beresiko Melahirkan Stunting",
        onTap: () => showDialog(
            context: context,
            builder: (_) => const BidanDetailIbuStuntingModal()),
        onEdit: () => showDialog(
            context: context,
            builder: (_) => const BidanUbahIbuStuntingModal()),
      ),
      BidanIbuStuntingCard(
          dateCreated: "21 Mei 2022",
          dateValidated: "22 Mei 2022",
          namaIbu: "RIA 1",
          alamat: "JL. R.E. Martadinata - Tondo",
          bidan: "YUNI",
          isValidated: false,
          kategori: "Tidak Beresiko Melahirkan Stunting",
          onTap: () => showDialog(
              context: context,
              builder: (_) => const BidanDetailIbuStuntingModal()),
          onEdit: () => showDialog(
              context: context,
              builder: (_) => const BidanUbahIbuStuntingModal())),
    ]);
  }
}