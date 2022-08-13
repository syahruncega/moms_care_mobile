import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:moms_care_mobile/components/bidan/deteksi_stunting/stunting_anak/filter_stunting_anak_modal.dart';
import 'package:moms_care_mobile/components/bidan/moms_care/perkiraan_melahirkan/filter_perkiraan_melahirkan_modal.dart';
import 'package:moms_care_mobile/components/keluarga/deteksi_stunting/stunting_anak/tambah_stunting_anak_modal.dart';
import 'package:moms_care_mobile/components/util/custom_button_icon.dart';

import '../../../../components/bidan/deteksi_stunting/stunting_anak/bidan_detail_stunting_anak_modal.dart';
import '../../../../components/bidan/deteksi_stunting/stunting_anak/bidan_stunting_anak_card.dart';
import '../../../../components/bidan/deteksi_stunting/stunting_anak/bidan_tambah_stunting_anak_modal.dart';
import '../../../../components/bidan/moms_care/deteksi_dini/bidan_detail_deteksi_dini_modal.dart';
import '../../../../components/bidan/moms_care/deteksi_dini/bidan_deteksi_dini_card.dart';
import '../../../../components/bidan/moms_care/deteksi_dini/bidan_tambah_deteksi_dini_modal.dart';
import '../../../../components/bidan/moms_care/deteksi_dini/filter_deteksi_dini_modal.dart';
import '../../../../components/bidan/moms_care/deteksi_dini/ubah_deteksi_dini_modal.dart';
import '../../../../components/bidan/moms_care/perkiraan_melahirkan/bidan_detail_perkiraan_melahirkan_modal.dart';
import '../../../../components/bidan/moms_care/perkiraan_melahirkan/bidan_perkiraan_melahirkan_card.dart';
import '../../../../components/bidan/moms_care/perkiraan_melahirkan/bidan_tambah_perkiraan_melahirkan_modal.dart';
import '../../../../components/bidan/moms_care/perkiraan_melahirkan/ubah_perkiraan_melahirkan_modal.dart';
import '../../../../components/keluarga/moms_care/perkiraan_melahirkan/tambah_perkiraan_melahirkan_modal.dart';
import '../../../../components/util/custom_dialog.dart';
import '../../../../components/util/custom_elevated_button_icon.dart';
import '../../../../components/keluarga/deteksi_stunting/stunting_anak/detail_stunting_anak_modal.dart';
import '../../../../components/keluarga/deteksi_stunting/stunting_anak/stunting_anak_card.dart';
import '../../../../consts/colors.dart';
import '../../../../consts/fonts.dart';

class BidanDeteksiDiniScreen extends StatelessWidget {
  const BidanDeteksiDiniScreen({Key? key}) : super(key: key);

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
                        builder: (_) => const BidanTambahDeteksiDiniModal());
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
                        builder: (_) => const FilterDeteksiDiniModal());
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
      BidanDeteksiDiniCard(
        dateCreated: "21 Mei 2022",
        dateValidated: "22 Mei 2022",
        namaIbu: "RIA",
        alamat: "BORA",
        bidan: "YUNI",
        isValidated: true,
        kategori: "Kehamilan : KRST (Beresiko SANGAT TINGGI)",
        onTap: () => showDialog(
            context: context,
            builder: (_) => const BidanDetailDeteksiDiniModal()),
        onEdit: () => showDialog(
            context: context, builder: (_) => UbahDeteksiDiniModal()),
      ),
      BidanDeteksiDiniCard(
        dateCreated: "21 Mei 2022",
        dateValidated: "22 Mei 2022",
        namaIbu: "VIDIA",
        alamat: "Palu",
        bidan: "YUNI 1",
        isValidated: false,
        kategori: "Kehamilan : KRR (Beresiko Rendah)",
        onTap: () => showDialog(
            context: context,
            builder: (_) => const BidanDetailDeteksiDiniModal()),
        onEdit: () => showDialog(
            context: context, builder: (_) => UbahDeteksiDiniModal()),
      ),
    ]);
  }
}
