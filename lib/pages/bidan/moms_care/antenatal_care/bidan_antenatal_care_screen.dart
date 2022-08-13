import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moms_care_mobile/components/keluarga/moms_care/antenatal_care/detail_anc_modal.dart';
import 'package:moms_care_mobile/components/keluarga/moms_care/antenatal_care/antenatal_care_card.dart';
import 'package:moms_care_mobile/components/keluarga/moms_care/antenatal_care/tambah_anc_modal.dart';

import '../../../../components/bidan/moms_care/antenatal_care/bidan_antenatal_care_card.dart';
import '../../../../components/bidan/moms_care/antenatal_care/bidan_tambah_anc_modal.dart';
import '../../../../components/bidan/moms_care/antenatal_care/filter_anc_modal.dart';
import '../../../../components/bidan/moms_care/antenatal_care/ubah_antenatal_care_modal.dart';
import '../../../../components/util/custom_elevated_button_icon.dart';
import '../../../../consts/colors.dart';
import '../../../../consts/fonts.dart';

class BidanAntenatalCareScreen extends StatelessWidget {
  const BidanAntenatalCareScreen({Key? key}) : super(key: key);

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
                        builder: (_) => const BidanTambahAncModal());
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
                        builder: (_) => const FilterAncModal());
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
      BidanAntenatalCareCard(
        dateCreated: "22 Mei 2022",
        dateValidated: "23 Mei 2022",
        namaIbu: "RIA",
        usiaKehamilan: "22 Minggu Lagi",
        perkiraanLahir: "08 November 2022",
        alamat: "BORA",
        bidan: "YUNI",
        isValidated: true,
        onTap: () => showDialog(
            context: context, builder: (_) => const DetailAncModal()),
        onEdit: () =>
            showDialog(context: context, builder: (_) => const UbahAncModal()),
      ),
      BidanAntenatalCareCard(
        dateCreated: "22 Mei 2022",
        dateValidated: "23 Mei 2022",
        namaIbu: "RIA",
        usiaKehamilan: "22 Minggu Lagi",
        perkiraanLahir: "08 November 2022",
        alamat: "BORA",
        bidan: "YUNI",
        isValidated: false,
        onTap: () => showDialog(
            context: context, builder: (_) => const DetailAncModal()),
        onEdit: () =>
            showDialog(context: context, builder: (_) => const UbahAncModal()),
      ),
    ]);
  }
}
