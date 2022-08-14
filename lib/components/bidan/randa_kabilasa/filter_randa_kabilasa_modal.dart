import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moms_care_mobile/components/util/custom_autocompleted_textfield.dart';
import 'package:moms_care_mobile/components/util/custom_text_field.dart';

import '../../../../../consts/colors.dart';
import '../../../../../consts/fonts.dart';
import '../../util/custom_elevated_button_icon.dart';

class FilterRandaKabilasaModal extends StatelessWidget {
  const FilterRandaKabilasaModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: Container(
        margin: const EdgeInsets.all(10),
        width: size.width * 0.9,
        height: size.height * 0.6,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Flexible(
                    child: Text(
                      'Filter Data Randa Kabilasa',
                      style: TextStyle(
                          fontFamily: fontNunito,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: grey),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              DottedBorder(
                borderType: BorderType.RRect,
                radius: const Radius.circular(20),
                dashPattern: const [2, 2],
                color: cardDarkGreen,
                strokeWidth: 2,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(children: <Widget>[
                    CustomAutocompletedTextField(
                      title: 'Status Validasi Asesmen Mencegah Malnutrisi',
                      hintText: 'Semua',
                      controller: TextEditingController(),
                      items: const [
                        {'label': 'Semua', 'value': 'semua'},
                        {'label': 'Tervalidasi', 'value': 'tervalidasi'},
                        {
                          'label': 'Belum Tervalidasi',
                          'value': 'belum_tervalidasi'
                        },
                      ],
                      onSuggestionSelected: (value) => value,
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomAutocompletedTextField(
                      title: 'Status Validasi Asesmen Mencegah Pernikahan Dini',
                      hintText: 'Semua',
                      controller: TextEditingController(),
                      items: const [
                        {'label': 'Semua', 'value': 'semua'},
                        {'label': 'Tervalidasi', 'value': 'tervalidasi'},
                        {
                          'label': 'Belum Tervalidasi',
                          'value': 'belum_tervalidasi'
                        },
                      ],
                      onSuggestionSelected: (value) => value,
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomAutocompletedTextField(
                      title: 'Status Validasi Asesmen Meningkatkan Life Skill',
                      hintText: 'Semua',
                      controller: TextEditingController(),
                      items: const [
                        {'label': 'Semua', 'value': 'semua'},
                        {'label': 'Tervalidasi', 'value': 'tervalidasi'},
                        {
                          'label': 'Belum Tervalidasi',
                          'value': 'belum_tervalidasi'
                        },
                      ],
                      onSuggestionSelected: (value) => value,
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomAutocompletedTextField(
                      title: 'Status Asesmen',
                      hintText: 'Semua',
                      controller: TextEditingController(),
                      items: const [
                        {'label': 'Semua', 'value': 'semua'},
                        {
                          'label': 'Belum Asesmen Mencegah Pernikahan Dini',
                          'value': 'belum_asesmen_mencegah_pernikahan_dini'
                        },
                        {
                          'label': 'Belum Asesmen Meningkatkan Life Skill',
                          'value': 'belum_asesmen_meningkatkan_life_skill'
                        },
                        {
                          'label':
                              'Belum Asesmen Mencegah Pernikahan Dini dan Meningkatkan Life Skill',
                          'value':
                              'belum_asesmen_mencegah_pernikahan_dini_dan_meningkatkan_life_skill'
                        },
                        {
                          'label': 'Sudah Melakukan Seluruh Asesmen',
                          'value': 'sudah_melakukan_seluruh_asesmen'
                        },
                      ],
                      onSuggestionSelected: (value) => value,
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomAutocompletedTextField(
                      title: 'Kategori HB',
                      hintText: 'Semua',
                      controller: TextEditingController(),
                      items: const [
                        {'label': 'Semua', 'value': 'semua'},
                        {'label': 'Normal', 'value': 'normal'},
                        {
                          'label': 'Terindikasi Anemia',
                          'value': 'terindikasi_anemia'
                        },
                        {'label': 'Anemia', 'value': 'anemia'},
                      ],
                      onSuggestionSelected: (value) => value,
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomAutocompletedTextField(
                      title: 'Kategori Lingkar Lengan Atas',
                      hintText: 'Semua',
                      controller: TextEditingController(),
                      items: const [
                        {'label': 'Semua', 'value': 'semua'},
                        {'label': 'Kurang Gizi', 'value': 'kurang_gizi'},
                        {'label': 'Normal', 'value': 'normal'},
                      ],
                      onSuggestionSelected: (value) => value,
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomAutocompletedTextField(
                      title: 'Kategori Indeks Massa Tubuh',
                      hintText: 'Semua',
                      controller: TextEditingController(),
                      items: const [
                        {'label': 'Semua', 'value': 'semua'},
                        {'label': 'Sangat Kurus', 'value': 'sangat_kurus'},
                        {'label': 'Kurus', 'value': 'kurus'},
                        {'label': 'Normal', 'value': 'normal'},
                        {'label': 'Gemuk', 'value': 'gemuk'},
                        {'label': 'Sangat Gemuk', 'value': 'sangat_gemuk'},
                      ],
                      onSuggestionSelected: (value) => value,
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomAutocompletedTextField(
                      title: 'Asesmen Mencegah Malnutrisi',
                      hintText: 'Semua',
                      controller: TextEditingController(),
                      items: const [
                        {'label': 'Semua', 'value': 'semua'},
                        {
                          'label': 'Berpartisipasi Mencegah Stunting',
                          'value': 'berpartisipasi_mencegah_stunting'
                        },
                        {
                          'label': 'Tidak Berpartisipasi Mencegah Stunting',
                          'value': 'berpartisipasi_mencegah_stunting'
                        },
                      ],
                      onSuggestionSelected: (value) => value,
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomAutocompletedTextField(
                      title: 'Asesmen Meningkatkan Lifeskill',
                      hintText: 'Semua',
                      controller: TextEditingController(),
                      items: const [
                        {'label': 'Semua', 'value': 'semua'},
                        {
                          'label': 'Berpartisipasi Mencegah Stunting',
                          'value': 'berpartisipasi_mencegah_stunting'
                        },
                        {
                          'label': 'Tidak Berpartisipasi Mencegah Stunting',
                          'value': 'berpartisipasi_mencegah_stunting'
                        },
                      ],
                      onSuggestionSelected: (value) => value,
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomAutocompletedTextField(
                      title: 'Asesmen Mencegah Pernikahan Dini',
                      hintText: 'Semua',
                      controller: TextEditingController(),
                      items: const [
                        {'label': 'Semua', 'value': 'semua'},
                        {
                          'label': 'Berpartisipasi Mencegah Stunting',
                          'value': 'berpartisipasi_mencegah_stunting'
                        },
                        {
                          'label': 'Tidak Berpartisipasi Mencegah Stunting',
                          'value': 'berpartisipasi_mencegah_stunting'
                        },
                      ],
                      onSuggestionSelected: (value) => value,
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  CustomElevatedButtonIcon(
                    label: "TUTUP",
                    icon: SvgPicture.asset(
                      "assets/icons/close.svg",
                      height: 25,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.red,
                    onPressed: () => Navigator.pop(context),
                  ),
                  SizedBox(width: size.width * 0.03),
                  CustomElevatedButtonIcon(
                    label: "PROSES",
                    icon: SvgPicture.asset(
                      "assets/icons/process.svg",
                      height: 25,
                      color: Colors.white,
                    ),
                    backgroundColor: colorSecondary,
                    onPressed: () => 1,
                  ),
                ]),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
