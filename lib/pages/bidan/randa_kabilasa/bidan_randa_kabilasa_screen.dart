import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moms_care_mobile/components/bidan/randa_kabilasa/bidan_detail_randa_kabilasa_modal.dart';
import 'package:moms_care_mobile/components/bidan/randa_kabilasa/bidan_tambah_randa_kabilasa_modal.dart';
import 'package:moms_care_mobile/components/bidan/randa_kabilasa/filter_randa_kabilasa_modal.dart';

import '../../../components/bidan/deteksi_stunting/ibu_melahirkan_stunting/bidan_detail_ibu_stunting_modal.dart';
import '../../../components/bidan/deteksi_stunting/ibu_melahirkan_stunting/bidan_ibu_stunting_card.dart';
import '../../../components/bidan/deteksi_stunting/ibu_melahirkan_stunting/bidan_tambah_ibu_stunting_modal.dart';
import '../../../components/bidan/deteksi_stunting/ibu_melahirkan_stunting/bidan_ubah_ibu_stunting_modal.dart';
import '../../../components/bidan/deteksi_stunting/ibu_melahirkan_stunting/filter_ibu_melahirkan_stunting_modal.dart';
import '../../../components/bidan/randa_kabilasa/bidan_randa_kabilasa_card.dart';
import '../../../components/util/custom_appBar.dart';
import '../../../components/util/custom_elevated_button_icon.dart';
import '../../../consts/colors.dart';
import '../../../consts/fonts.dart';

class BidanRandaKabilasaScreen extends StatelessWidget {
  const BidanRandaKabilasaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundScaffold,
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            appbar(),
            SizedBox(height: size.height * 0.03),
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: const Text(
                'Randa Kabilasa',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: fontNunito,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 7),
                          child: Icon(Icons.circle,
                              color: cardTextGreenVariant, size: 7),
                        ),
                        SizedBox(width: size.width * 0.01),
                        Flexible(
                          child: Text(
                            'Data yang ditampilkan hanyalah data yang berasal dari lokasi tugas anda sekarang dan data yang telah anda validasi baik dilokasi tugas anda yang sekarang maupun dilokasi tugas sebelumnya.',
                            style: TextStyle(
                                fontFamily: fontNunito,
                                color: cardTextGreenVariant),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 7),
                          child: Icon(Icons.circle,
                              color: cardTextGreenVariant, size: 7),
                        ),
                        SizedBox(width: size.width * 0.01),
                        Flexible(
                          child: Text(
                            'Kolom',
                            style: TextStyle(
                                fontFamily: fontNunito,
                                color: cardTextGreenVariant),
                          ),
                        ),
                        SizedBox(width: size.width * 0.01),
                        Text(
                          'Aksi:',
                          style: TextStyle(
                              fontFamily: fontNunito,
                              color: cardTextGreenVariant,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: Icon(Icons.circle_outlined,
                                color: cardTextGreenVariant, size: 7),
                          ),
                          SizedBox(width: size.width * 0.01),
                          Flexible(
                            child: Text(
                              'Dapat melihat',
                              style: TextStyle(
                                  fontFamily: fontNunito,
                                  color: cardTextGreenVariant),
                            ),
                          ),
                          SizedBox(width: size.width * 0.01),
                          Icon(
                            Icons.remove_red_eye,
                            color: cardTextGreenVariant,
                            size: 18,
                          ),
                          SizedBox(width: size.width * 0.01),
                          Text(
                            'detail',
                            style: TextStyle(
                                fontFamily: fontNunito,
                                color: cardTextGreenVariant,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: size.width * 0.01),
                          Text(
                            'data',
                            style: TextStyle(
                                fontFamily: fontNunito,
                                color: cardTextGreenVariant),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: Icon(Icons.circle_outlined,
                                color: cardTextGreenVariant, size: 7),
                          ),
                          SizedBox(width: size.width * 0.01),
                          Flexible(
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                    fontFamily: fontNunito,
                                    color: cardTextGreenVariant),
                                children: [
                                  TextSpan(text: 'Hanya dapat '),
                                  WidgetSpan(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2.0),
                                      child: Icon(
                                        Icons.delete,
                                        size: 18,
                                        color: cardTextGreenVariant,
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                      text: 'menghapus ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    text: 'dan',
                                  ),
                                  WidgetSpan(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2.0),
                                      child: Icon(
                                        Icons.edit_outlined,
                                        size: 18,
                                        color: cardTextGreenVariant,
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                      text: 'mengubah ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    text: 'data yang telah anda validasi.',
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: Icon(Icons.circle_outlined,
                                color: cardTextGreenVariant, size: 7),
                          ),
                          SizedBox(width: size.width * 0.01),
                          Flexible(
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                    fontFamily: fontNunito,
                                    color: cardTextGreenVariant),
                                children: [
                                  TextSpan(text: 'Tombol '),
                                  WidgetSpan(
                                    child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0),
                                        child: SvgPicture.asset(
                                          "assets/icons/check.svg",
                                          height: 18,
                                          color: cardTextGreenVariant,
                                        )),
                                  ),
                                  TextSpan(
                                      text: 'konfirmasi ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    text:
                                        'hanya akan muncul ketika ada data baru dilokasi tugas anda.',
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: cardGreenVariant,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            // BidanIbuStuntingScreen()
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Padding(
                        padding:
                            EdgeInsets.only(top: size.height * 0.01, left: 18),
                        child: const Text(
                          'Data Randa Kabilasa',
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
                                    const BidanTambahRandaKabilasaModal());
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
                                builder: (_) =>
                                    const FilterRandaKabilasaModal());
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
            ),
          ],
        ),
      ),
    );
  }
}

Widget generateData(BuildContext context) {
  return Column(children: [
    BidanRandaKabilasaCard(
      dateCreated: "21 Mei 2022",
      dateValidated: "22 Mei 2022",
      namaRemaja: "MAIL",
      alamat: "BORA",
      bidan: "YUNI",
      isValidated: true,
      statusAsesmen: "Sudah Melakukan Seluruh Asesmen",
      onTap: () => showDialog(
          context: context,
          builder: (_) => const BidanDetailRandaKabilasaModal()),
      onEdit: () => showDialog(
          context: context, builder: (_) => const BidanUbahIbuStuntingModal()),
    ),
    BidanRandaKabilasaCard(
        dateCreated: "21 Mei 2022",
        dateValidated: "22 Mei 2022",
        namaRemaja: "RIA 1",
        alamat: "JL. R.E. Martadinata - Tondo",
        bidan: "YUNI",
        isValidated: false,
        statusAsesmen: "Tidak Beresiko Melahirkan Stunting",
        onTap: () => showDialog(
            context: context,
            builder: (_) => const BidanDetailIbuStuntingModal()),
        onEdit: () => showDialog(
            context: context,
            builder: (_) => const BidanUbahIbuStuntingModal())),
  ]);
}
